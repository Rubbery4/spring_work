package com.example.hello;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
/*
 * 	어떤 객체를 spring 이 생성해서 관리 할지 설정(bean 설정)
 * 
 * 	xml 문서로 설정하면 bean 설정을 class 기반으로 한다
 */

@Configuration
public class JavaConfig {
	/*
	 * 	이 메소드에서 리턴되는 객체를 spirng 이 관리하는 bean 이 되도록 한다.
	 * 	아래의 메소드는 xml 문서에서 <bean id="myCar" class="com.example.demo.Car" /> 와 같다
	 * 
	 */
	@Bean
	public Car myCar() {
		System.out.println("myCar() 메소드 호출됨");
		Car c1 = new Car();
		return c1;
	}
}
