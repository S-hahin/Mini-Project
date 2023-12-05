package com.Dao.App;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.Bean.App.*;

public class Dao {

	PreparedStatement ps = null;
	ResultSet rs = null;
	Statement st = null;
	DbConnector d = new DbConnector();
	Connection con = d.dbConnector();

	public String logUser(Log l) {
		try {
			String q = "select * from admin";
			st = con.createStatement();
			rs = st.executeQuery(q);
			System.out.println(l.getUname());
			while (rs.next()) {
				if (rs.getString("uname").equals(l.getUname()) && rs.getString("pword").equals(l.getPword())) {
					return "done";
				}

			}
		} catch (Exception e) {
			System.out.println();
		}
		return "";
	}

	public String addCadmin(Log l) {
		try {
			String q = "insert into admin (name,email,phone,district,uname,pword) values(?,?,?,?,?,?)";
			ps = con.prepareStatement(q);
			ps.setString(1, l.getName());
			ps.setString(2, l.getEmail());
			ps.setString(3, l.getPhone());
			ps.setString(4, l.getDistrict());
			ps.setString(5, l.getUname());
			ps.setString(6, l.getPword());

			int i = ps.executeUpdate();
			if (i != 0) {
				return "done";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public String addCamp(Camp c) {
		try {
			String q = "insert into camp (cname,dist,taluk,village,ward,address,location,caname,canum,max,bed,bath,kitchen,booking) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(q);
			ps.setString(1, c.getCname());
			ps.setString(2, c.getDist());
			ps.setString(3, c.getTaluk());
			ps.setString(4, c.getVillage());
			ps.setString(5, c.getWard());
			ps.setString(6, c.getAddress());
			ps.setString(7, c.getLocation());
			ps.setString(8, c.getCaname());
			ps.setString(9, c.getCanum());
			ps.setString(10, c.getMax());
			ps.setString(11, c.getBed());
			ps.setString(12, c.getBath());
			ps.setString(13, c.getKitchen());
			ps.setString(14, "0");

			int i = ps.executeUpdate();
			if (i != 0) {
				return "done";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public String addUser(User u) {
		try {
			String q = "insert into user (uname,uemail,adhar,uphone,district,taluk,ward,address,location) values(?,?,?,?,?,?,?,?,?)";
			String q1 ="insert into admin (name,email,phone,district,uname,pword) values(?,?,?,?,?,?)";
			ps = con.prepareStatement(q);
			PreparedStatement ps1 = con.prepareStatement(q1);
			ps.setString(1, u.getUname());
			ps.setString(2, u.getUemail());
			ps.setString(3, u.getAdhar());
			ps.setString(4, u.getPhone());
			ps.setString(5, u.getDistrict());
			ps.setString(6, u.getTaluk());
			ps.setString(7, u.getWard());
			ps.setString(8, u.getAddress());
			ps.setString(9, u.getLocation());
			
			
			ps1.setString(1, u.getUname());
			ps1.setString(2, u.getUemail());
			ps1.setString(3, u.getPhone());
			ps1.setString(4, u.getDistrict());
			ps1.setString(5, u.getUname());
			ps1.setString(6, u.getPword());

			int i = ps.executeUpdate();
			int j = ps1.executeUpdate();
			if (i != 0 && j!=0) {
				
				return "done";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}
	
	
	public String lockSpot(Booking b) {
		try {
			String q = "update user set cname=?, cid=? where uname='"+b.getUname()+"'";
			String q1 ="update camp set booking=? where cid='"+b.getCid()+"'";
			ps = con.prepareStatement(q);
			
			ps.setString(1, b.getCname());
			ps.setString(2, b.getCid());
			
			
			PreparedStatement ps1 = con.prepareStatement(q1);
			int cur = Integer.parseInt(b.getBooking());
			int need = Integer.parseInt(b.getNeed());
			int set = cur+need;
			ps1.setInt(1, set);
			

			int i = ps.executeUpdate();
			int j = ps1.executeUpdate();
			if (i != 0 && j!=0) {
				
				return "done";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

}
