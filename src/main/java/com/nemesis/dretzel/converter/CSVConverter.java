package com.nemesis.dretzel.converter;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import au.com.bytecode.opencsv.CSVReader;

import com.nemesis.dretzel.DretzelConstants;
import com.nemesis.dretzel.Utils;

public class CSVConverter implements IConverter
{

	private static final char[] CSV_SEPARATORS = {',',';'};
	private static final int CSV_MAX_LEVEL = 2;

	private String result;
	private String emptyValue = "-";
	private String separator = ",";
	private String loopFieldName;
	private boolean distinct;
	private HashSet<String> keepOnlyFieldsNames = new HashSet<String>();
	private HashSet<String> ignoreFieldsNames = new HashSet<String>();
	private Map<String, String> fields = new TreeMap<String, String>();
	private Map<String, String> values = new TreeMap<String, String>();
	private Set<Integer> previousValues = new HashSet<Integer>();
	private Map<String, Integer> levels = new TreeMap<String, Integer>();
	private Map<String, String> loopFields = new TreeMap<String, String>();
	private Map<String, Integer> loops = new TreeMap<String, Integer>();
	private boolean gotFirstElement;
	private int nodeLevel;

	public Document toXML(InputStream inputStream)
	{
		Document documentObject = null;

		if(isValid())
		{
			try {
				InputStream bufferedInputStream = new BufferedInputStream(inputStream);
				Reader reader = new InputStreamReader(bufferedInputStream);	
				bufferedInputStream.mark(0);
				char detectedSeparator = detectCSVSeparator(new BufferedReader(reader), CSV_SEPARATORS);
				System.out.println("CSV - detectedSeparator : "+detectedSeparator);
				bufferedInputStream.reset();
				CSVReader csvReader = new CSVReader(reader, detectedSeparator);
				System.out.println("CSV - csvReader :  "+csvReader);
				String[] lines = null;        
				String[] headers = null;

				headers = csvReader.readNext();
				System.out.println("CSV - headers :  "+headers);
				if(headers != null)
				{					
					StringBuilder stringBuilder = new StringBuilder();
					stringBuilder.append(DretzelConstants.XML_CHARSET);
					stringBuilder.append("<"+DretzelConstants.XML_ROOTNAME+">");

					while((lines  = csvReader.readNext()) != null )
					{
						stringBuilder.append("<"+DretzelConstants.XML_DATA+">");
						for (int i = 0; i < headers.length; i++) 
						{
							stringBuilder.append("<"+headers[i].replaceAll("\\s", "")+">");
							stringBuilder.append(lines[i]);
							stringBuilder.append("</"+headers[i].replaceAll("\\s", "")+">");
						}
						stringBuilder.append("</"+DretzelConstants.XML_DATA+">");
					}
					stringBuilder.append("</"+DretzelConstants.XML_ROOTNAME+">");

					csvReader.close();
					String outputXMLString = stringBuilder.toString();
					System.out.println("CSV - outputXMLString =  "+outputXMLString);
					documentObject = Utils.createDocumentObjectFormString(outputXMLString);
				}

			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return documentObject;
	}

	public boolean isValid() {
		return true;
	}

	private char detectCSVSeparator(BufferedReader bufferReader, char[] separartors)
	{
		char separatorDetected = separartors[0];
		try {
			String line = bufferReader.readLine();
			System.err.println("line : " + line);
			for (int i = 0; i < separartors.length; i++)
			{
				String[] separated = line.split(String.valueOf(separartors[i]));
				if(separated.length > 1 )
				{					
					System.err.println("separated.length : " + separated.length);
					separatorDetected = separartors[i];
					break;
				}
			}
		} catch (IOException e)
		{
			e.printStackTrace();
		}
		return separatorDetected;		
	}

	public String toGivenData(String xmlFilePath)
	{
		String output = null;

		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			factory.setNamespaceAware(true);
			factory.setValidating(true);
			File datafile =  new File(xmlFilePath);
			//System.out.println("datafile : "+datafile);			
			Document documentObject = factory.newDocumentBuilder().parse(datafile);
			//System.out.println("file document : "+documentObject);
			int maxDepthNodeDepth = getMaxNodeDepth(documentObject.getDocumentElement().getChildNodes(), 0);
			//System.out.println("maxDepthNodeDepth : "+maxDepthNodeDepth);
			if(maxDepthNodeDepth > CSV_MAX_LEVEL)
			{
				//System.exit(1);
				throw new java.util.UnknownFormatConversionException("Format not supported, XML file too deep : "+maxDepthNodeDepth);
			}
			output = convert(documentObject);
			System.out.println("output : "+output);
		} catch (Exception e){
			e.printStackTrace();
		}

		return output;
	}

	/**
	 * 
	 * @param nodeList
	 * @param level
	 * @return
	 */
	private int getMaxNodeDepth(NodeList nodeList, int level)
	{
		level++;
		if(nodeList != null && nodeList.getLength() > 0)
		{
			for (int i = 0; i < nodeList.getLength(); i++)
			{
				Node node = nodeList.item(i);
				int depthLevel = getMaxNodeDepth(node.getChildNodes(), level);
				nodeLevel = Math.max(level, depthLevel);
			}
		}
		return nodeLevel;
	}

	/**
	 * 
	 * @param root
	 * @return
	 */
	private String convert(Document root) 
	{
		parseFields((Node) root, 0);

		if (loopFieldName == null)
		{
			determineLoopFieldName();
		}

		parseValues((Node) root, 0);
		
		StringBuilder str = new StringBuilder();
		
		for (Map.Entry<String, String> entry : fields.entrySet())
		{
			str.append(entry.getValue() +",");
		}
		
		String head = str.substring(0, str.length() - 1);
		
		str = new StringBuilder();
		
		for (Map.Entry<String, String> entry : values.entrySet())
		{
		    str.append(entry.getValue() +",");
		}
		
		String data = str.substring(0, str.length() - 1);		
		return head +"\n"+ data;
//		return result;
	}	

	/**
	 * Parse nodes to the fields, recursive function
	 * @param node
	 * @param level
	 */
	private void parseFields(Node node, int level)
	{
		addToLoopFields(level, node.getNodeName());
		
		if (node.hasAttributes())
		{
			NamedNodeMap attributes = node.getAttributes();
			for (int i = 0; i < attributes.getLength(); i++)
			{
				Node attribute = attributes.item(i);
				addToFields(level, node.getNodeName(), attribute.getNodeName());
			}
		}

		boolean hastext = false;
		boolean haselement = false;
		NodeList children = node.getChildNodes();

		for (int i = 0; i < children.getLength(); i++)
		{
			Node child = children.item(i);
			if (child instanceof Element) {
				haselement = true;
				parseFields(child, level+1);
			}
			else if (child.getNodeName().equals("#text") && 
					!child.getNodeValue().trim().isEmpty()) {
				hastext = true;
			}
		}

		if (!haselement && hastext) {
			addToFields(level, node.getNodeName());
		}
	}

	/**
	 * Helper function to determine loopFieldName
	 * @param level
	 * @param nodeName
	 */
	private void addToLoopFields(int level, String nodeName)
	{
		String key = makeKey(level, nodeName, null);
		String name = makeKey(null, nodeName, null);
		loopFields.put(key, name);
		Integer loop = loops.get(key);
		if (loop == null) loop = 0;
		loops.put(key, loop+1);
	}

	/**
	 * Add node to the values' Tree Maps
	 * @param value
	 * @param level
	 * @param nodeName
	 */
	private void addToValues(String value, int level, String nodeName)
	{
		addToValues(value, level, nodeName, null);
	}

	/**
	 * Add node to the values' Tree Maps
	 * @param value
	 * @param level
	 * @param nodeName
	 * @param argName
	 */
	private void addToValues(String value, int level, String nodeName, String argName)
	{
		String key = makeKey(level, nodeName, argName);
		if (fields.containsKey(key)) {
			values.put(key, value);
		}
	}

	/**
	 * Generate key to the Tree Maps
	 * @param level
	 * @param nodeName
	 * @param argName
	 * @return generated key
	 */
	private String makeKey(Integer level, String nodeName, String argName)
	{
		String ret = "";

		if (level != null) {
			ret += level + ":";
		}

		ret += nodeName;

		if (argName != null && !argName.isEmpty()){
			ret += " [" + argName + "]";
		}
		return ret;
	}

	/**
	 * Add node to the fields' Tree Maps
	 * @param level
	 * @param nodeName
	 */
	private void addToFields(int level, String nodeName)
	{
		addToFields(level, nodeName, "");
	}

	/**
	 * Add node to the fields' Tree Maps
	 * @param level
	 * @param nodeName
	 * @param argName
	 */
	private void addToFields(int level, String nodeName, String argName)
	{
		if (!keepOnlyFieldsNames.isEmpty())
		{
			if (!keepOnlyFieldsNames.contains(nodeName)){
				return;
			}
		} else {
			if (ignoreFieldsNames.contains(nodeName)) {
				return;
			}
		}

		String key = makeKey(level, nodeName, argName);
		String name = makeKey(null, nodeName, argName);
		fields.put(key, name);
		values.put(key, emptyValue);
		levels.put(key, level);
	}

	/**
	 * Parse nodes to the values, writes data to result, recursive function
	 * @param node
	 * @param level
	 */
	private void parseValues(Node node, int level)
	{

		if (node.getNodeName().equals(loopFieldName)) {
			if (gotFirstElement) {
				printMapToResult(values);
				resetValuesInRow(level);
			} else {
				printMapToResult(fields);
				gotFirstElement = true;
			}
		}

		if (node.hasAttributes()) {
			NamedNodeMap attributes = node.getAttributes();
			for (int i = 0; i < attributes.getLength(); i++)
			{
				Node attribute = attributes.item(i);
				this.addToValues(attribute.getNodeValue(), level, node.getNodeName(),
						attribute.getNodeName());
			}
		}

		boolean hastext = false;
		boolean haselement = false;
		NodeList children = node.getChildNodes();

		for (int i = 0; i < children.getLength(); i++)
		{
			Node child = children.item(i);
			if (child instanceof Element)
			{
				haselement = true;
				parseValues(child, level+1);
			}
			else if (child.getNodeName().equals("#text") &&
					!child.getNodeValue().trim().isEmpty()) {
				hastext = true;
			}
		}

		if (!haselement && hastext)
		{
			addToValues(node.getFirstChild().getNodeValue(), level, node.getNodeName());
		}
	}

	/**
	 * Determine loopFieldName
	 */
	private void determineLoopFieldName()
	{
		int max = 0;
		String maxField = null;
		for (String key : loopFields.keySet())
		{
			if (loops.get(key) > max) {
				max = loops.get(key);
				maxField = loopFields.get(key);
			}
			if (max >= 2) break;
		}
		loopFieldName = maxField;
	}

	/**
	 * Reset values in the row for fields, which level is greater/equals
	 * then/to argument
	 * @param level
	 */
	private void resetValuesInRow (int level)
	{
		for (String i : levels.keySet()) {
			if (levels.get(i) >= level)
			{
				values.put(i, emptyValue);
			}
		}
	}

	/**
	 * Print row data to result
	 * @param map
	 */
	private void printMapToResult(Map<String, String> map)
	{
		if (distinct)
		{
			if (previousValues.contains(map.hashCode()))
			{
				return;
			}
			previousValues.add(map.hashCode());
		}
		
		System.out.println("result => " + result);
		
		Iterator<String> iter =  map.values().iterator();
		while (iter.hasNext())
		{
			result += iter.next().replace(separator, " ");
			if (iter.hasNext())
			{
				result += separator;
			}
		}
		result += System.getProperty("line.separator");
	}

}
