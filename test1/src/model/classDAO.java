package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class classDAO {
	private static classDAO instance=new classDAO();
	private classDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		
		return DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:32771:xe", "system", "oracle");
	}
	
	public void closeAll(PreparedStatement pstmt, Connection con) throws SQLException {
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();
	}

	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException {
		if (rs != null)
			rs.close();
		closeAll(pstmt, con);
	}
	
	public static classDAO getInstance() {
		return instance;
	}

	public ArrayList<classVO> timetableinfo() throws java.lang.ClassNotFoundException, SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		ArrayList<classVO> list=new ArrayList<classVO>();
		
		try {
			con=getConnection();
			String sql="select *from class";
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				list.add(new classVO(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getInt(4),rs.getString(5)));
			}
		}finally {
			closeAll(rs, ps, con);
		}
		return list;
	}


	
}
