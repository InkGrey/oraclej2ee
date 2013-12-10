package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import po.User;

import dao.UserDAO;

public class UserAction extends HttpServlet{
	/**
	 * @author Maggie
	 * 2013 2013-12-6 下午01:34:21
	 * UserAction.java
	 *
	 */
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String userEmail = req.getParameter("userEmail");
		String userPassword = req.getParameter("userPassword");
		User user = new User();
		user.setUserEmail(userEmail);
		user.setUserPassword(userPassword);
		int result = new UserDAO().checkLogin(user);
		if (result == 1) {
			System.out.println("登录成功");
		}
	}
}
