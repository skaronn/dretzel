package com.nemesis.dretzel.converter;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import com.nemesis.dretzel.DretzelConstants;

import au.com.bytecode.opencsv.CSVReader;

public class CSVConverter extends AbstractConverter {

	private InputStream fileInputStream;

	private static final char[] CSV_SEPARATORS = {',',';'};

	public CSVConverter(InputStream fileInputStream){
		this.fileInputStream = fileInputStream;
	}

	public Document toXML() {
		Document documentXML = null;
		if(isValid()){
			Reader reader = new InputStreamReader(fileInputStream);
			char detectedSeparator = ',' ;
			//char detectedSeparator = detectCSVSeparator(new StringReader(""), CSV_SEPARATORS);
			System.out.println("CSV - detectedSeparator : "+detectedSeparator);
			CSVReader csvReader = new CSVReader(reader, detectedSeparator);
			String[] lines = null;        
			String[] headers = null;
			try {
				headers = csvReader.readNext();

				System.out.println("CSV - headers :  "+headers);
				StringBuilder stringBuilder = new StringBuilder();
				stringBuilder.append(DretzelConstants.XML_CHARSET);
				stringBuilder.append("<"+DretzelConstants.XML_ROOTNAME+">");

				while((lines  = csvReader.readNext()) != null )
				{
					stringBuilder.append("<"+DretzelConstants.XML_DATA+">");
					for (int i = 0; i < headers.length; i++) 
					{
						stringBuilder.append("<"+headers[i].replaceAll("\\s", "")+">");
						stringBuilder.append(lines[i]);
						stringBuilder.append("</"+headers[i].replaceAll("\\s", "")+">");
					}
					stringBuilder.append("</"+DretzelConstants.XML_DATA+">");
				}
				stringBuilder.append("</"+DretzelConstants.XML_ROOTNAME+">");

				String outputXMLString = stringBuilder.toString();
				csvReader.close();
				System.out.println("CSV - outputXMLString =  "+outputXMLString);
				StringReader stringReader = new StringReader(outputXMLString);
				InputSource inputSource = new InputSource(stringReader);
				DocumentBuilder documentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
				documentXML = documentBuilder.parse(inputSource);

			} catch (IOException e) {
				e.printStackTrace();
			}
			catch (ParserConfigurationException e) {
				e.printStackTrace();
			}
			catch (SAXException e) {
				e.printStackTrace();
			}
		}
		return documentXML;
	}

	public boolean isValid() {
		return true;
	}

	private char detectCSVSeparator(Reader reader, char[] separartors)
	{
		char separatorDetected = separartors[0];
		BufferedReader bufferReader = new BufferedReader(reader);
		try {
			String line = bufferReader.readLine();
			System.err.println("line : " + line);
			for (int i = 0; i < separartors.length; i++)
			{
				String[] separated = line.split(String.valueOf(separartors[i]));
				if(separated.length > 1 )
				{
					System.err.println("separartor : " + String.valueOf(separartors[i]));
					System.err.println("separated.length : " + separated.length);
					separatorDetected = separartors[i];
					break;
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return separatorDetected;		
	}

}
