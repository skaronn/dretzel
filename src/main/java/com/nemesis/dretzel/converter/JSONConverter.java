package com.nemesis.dretzel.converter;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import net.sf.json.JSON;
import net.sf.json.JSONSerializer;
import net.sf.json.xml.XMLSerializer;

import org.apache.commons.io.IOUtils;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

import com.nemesis.dretzel.DretzelConstants;
import com.nemesis.dretzel.Utils;

public class JSONConverter implements IConverter
{

	public JSONConverter()
	{

	}

	public Document toXML(InputStream fileInputStream)
	{
		Document documentObject = null;

		if(isValid())
		{			
			try {
				String jsonData = IOUtils.toString(fileInputStream);
				XMLSerializer serializer = new XMLSerializer();       
				JSON serializedJSONContent = JSONSerializer.toJSON(jsonData);
				String contentXML = serializer.write(serializedJSONContent);
				System.out.println("JSON to XML : "+contentXML);
				documentObject = Utils.createDocumentObjectFormString(contentXML);
			}
			catch (IOException e) {
				e.printStackTrace();
			}

		}
		return documentObject;
	}

	public boolean isValid() {
		return true;
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
			String contentJSON = Utils.formatDOMObject(documentObject);
			net.sf.json.JSON serializedJSON = new net.sf.json.xml.XMLSerializer().read(contentJSON);
			output = serializedJSON.toString(DretzelConstants.INDENT_FACTOR, DretzelConstants.INDENT_TOP_LEVEL_FACTOR);
			System.out.println("output : "+output);
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}		
		
		return output;
	}

}
