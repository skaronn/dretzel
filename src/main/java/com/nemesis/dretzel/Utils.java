package com.nemesis.dretzel;

import java.io.InputStream;
import java.io.StringWriter;
import java.io.Writer;

import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSOutput;
import org.w3c.dom.ls.LSSerializer;

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

	/**
	 * 
	 * @param Document documentObject
	 * @return
	 */
	public static final String formatDocumentObject(Document documentObject)
	{
		DOMImplementationLS domImplementationLS = (DOMImplementationLS) documentObject.getImplementation();			
		LSOutput lsOutput =  domImplementationLS.createLSOutput();			
		lsOutput.setEncoding("UTF-8");			
		Writer stringWriter = new StringWriter();
		lsOutput.setCharacterStream(stringWriter);
		LSSerializer lsSerializer = domImplementationLS.createLSSerializer();
		lsSerializer.write(documentObject, lsOutput);
		return stringWriter.toString();
	}

}
