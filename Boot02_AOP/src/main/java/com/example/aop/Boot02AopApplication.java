package com.example.aop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.example.aop.util.MemberDto;
import com.example.aop.util.MemberService;
import com.example.aop.util.Messenger;
import com.example.aop.util.WritingUtil;
/*
 * 	@SpringBootApplication 어노테이션이 붙어있는 main 메소드가 존재하는 이 패키지를 포함해서
 * 
 *	하위의 모든 패키지에 component scan 이 자동으로 일어난다.
 * 
 */
@SpringBootApplication
public class Boot02AopApplication {

	public static void main(String[] args) {
		ApplicationContext ctx =  SpringApplication.run(Boot02AopApplication.class, args);
		
		WritingUtil util = ctx.getBean(WritingUtil.class);
		util.writeLetter();
		util.writeReport();
		util.writeDiary();
		
		Messenger m1= ctx.getBean(Messenger.class);
		String msg = m1.getMessage();
		System.out.println("Messenger 객체로 부터 받은 메세지 :"+msg);
		
		m1.sendGreeting("안녕하세요");
		m1.sendGreeting("안녕안녕");
		m1.sendGreeting("또 만났군요");
		
		MemberService service = ctx.getBean(MemberService.class);
		MemberDto dto = service.getMember(1);
		System.out.println(dto.getNum()+"|"+dto.getName()+"|"+dto.getAddr());
	}

}
