package com.nemesis.dretzel;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.IllegalFormatException;

import javax.xml.transform.TransformerFactoryConfigurationError;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.EntityReference;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.w3c.dom.UserDataHandler;

import com.nemesis.dretzel.converter.CSVConverter;
import com.nemesis.dretzel.converter.IConverter;
import com.nemesis.dretzel.converter.JSONConverter;
import com.nemesis.dretzel.converter.SQLConverter;
import com.nemesis.dretzel.converter.YAMLConverter;

public class DretzelApp {
	
	private static Logger LOGGER = Logger.getLogger(DretzelApp.class);
	
	private enum DataType {
		XML, JSON, CSV, YML, YAML, SQL, DAT, ASC, BIN, BINARY, HEX, HEXADECIMAL, HTML
	}	

	public final void wrapData(String paramInputFilePath, String paramOutputFile)
	{
		String fileContent = null;
		InputStream inputStream = null;
		
		String dateFormat = DretzelConstants.OUTPUT_DIRECTORY_FORMATER.format(new Date());

		// Load file input stream
		inputStream = Utils.getInputStreamFromFile(this, paramInputFilePath);
		
		// Load input stream content as String
		try {
			fileContent = IOUtils.toString(inputStream);	
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String sourceFormat = Utils.getFileExtension(paramInputFilePath);

		String destinationFormat = Utils.getFileExtension(paramOutputFile);
		
		// Convert data format
		String outputFileContent = getConvertFile(paramInputFilePath, sourceFormat, destinationFormat);

		// Create files in output destination directory
		String destinationDirectory = DretzelConstants.DESTINATION_DIR + dateFormat + "." + Utils.getFileExtension(paramInputFilePath) + "-to-" + Utils.getFileExtension(paramOutputFile) + "/" ;
		String destinationInputFilePath = destinationDirectory + Utils.getFileName(paramInputFilePath);
		String destinationOutputFilePath = destinationDirectory + paramOutputFile;		

		String inputFilePath = createFile(destinationInputFilePath, fileContent);
		String outputFilePath = createFile(destinationOutputFilePath, outputFileContent);
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
		InputStream inputStream = Utils.getInputStreamFromFile(this, filePath);

		String tempFile = null;
		String dataFileContent = null;

		if(DataType.BIN.equals(DataType.valueOf(destinationFormat.toUpperCase())) || DataType.BINARY.equals(DataType.valueOf(destinationFormat.toUpperCase())))
		{
			try {
				tempFile = IOUtils.toString(inputStream);
			} catch (IOException e1) {
				e1.printStackTrace();
			}

			System.err.println("BIN - file : "+tempFile);

			StringBuffer strBuffer = new StringBuffer();
			byte[] byteArray = tempFile.getBytes();

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
				tempFile = IOUtils.toString(inputStream);
			} catch (IOException e1) {
				e1.printStackTrace();
			}

			System.err.println("HEX - file : "+tempFile);

			char[] chars = tempFile.toCharArray();
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
			Document documentObject = convertGivenDataToXMLDOMObject(inputStream, sourceFormat);
			
			// Formating and encoding XML DOM object content
			String formattedXMLString = Utils.formatDOMObject(documentObject);

			documentObject = Utils.createDocumentObjectFormString(formattedXMLString);
			
			// Create string from XML DOM object in resource directory
			tempFile = DretzelConstants.DESTINATION_DIR + DretzelConstants.TEMP_XML_FILE ;
			System.out.println("tempXMLPath : "+tempFile);

			// Create temporary file from string XML DOM object content
			String tempXMLFilePath = createFile(tempFile, Utils.documentToString(documentObject));			
			System.out.println("tempXMLFilePath : "+tempXMLFilePath);

			dataFileContent = convertDOMObjectToGivenData(documentObject, destinationFormat, inputStream, tempXMLFilePath);
			System.out.println("dataFileContent : "+dataFileContent);
		}		
		return dataFileContent;
	}
	
