package diex03;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		AbstractApplicationContext ctx 
			= new GenericXmlApplicationContext("classpath:applicationContext.xml");
		
		B b = ctx.getBean("b",B.class);
		System.out.println(b.bfield1);
		
		A a = ctx.getBean("a",A.class);
		
		System.out.println(a);
		a.info();
	}

}
