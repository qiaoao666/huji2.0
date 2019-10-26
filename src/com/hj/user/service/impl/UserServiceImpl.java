package com.hj.user.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hj.base.util.SqlSessionFactoryUtil;
import com.hj.user.dao.UserDao;
import com.hj.user.po.UserInfo;
import com.hj.user.service.UserService;

public class UserServiceImpl implements UserService {
	SqlSessionFactory factory = SqlSessionFactoryUtil.sqlSessionFactory;
	private UserDao userDao;
	public void addUser(UserInfo user) {
		SqlSession session = factory.openSession(true);
		try {
			userDao = session.getMapper(UserDao.class);
			userDao.addUser(user);
		}finally {
			session.close();
		}
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
