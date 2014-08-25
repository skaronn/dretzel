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

	public final void wrapData(String inputFile, String outputFile)
	{
		String fileContent = null;
		InputStream inputStream = null;
		
		String dateFormat = DretzelConstants.OUTPUT_DIRECTORY_FORMATER.format(new Date());

		// Load file input stream
		inputStream = Utils.getInputStreamFromFile(this, inputFile);
		
		// Load input stream content as String
		try {
			fileContent = IOUtils.toString(inputStream);	
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String sourceFormat = Utils.getFileExtension(inputFile);

		String destinationFormat = Utils.getFileExtension(outputFile);
		
		// Convert data format
		String outputFileContent = getConvertFile(inputFile, sourceFormat, destinationFormat);

		// Create files in output destination directory
		String destinationDirectory = DretzelConstants.DESTINATION_DIR + dateFormat + "." + Utils.getFileExtension(inputFile) + "-to-" + Utils.getFileExtension(outputFile) + "/" ;
		String destinationInputFilePath = destinationDirectory + Utils.getFileName(inputFile);
		String destinationOutputFilePath = destinationDirectory + outputFile;		

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
				outputDataString = new JSONConverter().XMLtoJSON(documentObject);
				break;
				
			case YML:
			case YAML:			
				outputDataString = new YAMLConverter().XMLtoYAML(documentObject, inputStream, filePath);
				break;
	
	//		case CSV:
	//			Element elem = xmlObject.getDocumentElement();
	//			NodeList nodelist = elem.getChildNodes();
	//			//displayLevel(nodelist, 1);
	//			int maxDepth = detectXMLMaxDepth(nodelist, CSV_MAX_LEVEL);
	//			//TODO: detect depth, if more than 1 level throw exception
	//			//IllegalFormatException();ParseExceptionDataFormatException;
	//			if(maxDepth > CSV_MAX_LEVEL)
	//			{
	//				throw new UnknownFormatConversionException("Format not supported, XML file too deep : "+maxDepth);
	//			}
	//			try {
	//				outputDataString = xmlToCSV.convert(xmlObject);
	//			} catch (Exception e){
	//				e.printStackTrace();
	//			}
	//			break;	
	
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
				dataConverter = new JSONConverter(fileInputStream);
				documentXML = dataConverter.toXML();
				break;

			case CSV:
				dataConverter = new CSVConverter(fileInputStream);
				documentXML = dataConverter.toXML();
				break;

			case YML:
			case YAML:
				dataConverter = new YAMLConverter();
				documentXML = dataConverter.toXML();
				break;

			case SQL:
				dataConverter = new SQLConverter();
				documentXML = dataConverter.toXML();
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
			documentXML = getFakeDocument();
		}
		
		System.out.println("documentXML : "+documentXML);

		return documentXML;		
	}
	
	private Document getFakeDocument() {
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
		return fakeDocument;
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