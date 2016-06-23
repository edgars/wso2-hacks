package actionForm;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "bank_admin_login")
public class Admin_Login implements Serializable {

	private static final long serialVersionUID = 3678334432213169918L;
	private String userName;
	private String password;
	private String bank_id;

	private String oldpw;
	private String newpw;
	private String cnewpw;
	private String test;

	@Id
	@Column(name = "bank_admin_user")
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "bank_admin_pass")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "bank_admin_id")
	public String getBank_id() {
		return bank_id;
	}

	public void setBank_id(String bank_id) {
		this.bank_id = bank_id;
	}

	@Transient
	public String getOldpw() {
		return oldpw;
	}

	public void setOldpw(String oldpw) {
		this.oldpw = oldpw;
	}

	@Transient
	public String getNewpw() {
		return newpw;
	}

	public void setNewpw(String newpw) {
		this.newpw = newpw;
	}

	@Transient
	public String getCnewpw() {
		return cnewpw;
	}

	public void setCnewpw(String cnewpw) {
		this.cnewpw = cnewpw;
	}

	@Transient
	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

}