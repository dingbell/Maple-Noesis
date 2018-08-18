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

public class DicTypeDeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("delete");

		String[] codes = req.getParameterValues("code");

		Connection conn = null;
		PreparedStatement ps = null;

		String sql = "delete from dictionary_type where code=?";

		try {
			conn = DBUtil.getConn();
			conn.setAutoCommit(false); // set manual-commit 
			ps = conn.prepareStatement(sql);
			
			for (String code : codes) {
				ps.setString(1, code);
				ps.executeUpdate();
			}
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
