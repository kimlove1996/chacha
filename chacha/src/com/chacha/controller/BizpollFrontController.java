package com.chacha.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.action.Action;
import com.chacha.action.ActionForward;
import com.chacha.action.BoardDeletePlayAction;
import com.chacha.action.ConstracAction;
import com.chacha.action.IndexAction;
import com.chacha.action.LoginOutPlayAction;
import com.chacha.action.LoginPlayAction;
import com.chacha.action.MemberPlayAction;
import com.chacha.action.MemberUpdateAction;
import com.chacha.action.MemberUpdatePlayAction;
import com.chacha.action.MemberUpdatepwPlayAction;
import com.chacha.action.PwCheckAction;
import com.chacha.action.ReplyDeletePlayAction;
import com.chacha.action.ReplyInsertPlayAction;
import com.chacha.action.TunningAction;
import com.chacha.action.BoardDetailAction;
import com.chacha.action.BoardDownloadAction;
import com.chacha.action.BoardListAction;
import com.chacha.action.BoardSearchAction;
import com.chacha.action.BoardUpdateAction;
import com.chacha.action.BoardUpdatePlayAction;
import com.chacha.action.BoardViewcntAction;
import com.chacha.action.CommentListAction;
import com.chacha.action.BoardInsertAction;
import com.chacha.action.BoardInsertPlayAction;
import com.chacha.action.DetailProductAction;
import com.chacha.action.idCheckAction;
import com.chacha.action.MemberDeleteAction;
import com.chacha.action.MemberDeletePlayAction;
import com.chacha.action.MemberAction;

/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BizpollFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET, POST 둘 다 받음.
		
		// 한글깨짐 방지(POST 방식) : 가장 위에 적어야된다.
		request.setCharacterEncoding("UTF-8");
		
		Action action = null;	// 실제 동작하는 부분. 안보이지만 엄청 많은 동작하는 것들이 만들어진다. 이것을 인터페이스로 만들고 구현화 할것이다.
		ActionForward forward = null;	// forward인지 sendRedirect인지를 설정하는 부분.
		
		//uri = /chacha.index.bizpoll
		//ctx = /chacha
		//command = /index.bizpoll
		// uri - ctx = 내가 원하는 Action경로
		String uri = request.getRequestURI(); // url를 주세요~
		String ctx = request.getContextPath(); // context를 주세요~
		String command = uri.substring(ctx.length()); // /index.bizpoll 
		
		System.out.println("uri" + uri);
		System.out.println("ctx" + ctx);
		System.out.println("페이지 이동 ====>" + command);
		
		//Action단 이동
		if(command.equals("/index.bizpoll")) {
			
			action = new IndexAction();//객체 생성
			// 만약 빨간불이 들어오는 이유는 IndexAction이 동작할 클래스를 생성하지 않았기 때문. => 생성 후 f2로 add뭐시기(오버라이드)
			
			forward = action.excute(request, response); // 객체(인스턴스)사용
			// web에서는 무조건 request, response를 매개변수로 받아야 함.
		}else if(command.equals("/chacha_constract.bizpoll")) {
			action = new ConstracAction();
			forward = action.excute(request, response);
		}else if(command.equals("/member.bizpoll")) {
			action = new MemberAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberplay.bizpoll")) {
			//이동
			action = new MemberPlayAction(); // 객체 생성
			forward = action.excute(request, response); // action 클래스 안에 있는 excute에 타서 requset, response로 보냅니다~(!!! 무조건 따라가는 아이들임.)
		}else if(command.equals("/welcom.bizpoll")) {
			action = new MemberPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/LoginPlay.bizpoll")) {
			action = new LoginPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/loginOut.bizpoll")) {
			action = new LoginOutPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberUpdate.bizpoll")) {
			action = new MemberUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberupdateplay.bizpoll")) {
			action = new MemberUpdatePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/idCheck.bizpoll")) {
			action = new idCheckAction();
			forward = action.excute(request, response);
		}else if(command.equals("/pwCheck.bizpoll")) {
			action = new PwCheckAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberpwupdateplay.bizpoll")) {
			action = new MemberUpdatepwPlayAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/memberdelete.bizpoll")) {
			action = new MemberDeleteAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/memberdeleteplay.bizpoll")) {
			action = new MemberDeletePlayAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
			
			
		}else if(command.equals("/boardList.bizpoll")) {
			action = new BoardListAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/detailProduct.bizpoll")) {
			action = new DetailProductAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/boardSearch.bizpoll")) {
			System.out.println("안녕");
			action = new BoardSearchAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/board_detail.bizpoll")) {
			System.out.println("");
			action = new BoardDetailAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/boardViewcnt.bizpoll")) {
			System.out.println("");
			action = new BoardViewcntAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		} else if(command.equals("/boardInsert.bizpoll")) {
			System.out.println("?????????????");
			action = new BoardInsertAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/boardInsertPlay.bizpoll")) {
			System.out.println("글등록하기 버튼 눌렀어요~");
			action = new BoardInsertPlayAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/download.bizpoll")) {
			System.out.println("다운로드~");
			action = new BoardDownloadAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/boardUpdate.bizpoll")) {
			System.out.println("수정하려고 눌렀어요~~");
			action = new BoardUpdateAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/boardUpdatePlay.bizpoll")) {
			System.out.println("수정을 끝내려고 버튼을 눌렀어요~~");
			action = new BoardUpdatePlayAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/boardDeletePlay.bizpoll")) {
			System.out.println("게시물 삭제시  예 버튼을 눌렀어요!");
			action = new BoardDeletePlayAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/commentlist.bizpoll")) {
			System.out.println("댓글 부위를 따로 나눈 곳으로 이동할게요!~");
			action = new CommentListAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/replyDelet.bizpoll")) {
			System.out.println("댓글을 지우러 왔어요!");
			action = new ReplyDeletePlayAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/replyInsert.bizpoll")) {
			System.out.println("댓글 등록하려고 해요!!");
			action = new ReplyInsertPlayAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}else if(command.equals("/tunning.bizpoll")) {
			action = new TunningAction();//객체 생성		
			forward = action.excute(request, response); // 객체(인스턴스)사용
		}
		
	
		
		
		
		
		
		//같은 코맨드를 찾아서 집어넣었으니, 공통 분기작업을 해야겠지요?
		
		
		
		
		
		// 공통 분기작업(페이지 이동)
		if(forward != null) {
			if(forward.isRedirect()) { // sendRedirect 방식 //true값이 들어있는 것으로 값이 있는것이다.
				response.sendRedirect(forward.getPath()); //센드리다이렉트방식으로 보내는데, forward클래스에서 getpath클래스를 호출합니다.
			}else{	//false:forward방식
				// 목적지 : index.jsp
				// 짐 : bestlist
				// 이동수단 : forward
				
				//아래 두줄은 forward문을 작성하기 위해 필요한 두줄로 설명은 어렵다.
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());//index.jsp가 들어있다.
				rd.forward(request,response);
			}
		}
		
		
		
		
	}

}
