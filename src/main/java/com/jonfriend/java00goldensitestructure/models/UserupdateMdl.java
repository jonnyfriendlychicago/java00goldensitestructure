package com.jonfriend.java00goldensitestructure.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

public class UserupdateMdl {
    
    @NotEmpty(message="Email is required.")
    @Email(message="Please enter a valid email!")
    private String email;
    
    // jrf: think about how to maek this mdl: login with email OR userName
    
//    @NotEmpty(message="Password is required.")
//    // update size constraint to be greater than 1 (8?) when ready to move beyond testing.
//    @Size(min=1, max=128, message="Password must be between 8 and 128 characters")
//    private String password;
    
    private String firstName;
    
    private String lastName;
    
    private String userName;
    
    // instantiate the mdl class
    public UserupdateMdl() {}

    // begin GS
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}



    // end GS
    
    
    
}
