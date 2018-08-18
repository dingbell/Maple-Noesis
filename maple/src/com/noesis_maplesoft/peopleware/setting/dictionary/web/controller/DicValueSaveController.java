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
import com.noesis_maplesoft.peopleware.util.UUIDUtil;

public class DicValueSaveController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("save");
		req.setCharacterEncoding("UTF-8");
		String typeCode = req.getParameter("typeCode");
		String dicValue = req.getParameter("dicValue");
		String value = req.getParameter("value");
		String orderNo = req.getParameter("orderNo");

		String sql = "insert into dictionary_value(id,dicValue,value,orderNo,typeCode) values(?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement ps = null;

		try {
			conn = DBUtil.getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, UUIDUtil.getUUID());
			ps.setString(2, dicValue);
			ps.setString(3, value);
			ps.setInt(4, Integer.valueOf(orderNo));
			ps.setString(5, typeCode);
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
		resp.sendRedirect(req.getContextPath() + "/settings/dictionary/value/list.do");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
