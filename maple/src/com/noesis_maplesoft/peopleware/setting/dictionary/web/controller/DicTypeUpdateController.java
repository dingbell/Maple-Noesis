package com.noesis_maplesoft.peopleware.setting.dictionary.web.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.noesis_maplesoft.peopleware.util.DBUtil;

public class DicTypeUpdateController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("update");
		req.setCharacterEncoding("UTF-8");
		String code = req.getParameter("code");
		String name = req.getParameter("name");
		String description = req.getParameter("description");

		Connection conn = null;
		PreparedStatement ps = null;

		String sql = "update dictionary_type set name=?,description=? where code=?";

		try {
			conn = DBUtil.getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, description);
			ps.setString(3, code);
			System.out.println(name);
			System.out.println(description);
			System.out.println(code);
			System.out.println(ps.executeUpdate());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				DBUtil.closeSQL(conn, ps, null);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		resp.sendRedirect(req.getContextPath() + "/settings/dictionary/type/list.do");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
