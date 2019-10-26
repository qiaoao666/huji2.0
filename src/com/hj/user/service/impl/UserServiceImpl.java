package com.hj.user.service.impl;

import com.hj.user.po.UserInfo;
import com.hj.user.service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public boolean addUser(UserInfo user) {
		// TODO Auto-generated method stub
		if(user.getUserName().length()>10 || user.getUserPass().length()<3){
			return false;
		}else{
			return true;
		}
	}


}
