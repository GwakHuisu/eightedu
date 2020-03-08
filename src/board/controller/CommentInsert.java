package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import board.model.service.BoardService;
import board.model.vo.BoardComment;


/**
 * Servlet implementation class CommentInsert
 */
@WebServlet("/insertComment.bo")
public class CommentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 인코딩 필터 적용되어 있으므로 인코딩 생략
				int user_code = Integer.parseInt(request.getParameter("user_code"));
				int b_code = Integer.parseInt(request.getParameter("b_code"));
				String c_content = request.getParameter("c_content");
				System.out.println(user_code);
				
				BoardComment r = new BoardComment();
				r.setUser_code(user_code);
				r.setB_code(b_code);
				r.setC_content(c_content);
				System.out.println(r);
				
				ArrayList<BoardComment> rlist = new BoardService().insertReply(r);
				// 댓글 insert 후 갱신 된 댓글 리스트 리턴 받기
				
				// 댓글 리스트를 클라이언트에게 전송 -> Gson 이용해서 보내주기
				response.setContentType("appilication/json; charset=utf-8");
				
				// Gson으로 값을 보내게 되면 Date 형식이 바뀌어 출력되는 것을 확인할 수 있음
				// Gson 생성 시 Date 포맷을 바꿔서 생성해보자
				/*Gson gson = new Gson();*/
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				gson.toJson(rlist, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
