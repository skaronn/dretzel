package com.nemesis.dretzel;

import com.nemesis.dretzel.Utils;
import junit.framework.TestCase;

public class UtilsTest extends TestCase{

    public void testApp()
    {
    	assertNull( Utils.getFileName(null) );
    }
}
