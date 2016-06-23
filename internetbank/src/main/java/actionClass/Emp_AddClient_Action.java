package actionClass;

import java.util.List;

import actionForm.Emp_AddClient;
import actionForm.Client_Login;


import com.opensymphony.xwork2.ActionSupport;

import daoImpl.Emp_AddClient_DaoImpl;

/**
 * @author VS60001724
 * 
 */
public class Emp_AddClient_Action extends ActionSupport {

	private static final long serialVersionUID = 8633161835907136634L;

	public Emp_AddClient add;
	public Client_Login adds;
	public Emp_AddClient edit;
	public Emp_AddClient addb;
	public Emp_AddClient_DaoImpl xyz = new Emp_AddClient_DaoImpl();
	private List<Emp_AddClient> detail;
	/**
	 * @return Employee Add Clients
	 */
	public String addClient() {

		xyz.addClient(add);
		return SUCCESS;
	}

	/**
	 * @return Employee Add Clients
	 */
	public String addClients() {

		xyz.addClients(adds);
		return SUCCESS;
	}
	
	   public String editclient()
	    {
	    	
	    	this.detail = xyz.list(edit);
	    	return SUCCESS;
	    	
	    }
	   public String eclient()
	   {
		   xyz.eclient(addb);
		   addActionMessage("Changed Successfully");
		   
		   return SUCCESS;
	   }

	
	public Emp_AddClient getAdd() {
		return add;
	}

	public void setAdd(Emp_AddClient add) {
		this.add = add;
	}

	public Emp_AddClient_DaoImpl getXyz() {
		return xyz;
	}

	public void setXyz(Emp_AddClient_DaoImpl xyz) {
		this.xyz = xyz;
	}

	public Client_Login getAdds() {
		return adds;
	}

	public void setAdds(Client_Login adds) {
		this.adds = adds;
	}

	public Emp_AddClient getEdit() {
		return edit;
	}

	public void setEdit(Emp_AddClient edit) {
		this.edit = edit;
	}

	public List<Emp_AddClient> getDetail() {
		return detail;
	}

	public void setDetail(List<Emp_AddClient> detail) {
		this.detail = detail;
	}

	public Emp_AddClient getAddb() {
		return addb;
	}

	public void setAddb(Emp_AddClient addb) {
		this.addb = addb;
	}

}
