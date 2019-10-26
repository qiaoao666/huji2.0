package com.hj.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.hj.base.util.SqlGetSessionUtil;
import com.hj.user.po.UserInfo;

public class UserDao {
	@Test
	public void addUser() {
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		try {
			String statement = "com.hj.user.dao.UserDao"+".addUser";
			int insert = session.insert(statement,new UserInfo("4352","45","545"));
			session.commit();
			System.out.println(insert);
		}finally {
			session.close();
		}
	}
}
