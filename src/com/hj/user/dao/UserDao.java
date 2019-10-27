package com.hj.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hj.base.util.SqlGetSessionUtil;
import com.hj.user.po.UserInfo;

public class UserDao {
	public void addUser(UserInfo user) {
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		try {
			String statement = "com.hj.user.dao.UserDao"+".addUser";
			int insert = session.insert(statement,user);
			session.commit();
			System.out.println(insert);
		}finally {
			session.close();
		}
	}
	
	public List<UserInfo> getUserInfo(UserInfo user){
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		try {
			String statement = "com.hj.user.dao.UserDao"+".getUserInfo";
//			int insert = session.select(statement,user);
			session.commit();
//			System.out.println(insert);
			return null;
		}finally {
			session.close();
		}
	}
}
