package com.nemesis.dretzel;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(format = "json:target/cucumber-report.json")
public class RunCukesTest {
}
