package actionForm;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "bank_details")
public class Bank_Detail implements Serializable {

	/**
	 * Bank Details POJO Class 
	 * Admin can add Bank Details
	 * 
	 */
	private static final long serialVersionUID = 7250704876671468382L;
	private Long id;
	private Long bank_id;
	private String bank_branch_name;
	private String bank_branch_add;
	private String bank_branch_city;
	private String bank_branch_phone;

	@Id
	@GeneratedValue
	@Column(name = "id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Id
	@GeneratedValue
	@Column(name = "bank_id")
	public Long getBank_id() {
		return bank_id;
	}

	public void setBank_id(Long bank_id) {
		this.bank_id = bank_id;
	}

	@Column(name = "bank_branch_name")
	public String getBank_branch_name() {
		return bank_branch_name;
	}

	public void setBank_branch_name(String bank_branch_name) {
		this.bank_branch_name = bank_branch_name;
	}

	@Column(name = "bank_branch_add")
	public String getBank_branch_add() {
		return bank_branch_add;
	}

	public void setBank_branch_add(String bank_branch_add) {
		this.bank_branch_add = bank_branch_add;
	}

	@Column(name = "bank_branch_city")
	public String getBank_branch_city() {
		return bank_branch_city;
	}

	public void setBank_branch_city(String bank_branch_city) {
		this.bank_branch_city = bank_branch_city;
	}

	@Column(name = "bank_branch_phone")
	public String getBank_branch_phone() {
		return bank_branch_phone;
	}

	public void setBank_branch_phone(String bank_branch_phone) {
		this.bank_branch_phone = bank_branch_phone;
	}

}