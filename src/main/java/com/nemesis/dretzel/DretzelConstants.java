package com.nemesis.dretzel;

import java.text.SimpleDateFormat;

public class DretzelConstants {

	public static final String INPUT_DATA_FILE = "inputdatafile";
	public static final String OUTPUT_DATA_FILE = "outputdatafile";
	public static SimpleDateFormat OUTPUT_DIRECTORY_FORMATER = new SimpleDateFormat("dd-MM-yyyy_HH-mm-ss-SSS");
	public static final String XML_CHARSET		="<?xml version=\"1.0\" encoding=\"utf-8\"?>";
	public static final String XML_ROOTNAME		="root";
	public static final String XML_DATA			="row";
	public static final String DESTINATION_DIR = "/output/";
	public static final String SAMPLE_DIRECTORY = "sample/";
	public static final String TEMP_XML_FILE="temp.xml";
	public static final char[] CSV_SEPARATORS = {',',';'};
	public static final int CSV_MAX_LEVEL = 1;
	public static final int INDENT_TOP_LEVEL_FACTOR = 0;
	public static final int INDENT_FACTOR = 2;
}
