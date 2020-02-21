package com.tms.ssm.exception;

public class CustomException extends Exception{

	private static final long serialVersionUID = 1L;
	public String message;
	
	public CustomException(String message) {
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	
	
}
