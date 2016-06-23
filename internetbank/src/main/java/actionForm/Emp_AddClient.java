package actionForm;


import java.io.Serializable;

import javax.persistence.*;

 
@Entity
@Table(name="bank_client_details")
public class Emp_AddClient implements Serializable{
     
	
	private static final long serialVersionUID = 7250704876671468382L;
	
	private Long id;
	private String bank_id;
	private String branch;
	private String firstName;
	private String middleName;
	private String lastName;
	private String gender;
	private String dob;
	private String landLine;
	private String mobile;
	private String email;
	private String address;
	private String city;
	private String state;

 
    
    @Id
    @GeneratedValue
    @Column(name="id")
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	@Id
	@Column(name="bank_client_id")
	public String getBank_id() {
		return bank_id;
	}
	public void setBank_id(String bank_id) {
		this.bank_id = bank_id;
	}
	@Column(name="branch_name")
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	@Column(name="first_name")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	@Column(name="middle_name")
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	@Column(name="last_name")
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	@Column(name="gender")
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Column(name="dob_detail")
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	@Column(name="phone_land_no")
	public String getLandLine() {
		return landLine;
	}
	public void setLandLine(String landLine) {
		this.landLine = landLine;
	}
	@Column(name="phone_mobile_no")
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	@Column(name="email_detail")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="add_detail")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(name="city_detail")
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Column(name="state_detail")
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	   
}