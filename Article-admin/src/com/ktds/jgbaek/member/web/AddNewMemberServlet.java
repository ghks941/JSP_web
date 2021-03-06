package com.ktds.jgbaek.member.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ktds.jgbaek.member.biz.MemberBiz;
import com.ktds.jgbaek.member.vo.MemberVO;
import com.ktds.jgbaek.util.Root;

public class AddNewMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberBiz memberBiz;
  
    public AddNewMemberServlet() {
        super();
        memberBiz = new MemberBiz();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO memberVO = new MemberVO();
		memberVO.setMemberId(request.getParameter("memberId"));
		memberVO.setNickName(request.getParameter("nickName"));
		memberVO.setPassword(request.getParameter("password"));
		memberVO.setEmail(request.getParameter("email"));
		
		boolean isRegistSuccess = memberBiz.addNewMember(memberVO);
		
		response.sendRedirect(Root.get(this)+"/");
		
	}

}
