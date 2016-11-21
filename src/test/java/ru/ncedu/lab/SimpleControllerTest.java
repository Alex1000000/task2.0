package ru.ncedu.lab;

import org.junit.Test;

import java.util.Map;

import org.mockito.Mockito;
import static org.junit.Assert.*;

/**
 * Created by alef0913 on 19.10.2016.
 */
public class SimpleControllerTest {
    @Test
    public void getEnvVariable() throws Exception {
        SimpleController sc = new SimpleController();
        Map<String, Object> model = Mockito.mock(Map.class);
        String result = sc.getEnvVariable("OS", model);
        assertEquals(result, "/WEB-INF/views/env_one.jsp");
        Mockito.verify(model).put("value", "Windows_NT");
    }
}