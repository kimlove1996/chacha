package com.chacha.action;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.common.Constants;

public class BoardDownloadAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		System.out.println("경로 없음@");
		
		
		String filename = request.getParameter("file"); //파일을 받아서 
		System.out.println("파일이름:" + filename);
		
				
		
		String path = Constants.UPLOAD_PATH + filename; //경로(path)를 constants.upload_path로 찾아가서 받음
		//D:\\upload.???.png
		byte b[] = new byte[4096]; // 바이트 배열 생성
		
		
		
		//서버에 저장된 파일을 읽기위한 스트림 생성
		FileInputStream fis = new FileInputStream(path);
		
		// 파일의 종류(mimeType)
		String mimeType = request.getServletContext().getMimeType(path);
		
		if(mimeType == null) {
			mimeType = "application/octet-stream; charset=utf-8";
		}
		
		//파일 이름에 한글이 포함된 경우
		//new String(바이트배열, 변환할 인코딩)   8859_1=> 서유럽 언어로 변환하는 것.
		// header에 특수문자 사용 못함, 서유럽언어로 변환.
		filename = new String(filename.getBytes("utf-8"), "8859_1");
		
		//http headr
		response.setHeader("content-Disposition", "attachment;filename=" + filename);
		
		
		//http body
		//OutputStream 생성(서버에서 클라이언트에 쓰기)
		ServletOutputStream out = response.getOutputStream();		
				
		//실질적으로 파일을 다운로드 해주는 코드!
		//파일이 35,000 byte => 한번에 다운로드 불가능! 쪼개서 받게 됨.
		//마지막엔 -1로 보냄.
		
		int numRead;
		while(true){ //fis = fileinput
			numRead = fis.read(b,0, b.length); //b = byte배열(4096)   => 4096byte로 쪼개서 파일을 읽어오겠다는 의미.
			if(numRead == -1) break; // -1이 되면 빠져 나갑니다.
			out.write(b, 0, numRead);
			
		}

		// 파일 처리 관련 리소스 정리해주는 것들
		out.close();
		out.flush();
		fis.close();
		return null;
		
	}

}
