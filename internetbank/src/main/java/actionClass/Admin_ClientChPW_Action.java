package actionClass;

import actionForm.Admin_ClientChPW;
import com.opensymphony.xwork2.ActionSupport;

import daoImpl.Admin_ClientChPW_DaoImpl;

public class Admin_ClientChPW_Action extends ActionSupport {

	private static final long serialVersionUID = -7556338012932718768L;
	private Admin_ClientChPW chpw;
	private Admin_ClientChPW_DaoImpl xyz = new Admin_ClientChPW_DaoImpl();

	/**
	 * @return Admin Change client passowrd
	 */
	public String changepw() {
		
		String a = chpw.getNewpw();
		String b = chpw.getCnewpw();
		String c =chpw.getBank_id();
		if(a.equals("") || b.equals("") ||c.equals(""))
		{
			addActionError("Please Enter All Values");
			return ERROR;
		}
		else
		{
		if (a.equals(b)) {
			String sa = chpw.getBank_id();
			System.out.println("From Action" + sa);
			xyz.changepw(chpw);
			addActionMessage("You have changed Successfully password of Client:"+c);
			return SUCCESS;
		} else {
			addActionError("Password Not matching");
			return ERROR;
		}
		}
	}

	public Admin_ClientChPW getChpw() {
		return chpw;
	}

	public void setChpw(Admin_ClientChPW chpw) {
		this.chpw = chpw;
	}

	public Admin_ClientChPW_DaoImpl getXyz() {
		return xyz;
	}

	public void setXyz(Admin_ClientChPW_DaoImpl xyz) {
		this.xyz = xyz;
	}

}
