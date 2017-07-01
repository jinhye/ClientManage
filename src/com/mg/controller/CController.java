package com.mg.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mg.command.CCommand;
import com.mg.command.CDeleteCommand;
import com.mg.command.CInsertCommand;
import com.mg.command.CListCommand;
import com.mg.command.CModifyCommand;
import com.mg.command.CViewRequestCommand;

/**
 * Servlet implementation class CController
 */
@WebServlet("*.do")
public class CController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response){
		String viewPage = null;
		CCommand command = null;
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/")+1);
		
		
		
		if(com.equals("main.do")){
			viewPage = "main.jsp";
		}else if(com.equals("list.do")){
			command = new CListCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
		}else if(com.equals("view_request.do")){
			command = new CViewRequestCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
		}else if(com.equals("insert_request.do")){
			command = new CInsertCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}else if(com.equals("delete_request.do")){
			command = new CDeleteCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}else if(com.equals("modify_request.do")){
			command = new CModifyCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}
		
		
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
