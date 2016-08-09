package org.khmeracademy.auction.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class MvcConfiguration extends WebMvcConfigurerAdapter{
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/home").setViewName("/home");
		registry.addViewController("/").setViewName("/index");
		registry.addViewController("/index").setViewName("/index");
		registry.addViewController("/login").setViewName("/login");
		registry.addViewController("/register").setViewName("/register");
		registry.addViewController("/admin").setViewName("/admin/dashboard");
		registry.addViewController("/admin/dashboard").setViewName("/admin/dashboard");
		registry.addViewController("/admin/viewuser").setViewName("/admin/viewuser");
		registry.addViewController("/admin/adduser").setViewName("/admin/adduser");
		registry.addViewController("/admin/addsupplier").setViewName("/admin/addsupplier");
		registry.addViewController("/admin/viewsupplier").setViewName("/admin/viewsupplier");
		registry.addViewController("/admin/addcategory").setViewName("/admin/addcategory");
		registry.addViewController("/admin/addcategory").setViewName("/admin/addcategory");
		registry.addViewController("/admin/viewcategory").setViewName("/admin/viewcategory");
		registry.addViewController("/admin/addproduct").setViewName("/admin/addproduct");
		registry.addViewController("/admin/viewproduct").setViewName("/admin/viewproduct");
		registry.addViewController("/admin/addauction").setViewName("/admin/addauction");
		registry.addViewController("/admin/viewauction").setViewName("/admin/viewauction");
		registry.addViewController("/admin/bidhistory").setViewName("/admin/bidhistory");
		
	}
}
