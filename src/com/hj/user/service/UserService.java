package com.hj.user.service;

import java.util.List;

import com.hj.user.po.UserInfo;

public interface UserService {
	public boolean addUser(UserInfo user);
	public boolean loginCheck(String userName,String userPass);
	public List<UserInfo> getUserInfo(UserInfo user);
}
