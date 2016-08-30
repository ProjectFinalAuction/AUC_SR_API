package org.khmeracademy.auction.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.khmeracademy.auction.entities.Role;
import org.khmeracademy.auction.entities.User;
import org.khmeracademy.auction.entities.input.UserLogin;
import org.khmeracademy.auction.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WS_URL;
	
	
	
	@Override
	public User getUserByName(String user_name) {
		
		UserLogin login = new UserLogin();
		login.setUser_name(user_name);
		
		HttpEntity<Object> request = new HttpEntity<Object>(login,header);
		ResponseEntity<Map> response = rest.exchange(WS_URL+"/get-user-by-name/" + user_name, HttpMethod.GET , request , Map.class) ;
		
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		System.out.println(map);
		if(map.get("DATA") != null){
			
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			User u = new User();
			u.setUser_id((Integer)data.get("user_id"));
			u.setEmail((String)data.get("email"));
			u.setUser_name((String)data.get("user_name"));
			u.setPassword((String) data.get("password"));
			
			
			List<Role> roles = new ArrayList<Role>();
			
			List<HashMap<String, Object>> dataRole = (List<HashMap<String, Object>>) data.get("roles");
			for (Map<String , Object> datas  : dataRole) {
				Role role = new Role();
				role.setRole_id((Integer)datas.get("role_id"));
				role.setRole_name((String) datas.get("role_name"));
				roles.add(role);
				
				System.out.println(role.getRole_id() + role.getRole_name());
				
			}
			System.out.println(dataRole);
			u.setRoles(roles);
			
			System.out.println(map);
			
			return u;
		}
		
		return null;
	}

}
