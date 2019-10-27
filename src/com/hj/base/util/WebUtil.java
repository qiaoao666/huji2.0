package com.hj.base.util;

import java.util.UUID;

public class WebUtil {

	public static String getUUID(){
		String uuid = UUID.randomUUID().toString();
		uuid = uuid.replace("-", "");
		return uuid;
	}
}
