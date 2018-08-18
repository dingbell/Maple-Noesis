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

import com.noesis_maplesoft.peopleware.setting.dictionary.domain.DictionaryValue;
import com.noesis_maplesoft.peopleware.util.DBUtil;

public class DicValueListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sql = "select id, dicValue, value, orderNo, typeCode from dictionary_value";

		List<DictionaryValue> vList = new ArrayList<DictionaryValue>();

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = DBUtil.getConn();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				DictionaryValue v = new DictionaryValue();
				v.setId(rs.getString(1));
				v.setDicValue(rs.getString(2));
				v.setValue(rs.getString(3));
				v.setOrderNo(rs.getInt(4));
				v.setTypeCode(rs.getString(5));
				vList.add(v);
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
		System.out.println("success1");
		req.setAttribute("vList", vList);
		// forward use
		req.getRequestDispatcher("/settings/dictionary/value/index.jsp").forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
