Feature: Dretzel convertion acceptance tests

Scenario: As a user I want to convert XML data file to JSON
	Given I convert source data file to destination data file
	| inputdatafile	| outputdatafile|
    | example01.xml	| example01.json	|
	When I validate source data file content
	Then I validate destination data file content
	
Scenario: As a user I want to convert JSON data file to XML
	Given I convert source data file to destination data file
	| inputdatafile	| outputdatafile|
	| example01.json| example01.xml	|
	When I validate source data file content
	Then I validate destination data file content