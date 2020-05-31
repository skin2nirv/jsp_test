package com.chicken.review.config;

import org.springframework.http.HttpStatus;
import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ErrorConfiguration {
	
	@Bean
	public ConfigurableServletWebServerFactory webServerFactory() {
		
		TomcatServletWebServerFactory factory = new TomcatServletWebServerFactory();
        factory.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND, "/error/404"));
    
        return factory;
	}
	
}
