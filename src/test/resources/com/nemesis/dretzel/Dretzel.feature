Feature: Dretzel convertion test

Scenario: As a user I want to convert data type files
	Given I convert source data file to destination data file
	| inputdatafile		| outputdatafile	|
    | example01.xml		| example01.json	|
    | example01.xml		| example01.yaml	|
    | example01.xml		| example01.csv		|
    | example01.csv		| example01.xml		|
    | example01.csv		| example01.json	|
    | example01.csv		| example01.yaml	|
    | example01.yml		| example01.xml		|
    | example01.yml		| example01.json	|
    | example01.yml		| example01.csv		|
	When I validate source data file content
	Then I validate destination data file content

