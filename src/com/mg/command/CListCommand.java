package com.mg.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mg.dao.CDao;
import com.mg.dto.CDto;

public class CListCommand implements CCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		CDao dao = new CDao();
		ArrayList<CDto> dto = dao.list();
		request.setAttribute("list", dto);
	}

}
