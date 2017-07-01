package com.mg.dto;

public class CDto {
	int cId;
	String cName;
	String cGender;
	String cAddress;
	String cCity;
	String cProvince;
	String cPostal;
	String cPhone;
	String cEmail;
	String cVin;
	
	public CDto(){}
	
	public CDto(int cId, String cName, String cGender, String cAddress, String cCity, String cProvince, String cPostal, String cPhone, String cEmail, String cVin){
		this.cId = cId;
		this.cName = cName;
		this.cGender = cGender;
		this.cAddress = cAddress;
		this.cCity = cCity;
		this.cProvince = cProvince;
		this.cPostal = cPostal;
		this.cPhone = cPhone;
		this.cEmail = cEmail;
		this.cVin = cVin;
			
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcGender() {
		return cGender;
	}

	public void setcGender(String cGender) {
		this.cGender = cGender;
	}

	public String getcAddress() {
		return cAddress;
	}

	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}

	public String getcCity() {
		return cCity;
	}

	public void setcCity(String cCity) {
		this.cCity = cCity;
	}

	public String getcProvince() {
		return cProvince;
	}

	public void setcProvince(String cProvince) {
		this.cProvince = cProvince;
	}

	public String getcPostal() {
		return cPostal;
	}

	public void setcPostal(String cPostal) {
		this.cPostal = cPostal;
	}

	public String getcPhone() {
		return cPhone;
	}

	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}

	public String getcEmail() {
		return cEmail;
	}

	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}

	public String getcVin() {
		return cVin;
	}

	public void setcVin(String cVin) {
		this.cVin = cVin;
	}
}
