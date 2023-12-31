package com.dockerjava;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class ExpiredSchedular {
	
	private static final Logger logger = LoggerFactory.getLogger(ExpiredSchedular.class);
	
	@Scheduled(initialDelay = 10000, fixedDelay = 300000)
	public void markExpired() {
		logger.info("Welcome to my channel: {}", new Date());
	}
}
