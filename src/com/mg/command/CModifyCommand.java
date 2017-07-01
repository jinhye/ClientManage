package com.mg.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mg.dao.CDao;

public class CModifyCommand implements CCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cId = request.getParameter("cId");
		String cGender = request.getParameter("cGender");
		String cAddress = request.getParameter("cAddress");
		String cCity = request.getParameter("cCity");
		String cProvince = request.getParameter("cProvince");
		String cPostal = request.getParameter("cPostal");
		String cPhone = request.getParameter("cPhone");
		String cEmail = request.getParameter("cEmail");
		
		CDao dao = new CDao();
		dao.modify(cId, cGender, cAddress, cCity, cProvince, cPostal, cPhone, cEmail);
	}

}
