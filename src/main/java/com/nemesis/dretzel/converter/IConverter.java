package com.nemesis.dretzel.converter;

import org.w3c.dom.Document;

public interface IConverter {
	
	public boolean isValid();
	
	public Document toXML();	

}
