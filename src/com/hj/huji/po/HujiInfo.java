package com.hj.huji.po;

public class HujiInfo {
	private String hujiId;
	private String holderName;//户籍名（户主名）
	private String holderPhone;//户主电话
	private String villageName;//小区名
	private String unitNum;//单元号
	private String roomNum;//房间号
	private String holderNative;//户主籍贯
	private String holderStatus;//户籍状态
	
	public HujiInfo(String hujiId, String holderName, String holderPhone,
			String villageName, String unitNum, String roomNum,
			String holderNative, String holderStatus) {
		super();
		this.hujiId = hujiId;
		this.holderName = holderName;
		this.holderPhone = holderPhone;
		this.villageName = villageName;
		this.unitNum = unitNum;
		this.roomNum = roomNum;
		this.holderNative = holderNative;
		this.holderStatus = holderStatus;
	}
	public HujiInfo() {
		super();
	}
	@Override
	public String toString() {
		return "HujiInfo [hujiId=" + hujiId + ", holderName=" + holderName
				+ ", holderPhone=" + holderPhone + ", villageName="
				+ villageName + ", unitNum=" + unitNum + ", roomNum=" + roomNum
				+ ", holderNative=" + holderNative + ", holderStatus="
				+ holderStatus + "]";
	}
	public String getHujiId() {
		return hujiId;
	}
	public void setHujiId(String hujiId) {
		this.hujiId = hujiId;
	}

	public String getHolderName() {
		return holderName;
	}
	public void setHolderName(String holderName) {
		this.holderName = holderName;
	}
	public String getHolderPhone() {
		return holderPhone;
	}
	public void setHolderPhone(String holderPhone) {
		this.holderPhone = holderPhone;
	}
	public String getVillageName() {
		return villageName;
	}
	public void setVillageName(String villageName) {
		this.villageName = villageName;
	}
	public String getUnitNum() {
		return unitNum;
	}
	public void setUnitNum(String unitNum) {
		this.unitNum = unitNum;
	}
	public String getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(String roomNum) {
		this.roomNum = roomNum;
	}
	public String getHolderNative() {
		return holderNative;
	}
	public void setHolderNative(String holderNative) {
		this.holderNative = holderNative;
	}
	public String getHolderStatus() {
		return holderStatus;
	}
	public void setHolderStatus(String holderStatus) {
		this.holderStatus = holderStatus;
	}
	
}
