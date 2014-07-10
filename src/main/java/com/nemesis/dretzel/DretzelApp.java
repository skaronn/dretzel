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
	
	//private static Logger LOGGER = Logger.getLogger(DretzelApp.class);
	
	private static final String DESTINATION_DIR = "/output/";

	private enum DataType {
		XML, JSON, CSV, YML, YAML, SQL, DAT, ASC, BIN, BINARY, HEX, HEXADECIMAL, HTML
	}	

	public final void wrapData(String inputFile, String outputFile)
	{
		String fileContent = null;
		InputStream inputStream = null;
		
		String dateFormat = DretzelConstants.OUTPUT_DIRECTORY_FORMATER.format(new Date());
		
		/*LOGGER.debug("dateFormat : "+dateFormat);		
		LOGGER.debug("inputFile : "+inputFile);
		LOGGER.debug("outputFile : "+outputFile);*/

		// Load file input stream
		inputStream = Utils.getInputStreamFromFile(this, inputFile);
		//LOGGER.debug("inputStream : "+inputStream);
		
		// Load input stream content as String
		try {
			fileContent = IOUtils.toString(inputStream);
			//LOGGER.debug("fileContent : "+fileContent);	
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String sourceFormat = Utils.getFileExtension(inputFile);
		//LOGGER.debug("sourceFormat : "+sourceFormat);

		String destinationFormat = Utils.getFileExtension(outputFile);
		//LOGGER.debug("destinationFormat : "+destinationFormat);
		
		// Convert data format
		String outputFileContent = getConvertFile(inputFile, sourceFormat, destinationFormat);
		//LOGGER.debug("outputFileContent : "+outputFileContent);

		// Create files in output destination directory
		String destinationDirectory = DESTINATION_DIR + dateFormat + "." + Utils.getFileExtension(inputFile) + "-to-" + Utils.getFileExtension(outputFile) + "/" ;
		String destinationInputFilePath = destinationDirectory + Utils.getFileName(inputFile);
		String destinationOutputFilePath = destinationDirectory + outputFile;		

		String inputFilePath = createFile(destinationInputFilePath, fileContent);	
		//LOGGER.debug(inputFilePath+" succesfully saved !!!");		

		String outputFilePath = createFile(destinationOutputFilePath, outputFileContent);
		//LOGGER.debug(outputFilePath+" succesfully saved !!!");
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
			dataFileContent = "dummy";
			
			// Convert Data to XML DOM object
			Document documentObject = convertGivenDataToXMLDOMObject(inputStream, sourceFormat);
			System.out.println("documentObject : "+documentObject);
			/*
			// Create temporary file from XML DOM object
			DOMImplementationLS domImplementationLS = (DOMImplementationLS) xmlDOMObject.getImplementation();			
			LSOutput lsOutput =  domImplementationLS.createLSOutput();			
			lsOutput.setEncoding("UTF-8");
			lsOutput.setCharacterStream(new StringWriter());
			LSSerializer lsSerializer = domImplementationLS.createLSSerializer();
			lsSerializer.write(xmlDOMObject, lsOutput);

			// Format XML DOM string
			String xmlDOMObjectAsStringContent = formatDocumentObject(xmlDOMObject);			
			System.out.println("xmlDOMObjectAsStringContent : "+xmlDOMObjectAsStringContent);

			// Create string from XML DOM object in resource directory
			String xmlTmpFilePath = this.getClass().getResource(SAMPLE_BASE_DIRECTORY).getPath() + TMP_XML_DATA;
			System.out.println("xmlTmpFilePath : "+xmlTmpFilePath);

			// Create temporary file from string XML DOM object content
			String xmlFilePath = createFile(xmlTmpFilePath, xmlDOMObjectAsStringContent);			
			System.out.println("xmlFilePath : "+xmlFilePath);

			dataFileContent = convertDOMObjectToGivenData(xmlDOMObject, destinationFormat, inputStream, SAMPLE_BASE_DIRECTORY + TMP_XML_DATA);
			*/		
		}
		System.out.println("dataFileContent : "+dataFileContent);
		return dataFileContent;
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
				dataConverter = new JSONConverter(fileInputStream);
				break;

			case CSV:
				dataConverter = new CSVConverter(fileInputStream);
				break;

			case YML:
			case YAML:
				dataConverter = new YAMLConverter();
				break;

			case SQL:
				dataConverter = new SQLConverter();
				break;

			case XML:
			default:
				break;				
			}
						
			documentXML = dataConverter.toXML();
			
			System.out.println("documentXML : "+documentXML);
			
		} catch (TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		}
		
		Document fakeDocument = new Document() {
			
			@Override
			public Object setUserData(String arg0, Object arg1, UserDataHandler arg2) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public void setTextContent(String arg0) throws DOMException {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void setPrefix(String arg0) throws DOMException {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void setNodeValue(String arg0) throws DOMException {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public Node replaceChild(Node arg0, Node arg1) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Node removeChild(Node arg0) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public void normalize() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public String lookupPrefix(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public String lookupNamespaceURI(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public boolean isSupported(String arg0, String arg1) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public boolean isSameNode(Node arg0) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public boolean isEqualNode(Node arg0) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public boolean isDefaultNamespace(String arg0) {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public Node insertBefore(Node arg0, Node arg1) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public boolean hasChildNodes() {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public boolean hasAttributes() {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public Object getUserData(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public String getTextContent() throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Node getPreviousSibling() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public String getPrefix() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Node getParentNode() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Document getOwnerDocument() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public String getNodeValue() throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public short getNodeType() {
				// TODO Auto-generated method stub
				return 0;
			}
			
			@Override
			public String getNodeName() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Node getNextSibling() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public String getNamespaceURI() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public String getLocalName() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Node getLastChild() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Node getFirstChild() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Object getFeature(String arg0, String arg1) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public NodeList getChildNodes() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public String getBaseURI() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public NamedNodeMap getAttributes() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public short compareDocumentPosition(Node arg0) throws DOMException {
				// TODO Auto-generated method stub
				return 0;
			}
			
			@Override
			public Node cloneNode(boolean arg0) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Node appendChild(Node arg0) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public void setXmlVersion(String arg0) throws DOMException {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void setXmlStandalone(boolean arg0) throws DOMException {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void setStrictErrorChecking(boolean arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void setDocumentURI(String arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public Node renameNode(Node arg0, String arg1, String arg2)
					throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public void normalizeDocument() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public Node importNode(Node arg0, boolean arg1) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public String getXmlVersion() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public boolean getXmlStandalone() {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public String getXmlEncoding() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public boolean getStrictErrorChecking() {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public String getInputEncoding() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public DOMImplementation getImplementation() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public NodeList getElementsByTagNameNS(String arg0, String arg1) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public NodeList getElementsByTagName(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Element getElementById(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public DOMConfiguration getDomConfig() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public String getDocumentURI() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Element getDocumentElement() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public DocumentType getDoctype() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Text createTextNode(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public ProcessingInstruction createProcessingInstruction(String arg0,
					String arg1) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public EntityReference createEntityReference(String arg0)
					throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Element createElementNS(String arg0, String arg1)
					throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Element createElement(String arg0) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public DocumentFragment createDocumentFragment() {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Comment createComment(String arg0) {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public CDATASection createCDATASection(String arg0) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Attr createAttributeNS(String arg0, String arg1) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Attr createAttribute(String arg0) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
			
			@Override
			public Node adoptNode(Node arg0) throws DOMException {
				// TODO Auto-generated method stub
				return null;
			}
		};
		
		if (documentXML == null){
			documentXML = fakeDocument;
		}

		return documentXML;		
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


}