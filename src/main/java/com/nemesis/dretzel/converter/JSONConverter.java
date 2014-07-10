package com.nemesis.dretzel.converter;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import net.sf.json.JSON;
import net.sf.json.JSONSerializer;
import net.sf.json.xml.XMLSerializer;

import org.apache.commons.io.IOUtils;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class JSONConverter extends AbstractConverter {

	private InputStream fileInputStream;

	public JSONConverter(InputStream fileInputStream){
		this.fileInputStream = fileInputStream;
	}

	public Document toXML() {
		Document documentXML = null;
		
		if(isValid()){			
			try {
				String jsonData = IOUtils.toString(fileInputStream);

				XMLSerializer serializer = new XMLSerializer();       
				JSON json = JSONSerializer.toJSON(jsonData);
				String jsonToXML = serializer.write(json);
				System.out.println("jsonToXML : "+jsonToXML);
				StringReader stringReader = new StringReader(jsonToXML);
				InputSource inputSource = new InputSource(stringReader);
				DocumentBuilder documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
				documentXML = documentBuilder.parse(inputSource);
			}
			catch (IOException e) {
				e.printStackTrace();
			}
			catch (ParserConfigurationException e) {
				e.printStackTrace();
			} catch (SAXException e) {
				e.printStackTrace();
			}

		}
		return documentXML;
	}

	public boolean isValid() {
		return true;
	}

}
