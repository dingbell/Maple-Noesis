package com.noesis_maplesoft.peopleware.setting.dictionary.web.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.noesis_maplesoft.peopleware.setting.dictionary.domain.DictionaryType;
import com.noesis_maplesoft.peopleware.util.DBUtil;

public class DicValueCreateController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		System.out.println("create");
		String sql = "select code,name from dictionary_type";
		List<DictionaryType> tList = new ArrayList<DictionaryType>();
		try {
			conn = DBUtil.getConn();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				DictionaryType t = new DictionaryType();
				t.setCode(rs.getString(1));
				t.setName(rs.getString(2));
				tList.add(t);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				DBUtil.closeSQL(conn, ps, rs);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("success");
		req.setAttribute("tList", tList);
		// forward use
		req.getRequestDispatcher("/settings/dictionary/value/create.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
