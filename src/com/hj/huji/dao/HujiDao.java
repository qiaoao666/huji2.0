package com.hj.huji.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hj.base.util.SqlGetSessionUtil;
import com.hj.base.util.WebUtil;
import com.hj.huji.po.HujiInfo;
import com.hj.huji.service.HujiService;
import com.hj.user.po.UserInfo;

public class HujiDao {

	public void addHuji(HujiInfo huji) {
		//插入
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		try {
			List<HujiInfo> list = getAllHujiInfo();
			int order = list.size()+1;
			String statement = "com.hj.huji.dao.HujiDao"+".addHuji";
			String hujiId = WebUtil.getUUID();
			huji.setHujiId(hujiId);
			huji.setOrderNum(order);
			session.insert(statement,huji);
			session.commit();
			//System.out.println(insert);
		}finally {
			session.close();
		}
	}
	public List<HujiInfo> getAllHujiInfo(){
		//查询所有记录
		/*
		 * 查询操作不需要写session.commit();
		 */
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		String statement = "com.hj.huji.dao.HujiDao"+".getAllHuji";
		List<HujiInfo> list = session.selectList(statement);
		//System.out.println(list);
		session.close();
		return list;
	}
	@Test
	public HujiInfo getHujiInfo(String hujiId){
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		String statement = "com.hj.huji.dao.HujiDao"+".getHuji";
		HujiInfo huji= session.selectOne(statement, hujiId);
		//System.out.println(huji);
		return huji;
	}
	public void updateHujiInfo(HujiInfo huji){
		//修改户籍信息
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		String statement = "com.hj.huji.dao.HujiDao"+".updateHuji";
		session.update(statement, huji);
		//System.out.println(update);
		session.commit();
		session.close();
	}

	public void deleteHujiInfo(String id){
		//删除户籍信息
		SqlSession session = SqlGetSessionUtil.getSqlSession();
		String statement = "com.hj.huji.dao.HujiDao"+".deleteHuji";
		session.delete(statement, id);
		List<HujiInfo> list = getAllHujiInfo();
		int endIndex = list.size();
		HujiInfo huji = getHujiInfo(id);
		int firstIndex = huji.getOrderNum();
		for(int i = firstIndex;i<endIndex;i++){
			HujiInfo hujiInfo = list.get(i);
			hujiInfo.setOrderNum(i);
			updateHujiInfo(hujiInfo);
		}
		//System.out.println(delete);
		session.commit();
		session.close();
	}
}
