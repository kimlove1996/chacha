package com.chacha.dto;

// 검색 기준 또는 분류 기준
public class CriteriaDTO {
	private int page;       //페이지 번호 (하단의 번호들 클릭)
	private int perPageNum; // 한페이지에 보여줄 게시글 수
	private String keyword;  
	private String flag;	
	private String code;
	
	public CriteriaDTO() {	//직접작성하였음.
		this.page = 1;
		this.perPageNum = 10;
	}

	public CriteriaDTO(int page, int perPageNum, String keyword) { //usingfield
		super();
		this.page = page;
		this.perPageNum = perPageNum;
		this.keyword = keyword;
	}
	
	
	public CriteriaDTO(int page, int perPageNum, String keyword, String flag, String code) {
		super();
		this.page = page;
		this.perPageNum = perPageNum;
		this.keyword = keyword;
		this.flag = flag;
		this.code = code;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		
		//page가 0보다 작거나 같으면 1page로 적용합니다.
		if(page <= 0) {
			this.page = 1;
			return;
		}
		//0보다 작지 않다면 현page변수에 받아온 page의 값을 넣습니다. 이렇게하면 DTO에는 현재 페이지 값이 들어있겠죠?
		this.page = page;
	}

	//method for MyBatis SQL Mapper: 조회 시작 row 취득하는 메서드
	public int getPageStart() {
		return (((this.page-1) * perPageNum) + 1);
	}
	
	
	
	//method for MyBatis SQL Mapper: 조회 마지막 row 취득하는 메서드
	public int getPerPageNum() {
		return this.page * perPageNum;
		//2페이지 x 10 = 20번 게시글까지 출력.
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
