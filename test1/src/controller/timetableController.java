package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.classDAO;
import model.classVO;

public class timetableController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<classVO> list=classDAO.getInstance().timetableinfo();
		request.setAttribute("timetable_list", list);
		return "timetable.jsp";
	}

}
