package com.chicken.review.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import org.springframework.web.servlet.resource.PathResourceResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
public class StaticResourceConfiguration  implements WebMvcConfigurer {

  private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
	        "classpath:/META-INF/resources/", 
	        "classpath:/resources/",
	        "classpath:/resources/static/",
	        "classpath:/static/", 
	        "classpath:/public/" };


    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    	if (!registry.hasMappingForPattern("/**")) {

	        registry.addResourceHandler("/**")
	                .addResourceLocations("CLASSPATH_RESOURCE_LOCATIONS")
	                .setCachePeriod(3600)
	                .resourceChain(true)
	                .addResolver(new PathResourceResolver());

    	}
      
    }
  
}