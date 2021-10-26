package com.devsuperior.dslearnbds.services.exceptions;

public class UnauthorizedExeption extends RuntimeException{


	private static final long serialVersionUID = 1L;

	public UnauthorizedExeption(String msg) {
		super(msg);
	}

}
