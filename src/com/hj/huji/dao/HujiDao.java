package com.hj.huji.dao;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.hj.base.util.SqlGetSessionUtil;
import com.hj.base.util.WebUtil;
import com.hj.huji.po.HujiInfo;
import com.hj.user.po.UserInfo;

public class HujiDao {
	@Test
	public void addUser() {
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		try {
			String statement = "com.hj.huji.dao.HujiDao"+".addHuji";
			String hujiId = WebUtil.getUUID();
			int insert = session.insert(statement,new HujiInfo(hujiId,"23","23","23","23","23","23","23"));
			session.commit();
			//System.out.println(insert);
		}finally {
			session.close();
		}
	}
}
