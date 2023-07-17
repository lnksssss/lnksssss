package diex01;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		// A객체 생성시 B 객체를 주입하여 A.info() 메소드를 호출하세요
	
		A a = new A();
		// B b = new B();
		// a.setB(b);
		a.setB(new B()); // 의존 주입이 발생한다 (setter 주입)
		a.info();
		
		//student 객체 생성 후 school 객체 주입하여 
		//student의 info 메소드 호출
		//이때 학생명 : 홍길동 , 나이 : 20세
		
		Student student = new Student();
		School school = new School();
		
		student.setSchool(school); // setter 주입
		
		student.setName("홍길동");
		student.setAge("20세");
		student.info();
		
		
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationcontext.xml");
		
		A a1 = ctx.getBean("a1",A.class);
		a1.info();
		
		A a2 = ctx.getBean("a2",A.class);
		a2.info();
		System.out.println();
		
		// 위 student 예제를 ioc 컨테이너를 활용하여 똑같은 결과가 나올 수 있도록 작성하세요
		
		Student student1 = ctx.getBean("sudent",Student.class);
		student1.info();
		
		
	}

}
