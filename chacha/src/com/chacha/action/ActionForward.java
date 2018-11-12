package com.chacha.action;

public class ActionForward {

	// View Page(path = 결과값을 어디로 전송할지 결정하는 것.)
	private String path;	//"index.jsp"
	
	// 페이지 이동하는 방법(sendRedirect, Forward)을 결정한다.
	// true => sendRedirect or false => forward 로 하게 만들 것임.
	private boolean isRedirect; // false

	public String getPath() {
		return path;
	}

	public void setPath(String path) { //path = "index.jsp"
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) { // true
		this.isRedirect = isRedirect;
	}
	
	
}
