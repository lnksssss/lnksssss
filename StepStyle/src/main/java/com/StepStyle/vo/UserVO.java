package com.StepStyle.vo;

public class UserVO {
	private int uNo;
	private String uId ;
	private String uPw ;
	private String uName ;
	private String uNick;
	private String uMail ;
	private String uPhone ;
	private String uAdr ;
	private String uGrade ;
	
	/*
	 * private String uTerms ; 
	 * private String uDel ; 
	 * private String uNaver ; 
	 * private String uKakao ;
	 */
	
	
	
	
	
	
	public int getuNo() {
		return uNo;
	}
	public String getuNick() {
		return uNick;
	}
	public void setuNick(String uNick) {
		this.uNick = uNick;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getuPw() {
		return uPw;
	}
	public void setuPw(String uPw) {
		this.uPw = uPw;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuMail() {
		return uMail;
	}
	public void setuMail(String uMail) {
		this.uMail = uMail;
	}
	public String getuPhone() {
		return uPhone;
	}
	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}
	public String getuAdr() {
		return uAdr;
	}
	public void setuAdr(String uAdr) {
		this.uAdr = uAdr;
	}
	public String getuGrade() {
		return uGrade;
	}
	public void setuGrade(String uGrade) {
		this.uGrade = uGrade;
	}
	
	
	
	@Override
	public String toString() {
		return "UserVO [uNo=" + uNo + ", uId=" + uId + ", uPw=" + uPw + ", uName=" + uName + ", uNick=" + uNick
				+ ", uMail=" + uMail + ", uPhone=" + uPhone + ", uAdr=" + uAdr + ", uGrade=" + uGrade + "]";
	}
	
	
	
	
	
	
	
	

	
    
	
}
