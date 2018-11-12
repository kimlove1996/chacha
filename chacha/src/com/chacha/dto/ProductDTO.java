package com.chacha.dto;

import java.sql.Date;

public class ProductDTO {
	private String p_code;
	private String p_name;
	private String p_ex;
	private int p_price;
	private String p_img;
	private String p_review;
	private Date p_indate;
	
	public ProductDTO() {
		super();
	}

	public ProductDTO(String p_code, String p_name, String p_ex, int p_price, String p_img, String p_review,
			Date p_indate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_ex = p_ex;
		this.p_price = p_price;
		this.p_img = p_img;
		this.p_review = p_review;
		this.p_indate = p_indate;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_ex() {
		return p_ex;
	}

	public void setP_ex(String p_ex) {
		this.p_ex = p_ex;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_review() {
		return p_review;
	}

	public void setP_review(String p_review) {
		this.p_review = p_review;
	}

	public Date getP_indate() {
		return p_indate;
	}

	public void setP_indate(Date p_indate) {
		this.p_indate = p_indate;
	}

	
	
	

	
	
}
