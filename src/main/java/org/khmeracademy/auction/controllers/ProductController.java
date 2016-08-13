package org.khmeracademy.auction.controllers;

import java.util.Map;

import org.khmeracademy.auction.entities.Product;
import org.khmeracademy.auction.entities.input.AddUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/rest/product")
public class ProductController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;
	
	
	
	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<Map<String,Object>> getAllProducts(){
		//System.out.println("Hello");
		HttpEntity<Object> request= new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/find-all-products", HttpMethod.GET , request , Map.class) ;
	return new ResponseEntity<Map<String,Object>>(response.getBody(), HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> addProduct(@RequestBody Product addproduct){
		//System.out.println("Hello");
		HttpEntity<Object> request= new HttpEntity<Object>(addproduct,header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/add-product", HttpMethod.POST , request , Map.class) ;
	return new ResponseEntity<Map<String,Object>>(response.getBody(), HttpStatus.OK);
	}
	
	//-----------------image controller
	@RequestMapping(value="/getimage/{product_name}" ,method = RequestMethod.GET)
	public ResponseEntity<Map<String,Object>> getAllImages(@PathVariable String product_name){
		//System.out.println("Hello image>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+product_name);
		HttpEntity<Object> request= new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/find-image-by-product-name/"+product_name, HttpMethod.GET , request , Map.class) ;
	return new ResponseEntity<Map<String,Object>>(response.getBody(), HttpStatus.OK);
	}
	
	
	
	
}
