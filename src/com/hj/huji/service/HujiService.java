package com.hj.huji.service;

import java.util.List;
import com.hj.huji.po.HujiInfo;

public interface HujiService {
	public void addHuji(HujiInfo huji);
	public List<HujiInfo> getAllHujiInfo();
	public void updateHuji(HujiInfo huji);
	public void deleteHuji(String id);
}
