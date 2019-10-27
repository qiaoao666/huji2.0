package com.hj.user.service.impl;

import java.util.List;

import com.hj.user.dao.UserDao;
import com.hj.user.po.UserInfo;
import com.hj.user.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	@Override
	public boolean addUser(UserInfo user) {
		// TODO Auto-generated method stub
		if(user.getUserName().length()>10 || user.getUserPass().length()<3){
			return false;
		}else{
			return true;
		}
	}
	
	public List<UserInfo> getUserInfo(UserInfo user){
		return null;
	}


}
