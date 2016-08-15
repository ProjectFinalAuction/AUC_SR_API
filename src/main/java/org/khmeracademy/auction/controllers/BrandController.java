package org.khmeracademy.auction.controllers;



import java.util.Map;

import org.khmeracademy.auction.entities.input.AddBrand;
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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/rest/brand")
public class BrandController {
	
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;

	

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<Map<String,Object>> findAllBrands(){
		HttpEntity<Object> request= new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/find-all-brands", HttpMethod.GET , request , Map.class) ;
	return new ResponseEntity<Map<String,Object>>(response.getBody(), HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> addBrand(@RequestBody AddBrand addBrand){
		HttpEntity<Object> request = new HttpEntity<Object>(addBrand,header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/add-brand", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/{brand_id}",method = RequestMethod.DELETE)
	public ResponseEntity<Map<String,Object>> deleteBrand(@PathVariable int brand_id){
		HttpEntity<Object> request= new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/delete-brand/"+brand_id, HttpMethod.DELETE , request , Map.class) ;
	return new ResponseEntity<Map<String,Object>>(response.getBody(), HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.PUT)
	public ResponseEntity<Map<String , Object>> updateBrand(@RequestBody AddBrand updateBrand){
		HttpEntity<Object> request = new HttpEntity<Object>(updateBrand,header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/update-brand", HttpMethod.PUT , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
}
