package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String userName = req.getParameter("userName");
		String userPassword = req.getParameter("userPassword");
		System.out.println( userName + userPassword);
	}
}
