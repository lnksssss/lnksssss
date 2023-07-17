package diex02;

public class A {
	private B b;
	private String str;
	
	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public A() {}
	
	public A(B b) {
		this.b = b;
	}
	
	public B getB() {
		return b;
	}

	public void setB(B b) {
		this.b = b;
	}
	
	
	public void info() {
		System.out.println("------------A°´Ã¼ info()--------------");
		System.out.println(b.bfield1);
	}
}
