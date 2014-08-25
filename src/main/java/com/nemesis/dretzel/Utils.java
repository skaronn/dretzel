package com.nemesis.dretzel;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSOutput;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class Utils {

	private static Logger LOGGER = Logger.getLogger(Utils.class);

	public static final InputStream getInputStreamFromFile(Object obj, String filePath)
	{
		InputStream inputStream = obj.getClass().getResourceAsStream(filePath);
		return inputStream;
	}

	public static final String getResourceFilePath(Object obj, String filePath)
	{
		String resourceFilePath = obj.getClass().getResource(filePath).getPath();
		return resourceFilePath;
	}

	public static final String getFileExtension(String fileName)
	{
		String extension = FilenameUtils.getExtension(fileName);
		return extension;
	}

	public static final String getFileName(String fileName)
	{
		String name = FilenameUtils.getName(fileName);
		return name;
	}
	
	public static Document createDocumentObjectFormString(String xmlContent)
	{
		Document document = null;
		try {
			StringReader stringReader = new StringReader(xmlContent);
			InputSource inputSource = new InputSource(stringReader);
			document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputSource);
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return document;
	}

	public static final String documentToString(Document documentObject)
	{
		String xmlOutput = null;		
		try {
			Transformer transformer = TransformerFactory.newInstance().newTransformer();
			StringWriter writer = new StringWriter();
			transformer.transform(new DOMSource(documentObject), new StreamResult(writer));
			xmlOutput = writer.getBuffer().toString();
		} catch (TransformerException e) {
			e.printStackTrace();
		} catch (TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		}		
		return xmlOutput;	
	}

	/**
	 * Return a formatted and encoded XML DOM object content as String
	 * 
	 * @param documentObject
	 * @return
	 */
	public static final String formatDOMObject(Document documentObject)
	{
		String encodedXMLString = Utils.encodeXML(documentObject);
		String indentedXMLString = Utils.indentXML(encodedXMLString);
		return indentedXMLString;
	}
	/**
	 * 
	 * @param Document documentObject
	 * @return
	 */
	private static final String encodeXML(Document documentObject)
	{
		String formatedDocument = null;			
		DOMImplementationLS domImplementationLS = (DOMImplementationLS) documentObject.getImplementation();			
		LSOutput lsOutput =  domImplementationLS.createLSOutput();			
		lsOutput.setEncoding("UTF-8");
		StringWriter stringWriter = new StringWriter();
		lsOutput.setCharacterStream(stringWriter);
		domImplementationLS.createLSSerializer().write(documentObject, lsOutput);
		formatedDocument = stringWriter.toString();
		return formatedDocument;		
	}

	/**
	 * 
	 * @param input
	 * @return
	 */
	private static final String indentXML(String input)
	{
		try {
			Source xmlInput = new StreamSource(new StringReader(input));
			StringWriter stringWriter = new StringWriter();
			StreamResult xmlOutput = new StreamResult(stringWriter);
			Transformer transformer = TransformerFactory.newInstance().newTransformer(); 
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");
			transformer.transform(xmlInput, xmlOutput);
			return xmlOutput.getWriter().toString();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}