	/**
	 * Converts an XML object (DOM) to data type represent as String
	 * @param {@link Document} xml object
	 * @param outputType data type
	 * @return {@link String} outputString 
	 */
	private final String convertDOMObjectToGivenData(Document documentObject, String outputFormatType, InputStream inputStream, String filePath)
	{		
		String outputDataString = null;

		switch(DataType.valueOf(outputFormatType.toUpperCase()))
		{
			case JSON:
				outputDataString = new JSONConverter().toGivenData(filePath);
				break;
				
			case YML:
			case YAML:			
				outputDataString = new YAMLConverter().toGivenData(filePath);
				break;
	
			case CSV:
				outputDataString = new CSVConverter().toGivenData(filePath);
				break;
	
	//		case SQL:
	//			Connection conn = null;
	//			Reader reader = null;
	//			try {
	//				//Class.forName("org.hsqldb.jdbcDriver");
	//				//conn = DriverManager.getConnection("jdbc:hsqldb:mem:sptest", "sa", "");
	//				System.out.println("filePath " + filePath);
	//				reader = Resources.getResourceAsReader(filePath);				
	//				ScriptRunner runner = new ScriptRunner(conn);
	//				runner.setDelimiter("]");
	//				runner.setLogWriter(null);
	//				runner.setErrorLogWriter(null);
	//				runner.runScript(reader);
	//				//conn.commit();
	//				//conn.close();
	//				System.out.println("reader " + reader);
	//				reader.close();
	//				/*} catch (ClassNotFoundException e) {
	//					e.printStackTrace();
	//				} catch (SQLException e) {
	//					e.printStackTrace();*/					
	//			} catch (IOException e) {
	//				e.printStackTrace();					
	//			} 
	//			break;
	
			case XML:
				outputDataString = Utils.formatDOMObject(documentObject);
			default:
				break;
		}
		System.out.println("outputDataString : "+outputDataString);
		return outputDataString;		
	}

	/**
	 * Creates a new XML object (DOM) object from input stream and data type.
	 * @param {@link String} filePath 
	 * @param type data type
	 * @return {@link Document} xml object
	 */
	private final Document convertGivenDataToXMLDOMObject(InputStream fileInputStream, String inputFormatType) throws IllegalFormatException
	{
		Document documentXML = null;
		IConverter dataConverter = null ;

		try {

			switch(DataType.valueOf(inputFormatType.toUpperCase()))
			{
				case JSON:
					dataConverter = new JSONConverter();
					documentXML = dataConverter.toXML(fileInputStream);
					break;
	
				case CSV:
					dataConverter = new CSVConverter();
					documentXML = dataConverter.toXML(fileInputStream);
					break;
	
				case YML:
				case YAML:
					dataConverter = new YAMLConverter();
					documentXML = dataConverter.toXML(fileInputStream);
					break;
	
				case SQL:
					dataConverter = new SQLConverter();
					documentXML = dataConverter.toXML(fileInputStream);
					break;
	
				case XML:
					String xmlContent = IOUtils.toString(fileInputStream);
					documentXML = Utils.createDocumentObjectFormString(xmlContent);
				default:
					break;				
			}
		} catch (IOException e) {
			e.printStackTrace();	
		} catch (TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		}		
		
		if (documentXML == null){
			documentXML = Utils.getFakeDocument();
		}
		
		System.out.println("documentXML : "+documentXML);

		return documentXML;		
	}
	
	/**
	 * Create a file with the specified data content.
	 * @param fileContent data as String
	 * @param extension (JSON, XML, YAML, SQL, etc)
	 * @return
	 */
	private final String createFile(String destinationFilePath, String fileContent)
	{
		File file = null;
		try {
			file = new File(destinationFilePath);
			FileUtils.writeStringToFile(file, fileContent);
			System.out.println("file : "+file.getAbsoluteFile());
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		return file.getAbsolutePath();		
	}


}