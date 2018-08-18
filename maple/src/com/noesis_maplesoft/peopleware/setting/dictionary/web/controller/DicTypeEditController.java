package com.noesis_maplesoft.peopleware.setting.dictionary.web.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.noesis_maplesoft.peopleware.setting.dictionary.domain.DictionaryType;
import com.noesis_maplesoft.peopleware.util.DBUtil;

public class DicTypeEditController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("edit");
		req.setCharacterEncoding("UTF-8");
		String code = req.getParameter("code");

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select name,description from dictionary_type where code=?";
		
		DictionaryType t = new DictionaryType();
		try {
			conn = DBUtil.getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, code);
			rs = ps.executeQuery();
			if (rs.next()) {
				t.setCode(code);
				t.setName(rs.getString(1));
				t.setDescription(rs.getString(2));
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
		req.setAttribute("t", t);
		req.getRequestDispatcher("/settings/dictionary/type/edit.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
