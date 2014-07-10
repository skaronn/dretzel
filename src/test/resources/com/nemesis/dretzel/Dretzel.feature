Feature: Dretzel convertion test

Scenario: As a user I want to convert data type files
	Given I convert source data file to destination data file
	| inputdatafile		| outputdatafile	|
    | example01.json	| example01.xml	|
	When I validate source data file content
	Then I validate destination data file content