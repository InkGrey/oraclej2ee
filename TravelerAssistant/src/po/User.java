package po;

public class User {
	private String userName;
	private String userEmail;
	private String userPassword;
	private String userRegistTime;
	private int userId;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserRegistTime() {
		return userRegistTime;
	}
	public void setUserRegistTime(String userRegistTime) {
		this.userRegistTime = userRegistTime;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
}
