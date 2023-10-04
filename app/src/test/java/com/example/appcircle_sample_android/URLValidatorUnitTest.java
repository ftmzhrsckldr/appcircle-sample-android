package com.example.appcircle_sample_android;

import org.junit.Test;

import static org.junit.Assert.*;

final Logger logger = LoggerFactory.getLogger(LoggingTest.class);

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
public class URLValidatorUnitTest {

    @Test
    public void invalid_url_test() {
        boolean isValid = URLValidator.isValid("httptest:www:google:com");
        assertFalse(isValid);
    }

    @Test
    public void valid_url_test() {
        boolean isValid = URLValidator.isValid("https://www.google.com");
        assertTrue(isValid);
    }

    @Test
    public void warn_test() {
        logger.warn("Warning test message.");
    }
}