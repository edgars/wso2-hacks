package actionClass;



 
import daoImpl.Emp_AddTrans_DaoImpl;
import actionForm.Emp_AddTrans;
import java.util.List;
 
import com.opensymphony.xwork2.ActionSupport;
 
 
public class Emp_AddTrans_Action extends ActionSupport {
 
   
	private static final long serialVersionUID = 1027269765780450738L;
	private Emp_AddTrans depo;
	private Emp_AddTrans with;
	private Emp_AddTrans views;
	private Emp_AddTrans_DaoImpl xyz =new Emp_AddTrans_DaoImpl();
	private List<Emp_AddTrans> detailList;
	
  




	public String deposit() 
    {
        
        xyz.deposit(depo);
        addActionMessage("Added Amount Successfully");
        return SUCCESS;
    }


    public String withdrawn() 
    {
    	
    	//xyz.withdrawn(with);
    	/*return SUCCESS;*/
    	with = xyz.withdrawn(with);
    	
    	
        String test= with.getTest();
     	String pamount =with.getPamount();
    	
    	
        if(test== "yes" )
        {
        	addActionMessage("Withdrwan Successfully ");
        	return SUCCESS;
        }
        else
        {
        	
        	addActionError("Insufficient Amount");
        	addActionError("Client Amount Is: "+ pamount );
        	addActionError("Minimum Amount Require 1500 Rs. ");
        	
        	
        	return ERROR;
        }
        
        
        
        
    }
    
    public String viewcls()
    {
    	
    	this.detailList = xyz.list(views);
    	System.out.println(views.getPamount());
    	this.views = xyz.vish(views);
    	return SUCCESS;
    	
    }




	public Emp_AddTrans getViews() {
		return views;
	}


	public void setViews(Emp_AddTrans views) {
		this.views = views;
	}


	public Emp_AddTrans_DaoImpl getXyz() {
		return xyz;
	}


	public void setXyz(Emp_AddTrans_DaoImpl xyz) {
		this.xyz = xyz;
	}


	public Emp_AddTrans getDepo() {
		return depo;
	}


	public void setDepo(Emp_AddTrans depo) {
		this.depo = depo;
	}


	public Emp_AddTrans getWith() {
		return with;
	}


	public void setWith(Emp_AddTrans with) {
		this.with = with;
	}
 

	public List<Emp_AddTrans> getDetailList() {
		return detailList;
	}


	public void setDetailList(List<Emp_AddTrans> detailList) {
		this.detailList = detailList;
	}

    
 
  
}