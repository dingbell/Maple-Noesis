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

public class DicTypeCreateController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("enter");
		req.setCharacterEncoding("UTF-8");
		String code = req.getParameter("code");
		String name = req.getParameter("name");
		String description = req.getParameter("description");

		String sql = "insert into dictionary_type(code,name,description) values(?,?,?)";

		Connection conn = null;
		PreparedStatement ps = null;

		try {
			conn = DBUtil.getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, code);
			ps.setString(2, name);
			ps.setString(3, description);
			System.out.println(sql);

			int count = ps.executeUpdate();
			System.out.println("affected number of line: " + count);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				DBUtil.closeSQL(conn, ps, null);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		// Redirect after modification of database : absolute path
		resp.sendRedirect(req.getContextPath() + "/settings/dictionary/type/list.do");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
