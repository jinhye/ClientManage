package com.mg.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mg.dao.CDao;

public class CDeleteCommand implements CCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cId = request.getParameter("cId");
		CDao dao = new CDao();
		dao.delete(cId);

	}

}
