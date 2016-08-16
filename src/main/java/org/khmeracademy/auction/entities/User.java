package org.khmeracademy.auction.entities;

import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;
import java.util.List;

import javax.security.auth.login.AccountNotFoundException;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


public class User implements UserDetails, Serializable {
	
		/**
	 * 
	 */
		private static final long serialVersionUID = -939719754152981069L;
		private int user_id;
		private String user_name;
		private String first_name;
		private String last_name;
		private String gender;
		private Date dob;
		private String address;
		private String email;
		private String password;
		private String contact;
		private String photo;
		private String type;
		private boolean status;
		private String created_by;
		private Date created_date;
		private String comment;
		private List<Role> roles;
		
		public List<Role> getRoles() {
			return roles;
		}
		public void setRoles(List<Role> roles) {
			this.roles = roles;
		}
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public String getUser_name() {
			return user_name;
		}
		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}
		public String getFirst_name() {
			return first_name;
		}
		public void setFirst_name(String first_name) {
			this.first_name = first_name;
		}
		public String getLast_name() {
			return last_name;
		}
		public void setLast_name(String last_name) {
			this.last_name = last_name;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public Date getDob() {
			return dob;
		}
		public void setDob(Date dob) {
			this.dob = dob;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getContact() {
			return contact;
		}
		public void setContact(String contact) {
			this.contact = contact;
		}
		public String getPhoto() {
			return photo;
		}
		public void setPhoto(String photo) {
			this.photo = photo;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public boolean getStatus() {
			return status;
		}
		public void setStatus(boolean status) {
			this.status = status;
		}
		public String getCreated_by() {
			return created_by;
		}
		public void setCreated_by(String created_by) {
			this.created_by = created_by;
		}
		public Date getCreated_date() {
			return created_date;
		}
		public void setCreated_date(Date created_date) {
			this.created_date = created_date;
		}
		public String getComment() {
			return comment;
		}
		public void setComment(String comment) {
			this.comment = comment;
		}
		
		private boolean accountNonExpired = true;
		private boolean accountNonLocked = true;
	    private boolean credentialsNonExpired = true;
	    private boolean enabled = true;
	    
	    
		@Override
		public Collection<? extends GrantedAuthority> getAuthorities() {
			// TODO Auto-generated method stub
			return roles;
		}
		@Override
		public boolean isAccountNonExpired() {
			// TODO Auto-generated method stub
			return accountNonExpired;
		}
		@Override
		public boolean isAccountNonLocked() {
			// TODO Auto-generated method stub
			return accountNonLocked;
		}
		@Override
		public boolean isCredentialsNonExpired() {
			// TODO Auto-generated method stub
			return credentialsNonExpired;
		}
		@Override
		public boolean isEnabled() {
			// TODO Auto-generated method stub
			return enabled;
		}
		@Override
		public String getUsername() {
			// TODO Auto-generated method stub
			return user_name;
		}
		
}
