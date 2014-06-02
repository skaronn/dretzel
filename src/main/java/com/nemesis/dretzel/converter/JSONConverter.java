package com.nemesis.dretzel.converter;

import org.w3c.dom.Document;

public class JSONConverter extends AbstractConverter {
	
	public JSONConverter(){
		
	}

	public Document toXML() {
		if(isValid()){
			return null;
		}
		return null;
	}

	public boolean isValid() {
		return true;
	}

}
