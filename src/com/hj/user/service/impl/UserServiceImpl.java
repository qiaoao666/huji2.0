package com.hj.user.service.impl;

import java.util.List;
import com.hj.user.dao.UserDao;
import com.hj.user.po.UserInfo;
import com.hj.user.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao = new UserDao();
//	注册时候验证
	@Override
	public boolean addUser(UserInfo user) {
		// TODO Auto-generated method stub
		if(user.getUserName().length()>10 || user.getUserPass().length()<3){
			return false;
		}else{
			return true;
		}
	}
//	登录验证
	@Override
	
	public boolean loginCheck(String userName,String userPass){
		List<UserInfo> list = userDao.getAllUserInfo();
		for(int i=0;i<list.size();i++){
			if(userName.equals(list.get(i).getUserName()) && userPass.equals(list.get(i).getUserPass())){
				return true;
			}
		}
		return false;
	}
	@Override
	public List<UserInfo> getUserInfo(UserInfo user) {
		// TODO Auto-generated method stub
		return null;
	}
}
