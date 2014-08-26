package com.nemesis.dretzel;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.net.URL;

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

	public static final URL getResourceFileURL(Object object, String filePath)
	{
		URL resourceFileURL = object.getClass().getResource(filePath);
		return resourceFileURL;
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
	
	public static Document getFakeDocument() {
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

}
