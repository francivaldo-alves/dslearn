package com.devsuperior.dslearnbds.services.exceptions;

public class ForbiddenExeption extends RuntimeException{


	private static final long serialVersionUID = 1L;

	public ForbiddenExeption(String msg) {
		super(msg);
	}

}
