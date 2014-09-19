Feature: Dretzel conversion acceptance tests

Scenario: As a user I want to convert XML data file to CSV
	Given I convert source data file to destination data file
	| inputdatafile	 | outputdatafile |
	| example01.xml | example01.csv   |
	When I validate source data file content
	Then I validate destination data file content	