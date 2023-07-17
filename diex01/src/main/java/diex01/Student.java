package diex01;

public class Student {
	private String name;
	private String age;
	private School school;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public School getSchool() {
		return school;
	}
	public void setSchool(School school) {
		this.school = school;
	}
	
	public void info() {
		System.out.println("------student info() --------");
		System.out.println(name);
		System.out.println(age);
		System.out.println(school.name);
		System.out.println(school.addr);
		
	}
}
