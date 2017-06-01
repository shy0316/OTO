package com.wgd.module;

public class Teacher {
	private int tid;
	private String tname;
	private String sex;
	private int age;//年龄
	private String experience;//任教经历
	private String college;//毕业院校
	private String course;//选择教的课程
	private String englishlevel;//英语四六级
	private String competition;//参加的比赛，书法，作文等
	private String address;//教师的住址
	private String imgsrc;//教师图片展示
	private String edulevel;
	private String phone;
	private int price;
	
	public Teacher(){
		
	}
	
	public Teacher(int tid, String tname, String sex, int age, String experience, String imgsrc, String college,
			String course, String englishlevel, String edulevel, int price) {
		super();
		this.tid = tid;
		this.tname = tname;
		this.sex = sex;
		this.age = age;
		this.experience = experience;
		this.imgsrc = imgsrc;
		this.college = college;
		this.course = course;
		this.englishlevel = englishlevel;
		this.edulevel=edulevel;
		this.price=price;
	}

	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getTimgsrc() {
		return imgsrc;
	}
	public void setTimgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getEnglishlevel() {
		return englishlevel;
	}
	public void setEnglishlevel(String englishlevel) {
		this.englishlevel = englishlevel;
	}
	public String getCompetition() {
		return competition;
	}
	public void setCompetition(String competition) {
		this.competition = competition;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEdulevel() {
		return edulevel;
	}

	public void setEdulevel(String edulevel) {
		this.edulevel = edulevel;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
