package com.nemesis.dretzel.converter;

import java.io.IOException;
import java.io.InputStream;

import net.sf.json.JSON;
import net.sf.json.JSONSerializer;
import net.sf.json.xml.XMLSerializer;

import org.apache.commons.io.IOUtils;
import org.w3c.dom.Document;

import com.nemesis.dretzel.DretzelConstants;
import com.nemesis.dretzel.Utils;

public class JSONConverter extends AbstractConverter {

	private InputStream fileInputStream;
	
	public JSONConverter()
	{
		
	}

	public JSONConverter(InputStream fileInputStream)
	{
		this.fileInputStream = fileInputStream;
	}

	public Document toXML()
	{
		Document documentXML = null;
		
		if(isValid())
		{			
			try {
				String jsonData = IOUtils.toString(fileInputStream);
				XMLSerializer serializer = new XMLSerializer();       
				JSON serializedJSONContent = JSONSerializer.toJSON(jsonData);
				String contentXML = serializer.write(serializedJSONContent);
				System.out.println("JSON to XML : "+contentXML);
				documentXML = Utils.createDocumentObjectFormString(contentXML);
			}
			catch (IOException e) {
				e.printStackTrace();
			}

		}
		return documentXML;
	}

	public boolean isValid() {
		return true;
	}

	public String XMLtoJSON(Document documentObject)
	{
		String output = null;
		String contentJSON = Utils.formatDOMObject(documentObject);
		net.sf.json.JSON serializedJSON = new net.sf.json.xml.XMLSerializer().read(contentJSON);
		output = serializedJSON.toString(DretzelConstants.INDENT_FACTOR, DretzelConstants.INDENT_TOP_LEVEL_FACTOR);
		return output;
	}

}
