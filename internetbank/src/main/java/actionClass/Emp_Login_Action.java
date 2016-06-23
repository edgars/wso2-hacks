package actionClass;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import actionForm.Emp_Login;
import daoImpl.Emp_Login_DaoImpl;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Emp_Login_Action extends ActionSupport implements
		ModelDriven<Object>, SessionAware {

	private static final long serialVersionUID = -6898596256321736746L;
	private Map<String, Object> session;
	private Emp_Login login = null;
	private Emp_Login_DaoImpl loginDAO = new Emp_Login_DaoImpl();
	private Emp_Login chpw;
	private Emp_Login_DaoImpl xyz = new Emp_Login_DaoImpl();

	@Override
	public String execute() {

		return SUCCESS;

	}

	/**
	 * @return Employee Login
	 */
	public String checkLogin() {

		if (login.getUserName().equals("") || login.getPassword().equals("")
				|| login.getBank_id().equals("")) {
			addActionError("Please Enter All Values");

			return ERROR;

		} else {

			login = loginDAO.checkLogin(login);

			if (null != login.getBank_id()) {

				String abcd = login.getUserName();
				String uname =login.getUserName();
				String other = login.getBank_id();
				System.out.println(abcd);

				session.put("user", "emp");
				session.put("user0", uname);
				session.put("user1", other);

				return SUCCESS;

			} else {

				addActionError("Invalid user Id/Password/ Employee Id");

				return ERROR;

			}

		}

	}

	/**
	 * @return Employee change own password
	 */
	public String changepw()

	{
		String a = chpw.getOldpw();
		String b = chpw.getNewpw();
		String c = chpw.getCnewpw();
		if(a.equals("") || b.equals("") ||c.equals(""))
		{
			addActionError("Please Enter All Values");
			return ERROR;
		}
		else
		{
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);

		if (b.equals(c)) {

			xyz.changepw(chpw);

			String ss = chpw.getTest();

			System.out.println("From Action Class:  " + ss);
			if (chpw.getTest() == "not") {
				addActionError("Old Password not matching ");
				return ERROR;

			}
			if (chpw.getTest() == "good") {
				addActionMessage("Password changed Successfully. Account will be Logout");
			}

		} else {
			addActionError("Password not matching");
			return ERROR;
		}
		return SUCCESS;
	}
	}

	public String logout() throws Exception {

		Map<String, Object> session = ActionContext.getContext().getSession();
		session.remove("user");
		session.remove("user0");
		session.remove("user1");
		session.remove("user2");
		return SUCCESS;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Emp_Login_DaoImpl getLoginDAO() {
		return loginDAO;
	}

	public void setLoginDAO(Emp_Login_DaoImpl loginDAO) {
		this.loginDAO = loginDAO;
	}

	public Emp_Login getChpw() {
		return chpw;
	}

	public void setChpw(Emp_Login chpw) {
		this.chpw = chpw;
	}

	public Emp_Login_DaoImpl getXyz() {
		return xyz;
	}

	public void setXyz(Emp_Login_DaoImpl xyz) {
		this.xyz = xyz;
	}

	public Object getModel() {

		login = new Emp_Login();

		return login;

	}

	public Emp_Login getLogin() {

		return login;

	}

	public void setLogin(Emp_Login login) {

		this.login = login;

	}

}
