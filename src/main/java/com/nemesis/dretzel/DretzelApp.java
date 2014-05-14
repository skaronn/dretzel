package com.nemesis.dretzel;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSOutput;
import org.w3c.dom.ls.LSSerializer;

public class DretzelApp {
	
	private static Logger logger = Logger.getLogger(DretzelApp.class);
	
	private static final String DESTINATION_DIR = "/output/";

	private enum DataType {
		XML, JSON, CSV, YML, YAML, SQL, DAT, ASC, BIN, BINARY, HEX, HEXADECIMAL, HTML
	}	

	public final void wrapData(String inputFile, String outputFile)
	{
		logger.debug("inputFile : "+inputFile);
		logger.debug("outputFile : "+outputFile);
		/*
		String fileContent = null;
		InputStream inputStream = null;
		String dateFormat = DretzelConstants.OUTPUT_DIRECTORY_FORMATER.format(new Date());
		LOGGER.debug("dateFormat : "+dateFormat);

		// Load file input stream
		inputStream = Utils.getInputStreamFromFile(this, inputFile);
		LOGGER.debug("inputStream : "+inputStream);		

		// Load input stream content as String
		try {
			fileContent = IOUtils.toString(inputStream);
			LOGGER.debug("fileContent : "+fileContent);	
		} catch (IOException e) {
			e.printStackTrace();
		}

		String sourceFormat = Utils.getFileExtension(inputFile);
		LOGGER.debug("sourceFormat : "+sourceFormat);

		String destinationFormat = Utils.getFileExtension(outputFile);
		LOGGER.debug("destinationFormat : "+destinationFormat);

		// Convert data format
		String outputFileContent = getConvertFile(inputFile, sourceFormat, destinationFormat);
		LOGGER.debug("outputFileContent : "+outputFileContent);

		// Create files in output destination directory
		String destinationDirectory = DESTINATION_DIR + dateFormat + "." + Utils.getFileExtension(inputFile) + "-to-" + Utils.getFileExtension(outputFile) + "/" ;
		String destinationInputFilePath = destinationDirectory + Utils.getFileName(inputFile);
		String destinationOutputFilePath = destinationDirectory + outputFile;		

		String inputFilePath = createFile(destinationInputFilePath, fileContent);	
		LOGGER.debug(inputFilePath+" succesfully saved !!!");		

		String outputFilePath = createFile(destinationOutputFilePath, outputFileContent);
		LOGGER.debug(outputFilePath+" succesfully saved !!!");
		*/
	}
	
	/**
	 * 
	 * @param filePath
	 * @param sourceFormat
	 * @param destinationFormat
	 * @return
	 */
	private final String getConvertFile(String filePath, String sourceFormat, String destinationFormat)
	{
		return "";
		/*
		InputStream inputStream = Utils.getInputStreamFromFile(this, filePath);

		String file = null;
		String dataFileContent = null;

		if(DataType.BIN.equals(DataType.valueOf(destinationFormat.toUpperCase())) || DataType.BINARY.equals(DataType.valueOf(destinationFormat.toUpperCase())))
		{

			try {
				file = IOUtils.toString(inputStream);
			} catch (IOException e1) {
				e1.printStackTrace();
			}

			System.err.println("BIN - file : "+file);

			StringBuffer strBuffer = new StringBuffer();
			byte[] byteArray = file.getBytes();

			for (int i = 0; i < byteArray.length; i++)
			{
				String binary = Integer.toBinaryString(byteArray[i] & 0xFF);
				strBuffer.append(binary);
			}

			dataFileContent = strBuffer.toString();
		}
		else if(DataType.HEX.equals(DataType.valueOf(destinationFormat.toUpperCase())) || DataType.HEXADECIMAL.equals(DataType.valueOf(destinationFormat.toUpperCase())))
		{
			try {
				file = IOUtils.toString(inputStream);
			} catch (IOException e1) {
				e1.printStackTrace();
			}

			System.err.println("HEX - file : "+file);

			char[] chars = file.toCharArray();
			StringBuffer stringBuffer = new StringBuffer();

			for (int i = 0; i < chars.length; i++)
			{
				String hexadecimal = Integer.toHexString((int) chars[i]);
				stringBuffer.append(hexadecimal);
			}

			dataFileContent = stringBuffer.toString();
		}
		else{
			// Convert Data to XML DOM object
			Document xmlDOMObject = convertGivenDataToXMLDOMObject(inputStream, sourceFormat);
			System.out.println("xmlDOMObject : "+xmlDOMObject);

			// Create temporary file from XML DOM object
			DOMImplementationLS domImplementationLS = (DOMImplementationLS) xmlDOMObject.getImplementation();			
			LSOutput lsOutput =  domImplementationLS.createLSOutput();			
			lsOutput.setEncoding("UTF-8");
			lsOutput.setCharacterStream(new StringWriter());
			LSSerializer lsSerializer = domImplementationLS.createLSSerializer();
			lsSerializer.write(xmlDOMObject, lsOutput);

			// Format XML DOM string
			String xmlDOMObjectAsStringContent = formatDOMObject(xmlDOMObject);			
			System.out.println("xmlDOMObjectAsStringContent : "+xmlDOMObjectAsStringContent);

			// Create string from XML DOM object in resource directory
			String xmlTmpFilePath = this.getClass().getResource(SAMPLE_BASE_DIRECTORY).getPath() + TMP_XML_DATA;
			System.out.println("xmlTmpFilePath : "+xmlTmpFilePath);

			// Create temporary file from string XML DOM object content
			String xmlFilePath = createFile(xmlTmpFilePath, xmlDOMObjectAsStringContent);			
			System.out.println("xmlFilePath : "+xmlFilePath);

			dataFileContent = convertDOMObjectToGivenData(xmlDOMObject, destinationFormat, inputStream, SAMPLE_BASE_DIRECTORY + TMP_XML_DATA);			
		}
		System.out.println("dataFileContent : "+dataFileContent);
		return dataFileContent;
		*/
	}
	
	/**
	 * Create a file with the specified data content.
	 * @param fileContent data as String
	 * @param extension (SQL, XML, etc)
	 * @return
	 */
	private final String createFile(String destinationFilePath, String fileContent)
	{
		File file = null;
		try {
			file = new File(destinationFilePath);
			FileUtils.writeStringToFile(file, fileContent);
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		return file.getAbsolutePath();		
	}

	/**
	 * 
	 * @param Document documentObject
	 * @return
	 */
	private final String formatDocumentObject(Document documentObject)
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
