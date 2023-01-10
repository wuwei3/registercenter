package com.orange.register.center.registerCenter;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class RegisterCenterApplication {

	public static void main(String[] args) {
		new SpringApplicationBuilder(RegisterCenterApplication.class).web(true).run(args);
	}
}
