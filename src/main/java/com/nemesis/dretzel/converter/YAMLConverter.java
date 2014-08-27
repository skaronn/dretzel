package com.nemesis.dretzel.converter;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.w3c.dom.Document;
import org.xml.sax.SAXException;

import com.esotericsoftware.yamlbeans.YamlReader;
import com.nemesis.dretzel.DretzelApp;
import com.nemesis.dretzel.DretzelConstants;
import com.nemesis.dretzel.Utils;

public class YAMLConverter implements IConverter
{
	
	public Document toXML(InputStream fileInputStream)
	{
		Document documentObject = null;

		if(isValid())
		{
			try {	
				java.io.Reader reader = new java.io.InputStreamReader(fileInputStream);
				YamlReader yamlBeansReader = new YamlReader(reader);
				StringBuilder stringBuilder = new StringBuilder();			
				stringBuilder.append(DretzelConstants.XML_CHARSET.toString());
				stringBuilder.append("<"+DretzelConstants.XML_ROOTNAME+">");
				String nodeAsString = null;
				Object objectData 	= null;	

				while (true)
				{
					objectData = yamlBeansReader.read();
					if (objectData == null) {
						break;
					}
					else{
						nodeAsString = collectionToXmlString(objectData, new StringBuilder());
						stringBuilder.append(nodeAsString);
					}
				}

				stringBuilder.append("</"+DretzelConstants.XML_ROOTNAME+">");

				String outputXMLString = stringBuilder.toString().trim();
				System.out.println("outputXMLString : " +outputXMLString);					
				documentObject = Utils.createDocumentObjectFormString(outputXMLString);
				reader.close();
			}
			catch (IOException e) {
				e.printStackTrace();
			}

		}
		return documentObject;
	}

	/**
	 *  TODO : Use subtype polymorphism scenario
	 *  
	 *  Example :
	 *  <pre>
	 *  interface I {
	 * 		void do();
	 *	}
	 *	</pre>
	 *
	 *	<pre>class A implements I { void do() { doA() } ... }</pre>
	 *	<br /><pre>class B implements I { void do() { doB() } ... }</pre>
	 *	<br /><pre>class C implements I { void do() { doC() } ... }</pre>
	 */
	private final String collectionToXmlString(Object objectCollection, StringBuilder stringBuilder)
	{
		if(objectCollection.getClass() == HashMap.class)
		{
			//if (LOGGER.isTraceEnabled()) LOGGER.debug("[HashMap] : "+objectCollection);
			System.out.println("[HashMap] : "+objectCollection);
			java.util.Map map = (java.util.Map) objectCollection;
			Iterator it = map.entrySet().iterator();
			while (it.hasNext()) 
			{
				Map.Entry pairs = (Map.Entry) it.next();
				// Handle whitespace in key
				String formatedKey = String.valueOf(pairs.getKey()).replaceAll("\\s+","");
				//if (LOGGER.isInfoEnabled()) LOGGER.debug("<" +formatedKey+ ">");
				System.out.println("<" +formatedKey+ ">");
				stringBuilder.append("<" +formatedKey+ ">");
				collectionToXmlString(pairs.getValue(), stringBuilder);
				it.remove(); // avoids a ConcurrentModificationException	
				//if (LOGGER.isInfoEnabled()) LOGGER.debug("</" +formatedKey+ ">");
				System.out.println("</" +formatedKey+ ">");
				stringBuilder.append("</" +formatedKey+ ">");
			}		
		}
		else if(objectCollection.getClass() == ArrayList.class)
		{
			//if (LOGGER.isTraceEnabled()) LOGGER.debug("[ArrayList] : "+objectCollection);
			System.out.println("[ArrayList] : "+objectCollection);
			ArrayList array = (ArrayList) objectCollection;

			for (int i = 0; i < array.size(); i++) 
			{
				collectionToXmlString(array.get(i), stringBuilder);
			}

		}
		else if(objectCollection.getClass() == LinkedList.class)
		{			
			//if (LOGGER.isTraceEnabled()) LOGGER.debug("[LinkedList] : "+objectCollection);
			System.out.println("[LinkedList] : "+objectCollection);
		}
		else if(objectCollection.getClass() == String.class)
		{
			//if (LOGGER.isTraceEnabled()) LOGGER.debug("[String] : "+objectCollection);
			System.out.println("[String] : "+objectCollection);
			stringBuilder.append(objectCollection);
		}

		return stringBuilder.toString();

	}

	public boolean isValid() {
		return true;
	}

	/**
	 * 
	 * @param filePath
	 * @return 
	 */
	public String toGivenData(String xmlFilePath)
	{
		Document documentObject = null;				
		String output = null;
		
		try {
			
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			factory.setNamespaceAware(true);
			factory.setValidating(true);
			DocumentBuilder documentBuilder = factory.newDocumentBuilder();

			File datafile =  new File(xmlFilePath);
			System.out.println("datafile : "+datafile);

			documentObject = documentBuilder.parse(datafile);
			System.out.println("file document : "+documentObject);

			// Use a Transformer for output					
			URL stylesheetURL = Utils.getResourceFileURL(new DretzelApp(), "xml2yaml.xsl");
			System.out.println("stylesheetURL : "+stylesheetURL);
			File stylesheetFile = new File(stylesheetURL.getPath());
			System.out.println("stylesheetFile : "+stylesheetFile);			
			StreamSource stylesource = new StreamSource(stylesheetFile);
			System.out.println("stylesource : "+stylesource);		
			DOMSource source = new DOMSource(documentObject);
			System.out.println("source : "+source);
			OutputStream outputStream = new ByteArrayOutputStream();
			StreamResult result = new StreamResult(outputStream);
			System.out.println("result : "+result);	
			Transformer transformer = TransformerFactory.newInstance().newTransformer(stylesource);
			transformer.transform(source, result);
			System.out.println("outputStream.toString() : "+outputStream.toString());	
			output = outputStream.toString();
		}
		catch (TransformerConfigurationException tce) {
			// Error generated by the parser
			System.out.println("\n** Transformer Factory error");
			System.out.println("   " + tce.getMessage());

			// Use the contained exception, if any
			Throwable x = tce;

			if (tce.getException() != null) {
				x = tce.getException();
			}

			x.printStackTrace();
		}
		catch (TransformerException te) {
			// Error generated by the parser
			System.out.println("\n** Transformation error");
			System.out.println("   " + te.getMessage());

			// Use the contained exception, if any
			Throwable x = te;

			if (te.getException() != null) {
				x = te.getException();
			}

			x.printStackTrace();
		}
		catch (SAXException sxe) {
			// Error generated by this application
			// (or a parser-initialization error)
			Exception x = sxe;

			if (sxe.getException() != null) {
				x = sxe.getException();
			}

			x.printStackTrace();
		}
		catch (ParserConfigurationException pce) {
			// Parser with specified options can't be built
			pce.printStackTrace();
		}
		catch (IOException ioe) {
			// I/O error
			ioe.printStackTrace();
		}
		System.out.println("output : "+output);	
		return output;
	}

}
