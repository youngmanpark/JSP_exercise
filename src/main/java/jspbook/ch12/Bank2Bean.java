package jspbook.ch12;

//클래스 import
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

/**
 * File : Bank2Bean.java
 * Desc : 트랜잭션 테스트를 위한 두번째 계좌 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
public class Bank2Bean {
	
	// 멤버 선언
	private int aid;
	private String aname;
	private int balance;

	// 데이터베이스 관련 객체 선언
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;

	// JNDI를 통한 연결
	public void connect() {

		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/mysql");
			conn = ds.getConnection();
		}

		catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
	}

	// connection 연결종료
	public void disconnect() {
		try {
			if (conn != null)
				conn.close();
		}
		catch (SQLException e) {
			System.out.println(e);
		}
		System.out.println("close");
	}

	// bank1 테이블 데이터 가져오는 메서드
	public void getData() {
		connect();
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from bank2");
			rs.next();
			aid = rs.getInt("aid");
			aname = rs.getString("aname");
			balance = rs.getInt("balance");
		}
		catch (Exception e) {
			System.out.println(aid + aname + balance);
			System.out.println(e);
		}
		finally {
			disconnect();
		}
	}

	// getXxx 메서드
	public int getAid() {
		return aid;
	}

	public String getAname() {
		return aname;
	}

	public int getBalance() {
		return balance;
	}
}