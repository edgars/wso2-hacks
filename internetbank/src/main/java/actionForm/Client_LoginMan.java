package actionForm;

import java.util.Date;
import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "bank_client_loginman")
public class Client_LoginMan implements Serializable {

	/**
	 * Client Login Manager POJO Class
	 * 
	 */
	private static final long serialVersionUID = -3690290147900140002L;
	private Long id;
	private String bank_id;
	private Date created;

	@Id
	@GeneratedValue
	@Column(name = "id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "bank_client_id")
	public String getBank_id() {
		return bank_id;
	}

	public void setBank_id(String bank_id) {
		this.bank_id = bank_id;
	}

	@Column(name = "created")
	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

}