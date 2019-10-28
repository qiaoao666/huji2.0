package com.hj.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.hj.base.util.SqlGetSessionUtil;
import com.hj.user.po.UserInfo;

public class UserDao {
	//注册用户
	@Test
	public void addUser() {
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		try {
			String statement = "com.hj.user.dao.UserDao"+".addUser";
			int insert = session.insert(statement,new UserInfo("4","23","23"));
			session.commit();
			//System.out.println(insert);
		}finally {
			session.close();
		}
	}

	public List<UserInfo> getAllUserInfo(){
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		String statement = "com.hj.user.dao.UserDao"+".getAllUser";
		List<UserInfo> list = session.selectList(statement);
		//UserInfo u = list.indexOf(3);
		/*for(int i=0;i<list.size();i++){
			String n = 
			list.get(i).getUserName();
			System.out.println(n);
		}*/
		//System.out.println(list);
		session.close();
		return list;
	}
/*	@Test
	public void getUserInfo(){
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		String statement = "com.hj.user.dao.UserDao"+".getUser";
		UserInfo u = new UserInfo();
		u = session.selectOne(statement, "1");
//		UserInfo u = list.indexOf(3);
		System.out.println(u);
		session.close();
	}*/
}
