package com.chacha.dto;

public class PageMakerDTO {
	private int totalCount; 		//15 전체 데이터 개수
	private int startPage;			//1 시작 페이지 번호
	private int endPage;			// 끝 페이지 번호
	private boolean prev;			// 이전 페이지
	private boolean next;			// 이후 페이지
	private int displayPageNum = 10;//화면에 보여지는 블럭 수

	private CriteriaDTO criDto;//page(1), pagestart(10),
/*	private int totalCount; 		//15 전체 데이터 개수
	private int startPage;			//1 시작 페이지 번호
	private int endPage;			// 끝 페이지 번호
	private boolean prev;			// 이전 페이지
	private boolean next;			// 이후 페이지
	private int displayPageNum = 10;//화면에 보여지는 블럭 수
*/	//이 들어있음.
	
	
	
	
	
	
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount; // 게시물의 개수를 집어넣고,
		
		calcData(); // 컬큘레이터 데이터를 실행. 아래 참고.
	}
	
	private void calcData() {
		// Math 클래스의 ceil 메서드는 무조건 소수점을 올림함 0.2 = 1로 처리
		endPage = (int)Math.ceil(criDto.getPage() / (double)displayPageNum) * displayPageNum;
									// endPage= 2 / 10  = 0.2 => 1 * 10       = 10
		startPage = (endPage - displayPageNum) + 1;
						
		
		int tempEndPage = (int)(Math.ceil(totalCount / (double)(criDto.getPerPageNum() / criDto.getPage())));
											// 게시물 수(284) / 페이지블럭(20) / 현 페이지(2)      ! /는 나누기임.
			// 29
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
			
		}
				
		prev = startPage == 1? false : true; //삼항연산자 맞으면 false, 틀리면 true       100>=284라면, => 트루
		next = (endPage * (criDto.getPerPageNum()/criDto.getPage())) >= totalCount ? false : true;
					//fasle(next) = 2*(10/1) >= 15 ? false : true;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public CriteriaDTO getCriDto() {
		return criDto;
	}

	public void setCriDto(CriteriaDTO criDto) {
		this.criDto = criDto;
	}

	@Override
	public String toString() {
		return "PageMakerDTO [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", criDto=" + criDto
				+ "]";
	}
	
	
	
	
	
	
	
	
	
	
}
