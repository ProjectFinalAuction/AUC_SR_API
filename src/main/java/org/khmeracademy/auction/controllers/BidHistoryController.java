package org.khmeracademy.auction.controllers;

import java.util.Date;
import java.util.Map;

import org.khmeracademy.auction.entities.User;
import org.khmeracademy.auction.entities.input.AddBid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/rest/bidhistory")
public class BidHistoryController {
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;
	
	/*@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> findAllBid(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/find-all-categories", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	*/
	
	
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addNewBidHistory(@RequestBody AddBid addBid, @AuthenticationPrincipal User user){
		
		System.out.println(user.getUser_id());
		addBid.setUser_id(user.getUser_id());
		//addBid.setBid_date(new Date());
		HttpEntity<AddBid> request = new HttpEntity<AddBid>(addBid, header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/add-bid-history", HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String, Object>>(response.getBody(), response.getStatusCode());
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> findAllBidHistory(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/find-all-bid-history", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	//TODO: GET TOTAL BID
	@RequestMapping(value="/total-bid-price", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> findTotalBidCurrentPrice(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/find-total-bid-price", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	// Get Bid History By User_Id
	@RequestMapping(value="/{user_id}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> findBidByUserId(@PathVariable int user_id){
		
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/find_number_bid_by_user_id_for_each_auction_in_details/" + user_id, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}	
}
