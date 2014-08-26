package com.nemesis.dretzel.converter;

import java.io.InputStream;

import org.w3c.dom.Document;

public interface IConverter {
	
	public boolean isValid();
	
	public Document toXML(InputStream fileInputStream);
	
	public String toGivenData(String xmlFilePath);

}
