package com.nemesis.dretzel;

import java.util.List;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class DretzelStepdefs {
	
	private class ConverterItem {
		private String inputdatafile;
		private String outputdatafile;
	}
	
	private static final String SAMPLE_DIRECTORY = "sample/";
	
	@Given("^I convert source data file to destination data file$")
	public void I_convert_source_data_file_to_destination_data_file(List<ConverterItem> items) {
		
		String[] args = new String[2];
		
		for (ConverterItem item : items) {
			System.out.println("item.inputdatafile : "+item.inputdatafile);
			System.out.println("item.outputdatafile : "+item.outputdatafile);
			args[0] = getClass().getResource(SAMPLE_DIRECTORY + item.inputdatafile).getFile();
			System.out.println("args[0] : "+args[0]);
			args[1] = item.outputdatafile;			
			Dretzel.main(args);
		}		
	    
	}
    
	@When("^I validate source data file content$")
	public void I_validate_source_data_file_content() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	    throw new PendingException();
	}

	@Then("^I validate destination data file content$")
	public void I_validate_destination_data_file_content() throws Throwable {
	    // Express the Regexp above with the code you wish you had
	   throw new PendingException();
	}
    
}
