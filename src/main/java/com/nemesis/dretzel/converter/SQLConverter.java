package com.nemesis.dretzel.converter;

import java.io.InputStream;

import org.w3c.dom.Document;

public class SQLConverter implements IConverter {

	public Document toXML(InputStream fileInputStream) {
		if(isValid())
		{
			return null;
		}
		return null;
	}

	public boolean isValid() {
		return true;
	}

	@Override
	public String toGivenData(String xmlFilePath)
	{
		return null;
	}

}
