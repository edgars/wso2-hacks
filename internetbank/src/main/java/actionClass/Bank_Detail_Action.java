package actionClass;

import java.util.List;
import com.opensymphony.xwork2.ActionSupport;

import daoImpl.Bank_Detail_DaoImpl;
import actionForm.Bank_Detail;

/**
 * @author VS60001724
 *
 */
public class Bank_Detail_Action extends ActionSupport {

	private static final long serialVersionUID = 6892991934480201178L;
	private List<Bank_Detail> detailList;
	private Bank_Detail_DaoImpl detailMan = new Bank_Detail_DaoImpl();
	private Bank_Detail details;


	@Override
	public String execute() {
		this.detailList = detailMan.list();
		return SUCCESS;
	}

	public String addBank() {
		return SUCCESS;
	}

	public Bank_Detail getDetails() {
		return details;
	}

	public void setDetails(Bank_Detail details) {
		this.details = details;
	}

	public List<Bank_Detail> getDetailList() {
		return detailList;
	}

	public void setDetailList(List<Bank_Detail> detailList) {
		this.detailList = detailList;
	}

	public Bank_Detail_DaoImpl getDetailMan() {
		return detailMan;
	}

	public void setDetailMan(Bank_Detail_DaoImpl detailMan) {
		this.detailMan = detailMan;
	}

}
