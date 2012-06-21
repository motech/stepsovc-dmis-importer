package org.wv.stepsovc.processors;

import org.apache.commons.io.FileUtils;
import org.junit.Test;

import java.io.File;

import static junit.framework.Assert.assertEquals;
import static junit.framework.Assert.assertSame;
import static junit.framework.Assert.assertTrue;

public class GenerateSqlScriptsTest {
    @Test
    public void shouldGenerateInsertScripts() throws Exception {

        final String csvPath = this.getClass().getResource("/testcsv.csv").getPath();
        final String expectedScriptFilePath = this.getClass().getResource("/expected-referral-scripts.sql").getPath();
        final String actualScriptFilePath = "/Users/balajig/Documents/Projects/Motech_Zambia/stepsovc-dmis-importer/target/test-classes/actual-referral-scripts.sql";

        GenerateSqlScripts.main(new String[]{csvPath, actualScriptFilePath});
        File actualSqlFile = new File(actualScriptFilePath);
        File expectedSqlFile = new File(expectedScriptFilePath);
        String actual = FileUtils.readFileToString(actualSqlFile,"UTF-8").trim();
        String expected = FileUtils.readFileToString(expectedSqlFile,"UTF-8").trim();
        assertEquals(expected,actual);
    }

}
