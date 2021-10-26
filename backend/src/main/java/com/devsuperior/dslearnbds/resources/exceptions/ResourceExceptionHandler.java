package com.devsuperior.dslearnbds.resources.exceptions;


import com.devsuperior.dslearnbds.services.exceptions.DatabaseExeption;
import com.devsuperior.dslearnbds.services.exceptions.ForbiddenExeption;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;
import com.devsuperior.dslearnbds.services.exceptions.UnauthorizedExeption;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;
import java.time.Instant;

@ControllerAdvice
public class ResourceExceptionHandler {

	@ExceptionHandler(ResourceNotFoundException.class)
	public ResponseEntity<StanderdError> entityNotFound(ResourceNotFoundException e, HttpServletRequest request) {

		HttpStatus status = HttpStatus.NOT_FOUND;
		StanderdError err = new StanderdError();
		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("Recurso não encontrado");
		err.setMessage(e.getMessage());
		err.setPath(request.getRequestURI());
		return ResponseEntity.status(status).body(err);

	}

	@ExceptionHandler(DatabaseExeption.class)
	public ResponseEntity<StanderdError> database(DatabaseExeption e, HttpServletRequest request) {

		HttpStatus status = HttpStatus.BAD_REQUEST;
		StanderdError err = new StanderdError();
		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("Exceção de banco de dados");
		err.setMessage(e.getMessage());
		err.setPath(request.getRequestURI());
		return ResponseEntity.status(status).body(err);
	}

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<ValidationError> validation(MethodArgumentNotValidException e, HttpServletRequest request) {

		HttpStatus status = HttpStatus.UNPROCESSABLE_ENTITY;
		ValidationError err = new ValidationError();
		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("Exceção na validação");
		err.setMessage(e.getMessage());
		err.setPath(request.getRequestURI());
		for (FieldError f : e.getBindingResult().getFieldErrors()) {
			err.addError(f.getField(), f.getDefaultMessage());
		}

		return ResponseEntity.status(status).body(err);
	}


	@ExceptionHandler(ForbiddenExeption.class)
	public ResponseEntity<OAuthCustomError> forbidden(ForbiddenExeption e, HttpServletRequest request) {
		OAuthCustomError err = new OAuthCustomError("Forbidden",e.getMessage());

		return ResponseEntity.status(HttpStatus.FORBIDDEN).body(err);

	}

	@ExceptionHandler(UnauthorizedExeption.class)
	public ResponseEntity<OAuthCustomError> unauthorized(UnauthorizedExeption e, HttpServletRequest request) {
		OAuthCustomError err = new OAuthCustomError("unauthorized",e.getMessage());

		return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(err);

	}

}
