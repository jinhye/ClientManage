package com.mg.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mg.dao.CDao;
import com.mg.dto.CDto;

public class CViewRequestCommand implements CCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cName = request.getParameter("cName");
		String cGender = request.getParameter("cGender");
		String cCity = request.getParameter("cCity");
		String cProvince = request.getParameter("cProvince");
		String cPostal = request.getParameter("cPostal");
		String cVin = request.getParameter("cVin");
		
		
		CDao dao = new CDao();
		ArrayList<CDto> dto = dao.view(cName, cGender, cCity, cProvince, cPostal, cVin);
		request.setAttribute("list", dto);
	}

}
