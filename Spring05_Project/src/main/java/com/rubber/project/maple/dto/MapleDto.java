package com.rubber.project.maple.dto;

public class MapleDto {

	private int num;
	private String id;
	private String type;
	private String enhance;
	private String rating;
	private String regdate;
	private String falseCount;
	private String meso;
	private String break1;
	
	public MapleDto () {}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getEnhance() {
		return enhance;
	}

	public void setEnhance(String enhance) {
		this.enhance = enhance;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getFalseCount() {
		return falseCount;
	}

	public void setFalseCount(String falseCount) {
		this.falseCount = falseCount;
	}

	public String getMeso() {
		return meso;
	}

	public void setMeso(String meso) {
		this.meso = meso;
	}

	public String getBreak1() {
		return break1;
	}

	public void setBreak1(String break1) {
		this.break1 = break1;
	}

	public MapleDto(int num, String id, String type, String enhance, String rating, String regdate, String falseCount,
			String meso, String break1) {
		super();
		this.num = num;
		this.id = id;
		this.type = type;
		this.enhance = enhance;
		this.rating = rating;
		this.regdate = regdate;
		this.falseCount = falseCount;
		this.meso = meso;
		this.break1 = break1;
	}

	

	


}
