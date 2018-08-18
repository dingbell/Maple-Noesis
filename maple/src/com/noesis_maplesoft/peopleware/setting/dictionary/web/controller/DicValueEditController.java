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

import com.noesis_maplesoft.peopleware.setting.dictionary.domain.DictionaryValue;
import com.noesis_maplesoft.peopleware.util.DBUtil;

public class DicValueEditController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("edit");
		String id = req.getParameter("id");

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select dicValue,value,orderNo,typeCode from dictionary_type where id=?";
		
		DictionaryValue v = new DictionaryValue();
		try {
			conn = DBUtil.getConn();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				v.setId(id);
				v.setDicValue(rs.getString(1));
				v.setValue(rs.getString(2));
				v.setOrderNo(rs.getInt(3));
				v.setTypeCode(rs.getString(4));
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
		req.setAttribute("v", v);
		req.getRequestDispatcher("/settings/dictionary/value/edit.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
