package com.nemesis.dretzel;

import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class DretzelStepdefs {
	
	@Given("^I convert source data file to destination data file$")
	public void I_convert_source_data_file_to_destination_data_file(DataTable dataTable) throws Throwable {
	    // Express the Regexp above with the code you wish you had
	    // For automatic conversion, change DataTable to List<YourType>
	    throw new PendingException();
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
