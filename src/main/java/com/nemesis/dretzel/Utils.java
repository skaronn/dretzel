package com.nemesis.dretzel;

import java.io.InputStream;

import org.apache.commons.io.FilenameUtils;

public class Utils {
	
	public static final InputStream getInputStreamFromFile(Object obj, String filePath)
	{
		InputStream inputStream = obj.getClass().getResourceAsStream(filePath);
		return inputStream;
	}
	
	public static final String getResourceFilePath(Object obj, String filePath)
	{
		String resourceFilePath = obj.getClass().getResource(filePath).getPath();
		return resourceFilePath;
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

}
