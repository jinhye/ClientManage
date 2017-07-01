package com.mg.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mg.dao.CDao;

public class CInsertCommand implements CCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cName = request.getParameter("cName");
		String cGender = request.getParameter("cGender");
		String cAddress = request.getParameter("cAddress");
		String cCity = request.getParameter("cCity");
		String cProvince = request.getParameter("cProvince");
		String cPostal = request.getParameter("cPostal");
		String cPhone = request.getParameter("cPhone");
		String cEmail = request.getParameter("cEmail");		
		String cVin = request.getParameter("cVin");
		
		CDao dao = new CDao();
		dao.insert(cName, cGender, cAddress, cCity, cProvince, cPostal, cPhone, cEmail, cVin);

	}

}
