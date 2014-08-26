package com.nemesis.dretzel.converter;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import au.com.bytecode.opencsv.CSVReader;

import com.nemesis.dretzel.DretzelConstants;

public class CSVConverter implements IConverter
{

	private static final char[] CSV_SEPARATORS = {',',';'};
	private static final int CSV_MAX_LEVEL = 2;

	// Default private/protected ?
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

	public Document toXML(InputStream fileInputStream)
	{
		Document documentObject = null;

		if(isValid())
		{
			Reader reader = new InputStreamReader(fileInputStream);
			//char detectedSeparator = ',' ;
			char detectedSeparator = detectCSVSeparator(new StringReader(""), CSV_SEPARATORS);
			System.out.println("CSV - detectedSeparator : "+detectedSeparator);
			CSVReader csvReader = new CSVReader(reader, detectedSeparator);
			String[] lines = null;        
			String[] headers = null;
			try {
				headers = csvReader.readNext();

				System.out.println("CSV - headers :  "+headers);
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

				String outputXMLString = stringBuilder.toString();
				csvReader.close();
				System.out.println("CSV - outputXMLString =  "+outputXMLString);
				StringReader stringReader = new StringReader(outputXMLString);
				InputSource inputSource = new InputSource(stringReader);
				documentObject = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputSource);

			} catch (IOException e) {
				e.printStackTrace();
			}
			catch (ParserConfigurationException e) {
				e.printStackTrace();
			}
			catch (SAXException e) {
				e.printStackTrace();
			}
		}
		return documentObject;
	}

	public boolean isValid() {
		return true;
	}

	private char detectCSVSeparator(Reader reader, char[] separartors)
	{
		char separatorDetected = separartors[0];
		BufferedReader bufferReader = new BufferedReader(reader);
		try {
			String line = bufferReader.readLine();
			System.err.println("line : " + line);
			for (int i = 0; i < separartors.length; i++)
			{
				String[] separated = line.split(String.valueOf(separartors[i]));
				if(separated.length > 1 )
				{
					System.err.println("separartor : " + String.valueOf(separartors[i]));
					System.err.println("separated.length : " + separated.length);
					separatorDetected = separartors[i];
					break;
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return separatorDetected;		
	}

	@Override
	public String toGivenData(String xmlFilePath)
	{
		String output = null;

		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			factory.setNamespaceAware(true);
			factory.setValidating(true);
			File datafile =  new File(xmlFilePath);
			System.out.println("datafile : "+datafile);			
			Document documentObject = factory.newDocumentBuilder().parse(datafile);
			System.out.println("file document : "+documentObject);
			int maxDepthNodeDepth = getMaxNodeDepth(documentObject.getDocumentElement().getChildNodes(), 0);
			System.out.println("maxDepthNodeDepth : "+maxDepthNodeDepth);
//			if(maxDepthNodeDepth > CSV_MAX_LEVEL)
//			{
//				throw new java.util.UnknownFormatConversionException("Format not supported, XML file too deep : "+maxDepthNodeDepth);
//			}
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
		this.parseFields((Node) root, 0);

		if (this.loopFieldName == null) {
			this.determineLoopFieldName();
		}

		this.parseValues((Node) root, 0);
		return this.result;
	}	

	/**
	 * Parse nodes to the fields, recursive function
	 * @param node
	 * @param level
	 */
	private void parseFields(Node node, int level)
	{
		addToLoopFields(level,node.getNodeName());
		if (node.hasAttributes()) {
			NamedNodeMap attributes = node.getAttributes();
			for (int i = 0; i < attributes.getLength(); i++)
			{
				Node attribute = attributes.item(i);
				this.addToFields(level, node.getNodeName(), attribute.getNodeName());
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
				this.parseFields(child, level+1);
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
		String key = this.makeKey(level, nodeName, null);
		String name = this.makeKey(null, nodeName, null);
		this.loopFields.put(key, name);
		Integer loop = this.loops.get(key);
		if (loop == null) loop = 0;
		this.loops.put(key, loop+1);
	}

	/**
	 * Add node to the values' Tree Maps
	 * @param value
	 * @param level
	 * @param nodeName
	 */
	private void addToValues(String value, int level, String nodeName)
	{
		this.addToValues(value, level, nodeName, null);
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
		String key = this.makeKey(level, nodeName, argName);
		if (this.fields.containsKey(key)) {
			this.values.put(key, value);
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
		this.addToFields(level, nodeName, "");
	}

	/**
	 * Add node to the fields' Tree Maps
	 * @param level
	 * @param nodeName
	 * @param argName
	 */
	private void addToFields(int level, String nodeName, String argName)
	{
		if (!this.keepOnlyFieldsNames.isEmpty())
		{
			if (!this.keepOnlyFieldsNames.contains(nodeName)){
				return;
			}
		} else {
			if (this.ignoreFieldsNames.contains(nodeName)) {
				return;
			}
		}

		String key = this.makeKey(level, nodeName, argName);
		String name = this.makeKey(null, nodeName, argName);
		this.fields.put(key, name);
		this.values.put(key, this.emptyValue);
		this.levels.put(key, level);
	}

	/**
	 * Parse nodes to the values, writes data to result, recursive function
	 * @param node
	 * @param level
	 */
	private void parseValues(Node node, int level)
	{

		if (node.getNodeName().equals(this.loopFieldName)) {
			if (this.gotFirstElement) {
				this.printMapToResult(values);
				this.resetValuesInRow(level);
			} else {
				this.printMapToResult(fields);
				this.gotFirstElement = true;
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
				this.parseValues(child, level+1);
			}
			else if (child.getNodeName().equals("#text") &&
					!child.getNodeValue().trim().isEmpty()) {
				hastext = true;
			}
		}

		if (!haselement && hastext)
		{
			this.addToValues(node.getFirstChild().getNodeValue(), level, node.getNodeName());
		}
	}

	/**
	 * Determine loopFieldName
	 */
	private void determineLoopFieldName()
	{
		int max = 0;
		String maxField = null;
		for (String key : this.loopFields.keySet()) {
			if (this.loops.get(key) > max) {
				max = this.loops.get(key);
				maxField = this.loopFields.get(key);
			}
			if (max >= 2) break;
		}
		this.loopFieldName = maxField;
	}

	/**
	 * Reset values in the row for fields, which level is greater/equals
	 * then/to argument
	 * @param level
	 */
	private void resetValuesInRow (int level)
	{
		for (String i : this.levels.keySet()) {
			if (this.levels.get(i) >= level) {
				this.values.put(i, this.emptyValue);
			}
		}
	}

	/**
	 * Print row data to result
	 * @param map
	 */
	private void printMapToResult (Map<String, String> map)
	{
		if (this.distinct) {
			if (previousValues.contains(map.hashCode())) {
				return;
			}
			previousValues.add(map.hashCode());
		}
		Iterator<String> iter =  map.values().iterator();
		while (iter.hasNext()) {
			result += iter.next().replace(this.separator, " ");
			if (iter.hasNext()) {
				result += this.separator;
			}
		}
		result += System.getProperty("line.separator");
	}

}
