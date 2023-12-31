package com.gura.spring02.guest.dto;

public class GuestDto {

	private int num;
	private String writer;
	private String content;
	private String pwd;
	private String regdate;
	
	public GuestDto() {}

	
	@Override
	public String toString() {
		return "GuestDto [num=" + num + ", writer=" + writer + ", content=" + content + ", pwd=" + pwd + ", regdate="
				+ regdate + "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
