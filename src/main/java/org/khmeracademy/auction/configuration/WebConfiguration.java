package org.khmeracademy.auction.configuration;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@PropertySource(
		value={"classpath:configuration.properties"}
)
public class WebConfiguration extends WebMvcConfigurerAdapter {
	
	@Autowired
	private Environment environment;
	
	@Bean
	public HttpHeaders header(){
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		String credentials = environment.getProperty("AUCTION.API.SECRET_HEADER");
		headers.set("Authorization", "Basic " + credentials);
		return headers;
	}
	
	@Bean
	public RestTemplate restTemplate(){
		RestTemplate restTemplate = new RestTemplate();
		// Add the Jackson and String message converters
		restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
		restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
		return restTemplate;
	}
	
	@Bean
	public String WS_URL(){
		return environment.getProperty("AUCTION.API.URL");
	}
	
	@Bean
	public String WEB_UI_URL(){
		return environment.getProperty("AUCTION.URL");
	}
	
	
	@Bean
	public String KEY(){
		return environment.getProperty("AUCTION.API.SECRET_HEADER");
	}
	
	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**")
				.allowedMethods("GET","POST","DELETE","PUT","OPTIONS","PATCH")
				.allowedOrigins("*");
	}
	
	
	// Upload file bean
    @Bean
    public CommonsMultipartResolver multipartResolver() throws IOException{
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
         
        //Set the maximum allowed size (in bytes) for each individual file.
        resolver.setMaxUploadSizePerFile(5242880);//5MB
         
        //You may also set other available properties.
        return resolver;
    }
    
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
    	
    	InternalResourceViewResolver resovler = new InternalResourceViewResolver();
    	resovler.setPrefix("/WEB-INF/pages/");
    	resovler.setSuffix(".jsp");
    	
    	registry.viewResolver(resovler);
    }
	

}
