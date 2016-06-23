package actionClass;
import actionForm.Admin_EmpChPW;
import com.opensymphony.xwork2.ActionSupport;

import daoImpl.Admin_EmpChPW_DaoImpl;

/**
 * @author VS60001724
 *
 */
public class Admin_EmpChPW_Action extends ActionSupport{


	private static final long serialVersionUID = -6018967805044463550L;
	private Admin_EmpChPW chpw ;
	private Admin_EmpChPW_DaoImpl xyz =new Admin_EmpChPW_DaoImpl();
	
	
	/**
	 * @return Admin change Employee Password
	 */
	public String changepw() 
    {
		String a = chpw.getNewpw();
		String b = chpw.getCnewpw();
		String c= chpw.getBank_id();
		if(a.equals("") || b.equals("") ||c.equals(""))
		{
			addActionError("Please Enter All Values");
			return ERROR;
		}
		else
		{
		if(a.equals(b))
		{
		xyz.changepw(chpw);
        addActionMessage("You have changed Successfully password of Employee:"+c);
        return SUCCESS;
		}
		else
		{
			addActionError("Password Not Matching");
			return ERROR;
		}
		}
    }


	public Admin_EmpChPW getChpw() {
		return chpw;
	}


	public void setChpw(Admin_EmpChPW chpw) {
		this.chpw = chpw;
	}


	public Admin_EmpChPW_DaoImpl getXyz() {
		return xyz;
	}


	public void setXyz(Admin_EmpChPW_DaoImpl xyz) {
		this.xyz = xyz;
	}


		

	

}
