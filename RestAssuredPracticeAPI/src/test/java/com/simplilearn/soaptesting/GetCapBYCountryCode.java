package com.simplilearn.soaptesting;

import static org.hamcrest.CoreMatchers.notNullValue;

import org.testng.annotations.Test;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;

public class GetCapBYCountryCode {

	private static final String BASE_URL = "https://reqres.in/api";
	
	@Test(description = "Test Authentication with rest assured")
	public void testAuthenticationToken() { 
		// create user post data
		User user = new User("eve.holt@reqres.in" ,"pistol");
		
		RestAssured.given().baseUri(BASE_URL).when()
		.contentType(ContentType.JSON)
		.body(user)
		.log().uri()  // request logs
		.post("/register").then()
		.log().body()  // response logs
		.assertThat().statusCode(200).and()
		.assertThat().body ("id", notNullValue()).and()
		.assertThat().body ("token", notNullValue());
		
	}
}

class User {
	
	public String email;
	public String password;
	
	public User(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
}
