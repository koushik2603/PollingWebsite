package com.klef.jfsd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.klef.jfsd")
public class PollingWebsiteApplication {

	public static void main(String[] args) {
		SpringApplication.run(PollingWebsiteApplication.class, args);
	}

}
