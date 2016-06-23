package actionClass;

import actionForm.Emp_Login;
import actionForm.Admin_AddEmp;
import daoImpl.Admin_AddEmp_DaoImpl;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author VS60001724
 * 
 */
public class Admin_AddEmp_Action extends ActionSupport {

	private static final long serialVersionUID = -3593298137246621798L;
	public Emp_Login adds;
	public Admin_AddEmp add;
	public Admin_AddEmp_DaoImpl xyz = new Admin_AddEmp_DaoImpl();

	/**
	 * @return Admin add Employee
	 */
	public String addEmp() {

		xyz.addEmp(add);
		return SUCCESS;
	}

	/**
	 * @return Admin add empolyee
	 */
	public String addEmps() {

		xyz.addEmps(adds);
		addActionMessage("Done");
		return SUCCESS;
	}

	public Emp_Login getAdds() {
		return adds;
	}

	public void setAdds(Emp_Login adds) {
		this.adds = adds;
	}

	public Admin_AddEmp getAdd() {
		return add;
	}

	public void setAdd(Admin_AddEmp add) {
		this.add = add;
	}

	public Admin_AddEmp_DaoImpl getXyz() {
		return xyz;
	}

	public void setXyz(Admin_AddEmp_DaoImpl xyz) {
		this.xyz = xyz;
	}

}
