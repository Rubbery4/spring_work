package com.example.aop.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import com.example.aop.util.MemberDto;


@Aspect
@Component
public class MemberAspect {

	@Around("execution(com.example.aop.util.MemberDto get*(..))")
	public Object test(ProceedingJoinPoint joinPoint) throws Throwable {
		
		// aspect 가 적용된 메소드를 수행하고 리턴되는 데이터 받아오기
		Object obj = joinPoint.proceed();
				
		//원래 type 으로 casting 해서 조사해 볼 수 있다.
		MemberDto dto = (MemberDto)obj;
		dto.setNum(1);
		dto.setName("김구라");
		dto.setAddr("노량진");
				
		//조사 후 아예 다른 값을 리턴해 줄수도 있다.
		return dto;
	}
}
