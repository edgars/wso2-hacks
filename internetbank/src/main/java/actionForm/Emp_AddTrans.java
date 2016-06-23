
package actionForm;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

 
@Entity
@Table(name="bank_trans")
public class Emp_AddTrans implements Serializable{
	

	/**
	 * Transactions Record POJO class 
	 * Deposit Amount Variables 
	 * Withdrawn Amount Variables 
	 * Some test Variables
	 * 
	 */
	private static final long serialVersionUID = -2211570944465262913L;
	private Long id;
	private String clid;
    private String details;
    private String amount;
    private String withdrawn;
    private String deposit;
    private String test;
    private String namount;
    private String pamount;
    
    private Date created;
   
	
	@Id
    @GeneratedValue
    @Column(name="id")
    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	
	@Column(name="bank_client_id")
	public String getClid() {
		return clid;
	}
	public void setClid(String clid) {
		this.clid = clid;
	}
	
	
	@Column(name="details")
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	
	@Column(name="balance")
    public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	
	@Column(name="withdrawn")
	public String getWithdrawn() {
		return withdrawn;
	}
	public void setWithdrawn(String withdrawn) {
		this.withdrawn = withdrawn;
	}
	
	@Column(name="deposit")
	public String getDeposit() {
		return deposit;
	}
	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}
	@Column(name="created")
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	@Transient
	 public String getTest() {
			return test;
		}
	public void setTest(String test) {
			this.test = test;
		}
	@Transient
	public String getNamount() {
		return namount;
	}
	public void setNamount(String namount) {
		this.namount = namount;
	}
	@Transient
	public String getPamount() {
		return pamount;
	}
	public void setPamount(String pamount) {
		this.pamount = pamount;
	}
    
	
    
   
}