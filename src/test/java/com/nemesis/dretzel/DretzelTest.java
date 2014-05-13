package com.nemesis.dretzel;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

/**
 * Unit test for simple App.
 */
public class DretzelTest 
    extends TestCase
{
    /**
     * Create the test case
     *
     * @param testName name of the test case
     */
    public DretzelTest( String testName )
    {
        super( testName );
    }

    /**
     * @return the suite of tests being tested
     */
    public static Test suite()
    {
        return new TestSuite( DretzelTest.class );
    }

    /**
     * Rigourous Test :-)
     */
    public void testApp()
    {
        assertTrue( true );
    }
    
    public void testYamlXSLfile()
    {
    	assertNotNull("Test file missing", getClass().getResource("xml2yaml.xsl"));
    	assertNotNull("Test file missing", getClass().getResource("sample/example01.xml"));
    }
}
