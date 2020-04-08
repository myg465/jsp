package com.javalec.ex;

public class Member {

	//이름,아이디,패스워드,패스워드확인,성별,주소
	public Member() {
		
	}
	
	
	private String m_name;
	private String m_id;
	private String m_pw;
	private String m_gender;
	private String m_address;
	
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_gender() {
		switch(m_gender) {
		case "man":
			m_gender="남자";
			break;
		case "woman":
			m_gender="여자";
			break;
		}
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public String getM_address() {
		switch(m_address) {
		case "seoul":
			m_address="서울";
			break;
		case "busan":
			m_address="부산";
			break;
		case "gyeongi":
			m_address="경기";
			break;
		case "incheon":
			m_address="인천";
			break;
		}
		return m_address;
	}
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}
	
	
}
