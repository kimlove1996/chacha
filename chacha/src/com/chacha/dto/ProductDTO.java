package com.chacha.dto;

import java.sql.Date;

public class ProductDTO {
	private String p_code;
	private String p_name;
	private String p_ex;
	private int p_price;
	private int p_likecnt;
	private String p_review;
	private String p_img;
	private String p_size1;
	private String p_size2;
	private String p_size3;
	private String p_size4;
	private String p_color1;
	private String p_color2;
	private String p_color3;
	private int p_amount;
	private Date p_indate;
	
	public ProductDTO() {
		super();
	}

	public ProductDTO(String p_code, String p_name, String p_ex, int p_price, int p_likecnt, String p_review,
			String p_img, String p_size1, String p_size2, String p_size3, String p_size4, String p_color1,
			String p_color2, String p_color3, int p_amount, Date p_indate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_ex = p_ex;
		this.p_price = p_price;
		this.p_likecnt = p_likecnt;
		this.p_review = p_review;
		this.p_img = p_img;
		this.p_size1 = p_size1;
		this.p_size2 = p_size2;
		this.p_size3 = p_size3;
		this.p_size4 = p_size4;
		this.p_color1 = p_color1;
		this.p_color2 = p_color2;
		this.p_color3 = p_color3;
		this.p_amount = p_amount;
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

	public int getP_likecnt() {
		return p_likecnt;
	}

	public void setP_likecnt(int p_likecnt) {
		this.p_likecnt = p_likecnt;
	}

	public String getP_review() {
		return p_review;
	}

	public void setP_review(String p_review) {
		this.p_review = p_review;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_size1() {
		return p_size1;
	}

	public void setP_size1(String p_size1) {
		this.p_size1 = p_size1;
	}

	public String getP_size2() {
		return p_size2;
	}

	public void setP_size2(String p_size2) {
		this.p_size2 = p_size2;
	}

	public String getP_size3() {
		return p_size3;
	}

	public void setP_size3(String p_size3) {
		this.p_size3 = p_size3;
	}

	public String getP_size4() {
		return p_size4;
	}

	public void setP_size4(String p_size4) {
		this.p_size4 = p_size4;
	}

	public String getP_color1() {
		return p_color1;
	}

	public void setP_color1(String p_color1) {
		this.p_color1 = p_color1;
	}

	public String getP_color2() {
		return p_color2;
	}

	public void setP_color2(String p_color2) {
		this.p_color2 = p_color2;
	}

	public String getP_color3() {
		return p_color3;
	}

	public void setP_color3(String p_color3) {
		this.p_color3 = p_color3;
	}

	public int getP_amount() {
		return p_amount;
	}

	public void setP_amount(int p_amount) {
		this.p_amount = p_amount;
	}

	public Date getP_indate() {
		return p_indate;
	}

	public void setP_indate(Date p_indate) {
		this.p_indate = p_indate;
	}

	@Override
	public String toString() {
		return "ProductDTO [p_code=" + p_code + ", p_name=" + p_name + ", p_ex=" + p_ex + ", p_price=" + p_price
				+ ", p_likecnt=" + p_likecnt + ", p_review=" + p_review + ", p_img=" + p_img + ", p_size1=" + p_size1
				+ ", p_size2=" + p_size2 + ", p_size3=" + p_size3 + ", p_size4=" + p_size4 + ", p_color1=" + p_color1
				+ ", p_color2=" + p_color2 + ", p_color3=" + p_color3 + ", p_amount=" + p_amount + ", p_indate="
				+ p_indate + "]";
	}

	
	
	
	
}
