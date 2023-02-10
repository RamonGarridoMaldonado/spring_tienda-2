package com.llvillar.springboot.app1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class App1Application {

	public static void main(String[] args) {

		System.out.println("Iniciando aplicacion........");

		SpringApplication.run(App1Application.class, args);
		System.out.println("App1 iniciada");
	}

}
