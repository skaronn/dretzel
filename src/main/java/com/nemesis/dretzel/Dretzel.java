package com.nemesis.dretzel;

import net.sourceforge.argparse4j.ArgumentParsers;
import net.sourceforge.argparse4j.inf.ArgumentParser;
import net.sourceforge.argparse4j.inf.ArgumentParserException;
import net.sourceforge.argparse4j.inf.Namespace;

import org.apache.log4j.Logger;


/**
 * Data Builder (Dretzel)
 * The purpose of this class is a cross data wrapper which transforms 
 * any XML, JSON, YAML, CSV/XLS, SQL,  DAT (SQL Server Unicode), ASCII,
 * BINARY, HEXADECIMAL. to file in destination format data file
 * <br /><br />
 * 
 * This class uses XML as bridge type for all data type
 * because it's the most common used, powerful and complex type
 * 
 * @author adgnabro
 */
public class Dretzel {
	
	private static Logger logger = Logger.getLogger(Dretzel.class);

	/**
	 * dretzel [-h] [inputdatafile] [outputdatafile]
	 * 
	 * @param args
	 */
	public static void main(String[] args)
	{
		ArgumentParser parser = ArgumentParsers.newArgumentParser("dretzel").defaultHelp(true)
				.description("Convert given data files.");
		try {
			parser.addArgument(DretzelConstants.INPUT_DATA_FILE).nargs("?").type(String.class)
			.setDefault(System.in).required(true);
			parser.addArgument(DretzelConstants.OUTPUT_DATA_FILE).nargs("?").type(String.class)
			.setDefault(System.out).required(true);
			Namespace namespace = parser.parseArgs(args);
			logger.info("namespace : "+namespace);
			String inputFile = namespace.getString(DretzelConstants.INPUT_DATA_FILE);
			logger.info("inputFile : "+inputFile);
			String outputFile = namespace.getString(DretzelConstants.OUTPUT_DATA_FILE);
			logger.info("outputFile : "+outputFile);
			DretzelApp dretzelApp = new DretzelApp();
			dretzelApp.wrapData(inputFile, outputFile);
		} catch (ArgumentParserException e) {
			parser.handleError(e);
			System.exit(1);
		}
	}

}
