package diex03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component // new A();
public class A {
	
	private B b;
	private String str;
	
	public A() {}
	
	/*
	 * public A(B b) { this.b = b; }
	 */

	
	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public B getB() {
		return b;
	}

	@Autowired
	@Qualifier("b1")
	public void setB(B b) {
		this.b = b;
	}
	
	
	public void info() {
		System.out.println("-------A°´Ã¼ info()------");
		System.out.println(b.bfield1);
	}
}
