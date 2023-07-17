package diex02;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ApplicationContext {
	@Bean
	public B b1() {
		return new B();
	} // < bean id = "b1" class="diex02.B"/>
		
	@Bean
	public B b2() {
		return new B();
	}// < bean id = "b2" class="diex02.B"/>
	
	
	// a1이라는 이름의 bean을 등록해 주세요 이때 a1에는 b1이 setter 주입 됩니다.
	
	@Bean
	public A a1() {
		A a = new A();
		a.setB(b1());  //setter 주입
				
		return a;
	}// < bean id ="a1" class="diaex02.A"/>
	
	//a2라는 이름의 A 타입 bean을 등록해주세요 이때 a2에는 생성자로 b2를 주입합니다.
	
	@Bean
	public A a2() {
		A a = new A();
		return new A(b2());
	} //<bean id ="a2" class="diaex02.A"/>
}
