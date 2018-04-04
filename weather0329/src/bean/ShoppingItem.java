package bean;

import java.io.Serializable;

public class ShoppingItem implements Serializable {// 购物内容对象
	private String elem;// 客户选取的天气数据元素,包涵气温，气压，湿度，降水量，风速
	private User user;
	private String phoneNum;
	private String email;
	private String addRequest;// 客户的其他需求

	public ShoppingItem() {
		super();
	}

	public ShoppingItem(String elem, User user, String phoneNum, String email,
			String addRequest) {
		super();
		this.elem = elem;
		this.user = user;
		this.phoneNum = phoneNum;
		this.email = email;
		this.addRequest = addRequest;
	}

	public String getAddRequest() {
		return addRequest;
	}

	public void setAddRequest(String addRequest) {
		this.addRequest = addRequest;
	}

	public String getElem() {
		return elem;
	}

	public void setElem(String elem) {
		this.elem = elem;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}