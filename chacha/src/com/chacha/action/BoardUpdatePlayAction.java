package com.chacha.action;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.common.Constants;
import com.chacha.dao.BoardDAO;
import com.chacha.dto.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardList.bizpoll";
		
		//Multipart를 사용하기 위해서는
				//cos.jar라는 라이브러리가필요하다.
				
				//파일업로드 처리
				File uploadDir = new File(Constants.UPLOAD_PATH);
				if(!uploadDir.exists()) { //저장할 경로가 없다면
					uploadDir.mkdir();    // 디렉토리를 생성하세요~
				}
				
				//request를 확장시킨 MultipartRequest 생성
				//request는 전부 String 타입으로 받으나, 
				//파일은 String타입이 아니므로 전송이 불가.
				//즉 request를 향상시킨 MultipartRequest를 사용함.
				//MultipartRequest를 사용하면 전부 multi타입으로 변환되므로, 
				//파일뿐만 아니라 기존의 String 타입도 전부 multi타입으로 받아야 함.
				MultipartRequest multi = new MultipartRequest(request, 								//request
															  Constants.UPLOAD_PATH,				//파일 업로드 다렉토리 경로
															  Constants.MAX_UPLOAD,					//파일 업로드 최대 용량
															  "UTF-8"								//인코딩 타입
															  ,new DefaultFileRenamePolicy());	    //파일 이름 중복 정책
																										//=> 중복 이름이 들어올 경우 
																										//DefaultFileRenamePolicy쪽을 포맷팅하여
																										//???.png에 ???1.png 이런식으로 숫자를 추가해줌.
				
				
				String sbno = multi.getParameter("bno");
				String title = multi.getParameter("title");
				String content = multi.getParameter("content");
				String writer = multi.getParameter("writer");
				String postfile = multi.getParameter("post-file-name");
				String filename = " "; //(공백)
				int filesize = 0;
				String nowFileName = multi.getParameter("now-file-name");
				String nFileSize = multi.getParameter("now-file-size");
				
				// nowFileSize 숫자로 변환
				// 값이 없으면 0 부여, 값이 있으면 숫자로 변환.
				int nowFileSize = 0;
				if(!nFileSize.equals("")) {
					System.out.println("파일 사이즈 없음!");
					nowFileSize = Integer.parseInt(nFileSize);
				}
				
				//과거 filename과 filesize 불러오기
				BoardDAO bDao = BoardDAO.getInstance();
				BoardDTO bDto = bDao.boardDetailView(sbno);
				String pfilename = bDto.getFilename();
				int pfilesize = bDto.getFilesize();
				System.out.println("과거 첨부파일 : " + pfilename + ", " + pfilesize);
				System.out.println("현재 첨부파일 : " + nowFileName + ", " + nowFileSize);
				
				
				int flag = 0;
				if(nowFileName.equals(pfilename) && nowFileSize == 0) {
					//파일이름이 같으면서,
					//사이즈가 0이면
					//파일 지우지 않는다. filename과 filesize도 수정하면 안됨.
					flag = 1;
				}else {
					File file = new File(Constants.UPLOAD_PATH + filename);
					file.delete();
				}
				
				try {
					Enumeration files = multi.getFileNames(); // 파일을 다중으로 보낼 수도 있기 떄문에 files(배열)로 넣어준다.
					
					while(files.hasMoreElements()) { // files(배열)에서 요소가 있으면 true로 읽겠다.
						String file1 = (String)files.nextElement(); // nextElement = 있는지 확인하는 element
						System.out.println("file1:" + file1);
						filename = multi.getFilesystemName(file1);//첨부파일의 파일이름을 가져온다. 
									//getFilesystemName = 파일을 가지고 오돼 (중복정책이 부여된 기능의 이름을 가져옴.)
									//getOriginalFileName = 일반 오리지널 파일의 명
						System.out.println("저장된 첨부파일 : " + filename);
						if(nowFileSize != 0) {//파일사이즈가 0이 아닌 경우(파일을 수정하여 등록하는 경우)
							String result = filename.substring(nowFileName.length());
							System.out.println("TEST : " + nowFileName + ", " + filename + ", " + result);
							
							if(result.length() > 0) { //파일명을 현재 파일명으로 수정!@
								File file = new File(Constants.UPLOAD_PATH + filename); //AAA1
								File fileNew = new File(Constants.UPLOAD_PATH + nowFileName); //AAA
								file.renameTo(fileNew); // => AAA
								
								
								//AAA1 -> AAA
								//DB에 넣을 정보.
								filename = nowFileName;
								filesize = nowFileSize;
							}
						}
						
						File f1 = multi.getFile(file1);	//첨부파일의 파일
						if(f1 != null) { //AAA1
							filesize = nowFileSize;
						}
						
					}
					
					
				} catch (Exception e) {
				}
				
				
				
				
				System.out.println(sbno + ", " + title + " ," +  content + ", " + writer + ", 현 파일명: " +postfile);		
				
				
				//파일 삭제하기
		/*		if(postfile==postfile && postfile.length()==postfile.length()) {
					System.out.println("같은 파일이시네요@");
				}else {
					System.out.println("다른 파일이시네요!");
					File file = new File(Constants.UPLOAD_PATH + postfile);
					file.delete();
				}*/
				//파일이름과 수정 이름이 같을 경우 현 파일을 삭제하지 않고 SQL문을 수정하여
				// filename과 filesize를 제외한 나머지를 update 하도록 작성하면 된다.
				
				
				
				
				//수정
				// 1. 기존의 첨부파일 무조건 삭제하고 다음부터 시작.
				
				
		/*		System.out.println("제목 = "+ title);
				System.out.println("내용 = "+ content);
				System.out.println("작성자 = "+ writer);*/
				
				/*System.out.println(title);*/
				
				try {	//입출력은 필수적으로 트라이캐치를 해줍니다.
					Enumeration files = multi.getFileNames(); //Enumeration = 배열 객체
					System.out.println(files);
					while(files.hasMoreElements()) {
						String file1 = (String)files.nextElement(); //file1 = 첫번째 첨부파일
						System.out.println(file1);
						filename = multi.getFilesystemName(file1);	// 첫번째 첨부파일의 파일이름을 가져오고
						System.out.println(filename);
						File f1 = multi.getFile(file1);				// 첫번째 첨부파일의 파일을 가져옴
						System.out.println(f1);
						
						if(f1 != null) {
							filesize = (int)f1.length(); //첨부파일의 파일사이즈 저장
							System.out.println(filesize);
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				if(filename == null || filename.trim().equals("")) {//파일이름이 없을 경우
					filename = "-";									//파일네임에 "-"를 넣어주세요.
				}
				
				if(flag == 1) {
					filename = "no";
				}
				
				
				
				bDao = BoardDAO.getInstance();
				// dto 가방을 dao의 boardInsert로 보내줌.
				
				int bno = Integer.parseInt(sbno);
				
				bDto = new BoardDTO(bno, title, content, writer, filename, filesize);
				
				
				System.out.println("바꾼 파일사이즈 :" + bDto.getFilesize() + "바꾼 파일 명 : " +bDto.getFilename());
				
				
				
				
				
				
				
				
				int result = bDao.boardUpdate(bDto);
				System.out.println("리절트 값 :" + result);
				
				
				
				if(result > 0) { //등록 성공
					url = "boardList.bizpoll";
					System.out.println("등록성공");
				}else { //등록실패
					url = "boardList.bizpoll";
					System.out.println("등록실패");
				}
				
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);	
		
		return forward;
	}

}
