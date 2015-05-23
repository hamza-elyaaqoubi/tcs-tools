package com.tcs.www.insurance.uwwb.servlet;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

import javax.servlet.ServletException;
import java.io.IOException;

import static org.fest.assertions.Assertions.assertThat;

@RunWith(MockitoJUnitRunner.class)
public class FileUploaderTest {

    @InjectMocks
    private FileUploader fileUploader;

    @Test
    public void should_redirectToErrorPage() throws ServletException, IOException {
        // Given
        MockHttpServletRequest request = new MockHttpServletRequest();
        MockHttpServletResponse response = new MockHttpServletResponse();

        // When
        fileUploader.doPost(request, response);

        // Then
        assertThat(response.getForwardedUrl()).contains(FileUploader.ERROR_PAGE);
    }
}
