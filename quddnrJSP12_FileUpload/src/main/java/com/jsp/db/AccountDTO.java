package com.jsp.db;

public class AccountDTO {
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_phone1;
	private String m_phone2;
	private String m_phone3;

	public AccountDTO(String m_id, String m_pw, String m_name, String m_phone1, String m_phone2, String m_phone3) {
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_phone1 = m_phone1;
		this.m_phone2 = m_phone2;
		this.m_phone3 = m_phone3;
	}
	// 게터 세터 설정

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

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_phone1() {
		return m_phone1;
	}

	public void setM_phone1(String m_phone1) {
		this.m_phone1 = m_phone1;
	}

	public String getM_phone2() {
		return m_phone2;
	}

	public void setM_phone2(String m_phone2) {
		this.m_phone2 = m_phone2;
	}

	public String getM_phone3() {
		return m_phone3;
	}

	public void setM_phone3(String m_phone3) {
		this.m_phone3 = m_phone3;
	}
	
}