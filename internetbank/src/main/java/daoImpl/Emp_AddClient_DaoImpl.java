package daoImpl;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.classic.Session;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

import actionForm.Emp_AddClient;
import actionForm.Client_Login;
import util.HibernateUtil;

/**
 * @author VS60001724
 * 
 */
public class Emp_AddClient_DaoImpl extends HibernateUtil implements
ModelDriven<Object>, SessionAware{

	private Map<String, Object> usersession;
	/**
	 * @param addClient
	 *            Employee Add client
	 * @return
	 */
	public Emp_AddClient addClient(Emp_AddClient addClient) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();

		try {
			session.save(addClient);
		} catch (HibernateException e) {
			System.out.println(e);
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();

		return addClient;
	}

	/**
	 * @param addClients
	 *            Add Clients
	 * @return
	 */
	public Client_Login addClients(Client_Login addClients) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		Client_Login abcd= new Client_Login();
		String bank_id= addClients.getBank_id();
		abcd.setBank_id(bank_id);
		String uname=addClients.getUserName();
		abcd.setUserName(uname);
		String pw =addClients.getPassword();
		String mpw=md5(pw);
		abcd.setPassword(mpw);
		
		try {
			
			
			session.save(abcd);
		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();

		return addClients;
	}

	@SuppressWarnings("unchecked")
	public List<Emp_AddClient> list(Emp_AddClient edit)
	{
		usersession = ActionContext.getContext().getSession();
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();

		String clid = edit.getBank_id();
		System.out.println(clid);
		
		List<Emp_AddClient> details=null;
		
		try {

			details = session.createQuery(
					"From Emp_AddClient WHERE bank_id=" + clid + "").list();

		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			//e.printStackTrace();
			session.getTransaction().rollback();
		}
		usersession.put("test", clid);
		session.getTransaction().commit();

		return details;
		
		
	}
	
	public Emp_AddClient eclient(Emp_AddClient eclient) {

		usersession = ActionContext.getContext().getSession();
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		 String branch =eclient.getBranch();
		 String firstName=eclient.getFirstName();
		 String middleName=eclient.getMiddleName();
		 String lastName=eclient.getLastName();
		 String gender=eclient.getGender();
		 String dob=eclient.getDob();
		 String landLine=eclient.getLandLine();
		 String mobile=eclient.getMobile();
		 String email=eclient.getEmail();
		 String address=eclient.getAddress();
		 String city=eclient.getCity();
		 String state=eclient.getState();
		
		 
		 String abcd = (String) usersession.get("test");
		
		try {
			String SQL_QUERY2 = "UPDATE Emp_AddClient eclient set " +
					"eclient.branch = :branch, "+
					"eclient.firstName = :firstName, "+
					"eclient.middleName = :middleName, "+
					"eclient.lastName = :lastName, "+
					"eclient.gender = :gender, "+
					"eclient.dob = :dob, "+
					"eclient.landLine = :landLine, "+
					"eclient.mobile = :mobile, "+
					"eclient.email = :email, "+
					"eclient.address = :address, "+
					"eclient.city = :city, "+
					"eclient.state = :state "+
					"WHERE eclient.bank_id = :abcd";
			Query query2 = session.createQuery(SQL_QUERY2);
			query2.setParameter("branch",branch);
			query2.setParameter("firstName",firstName);
			query2.setParameter("middleName",middleName);
			query2.setParameter("lastName",lastName);
			query2.setParameter("gender",gender);
			query2.setParameter("dob",dob);
			query2.setParameter("landLine",landLine);
			query2.setParameter("mobile",mobile);
			query2.setParameter("email",email);
			query2.setParameter("address",address);
			query2.setParameter("city",city);
			query2.setParameter("state",state);
			
			query2.setParameter("abcd", abcd);
			int result = query2.executeUpdate();
			System.out.println("Rows affected: " + result);
		} catch (HibernateException e) {
			System.out.println(e);
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		usersession.remove("test");

		return eclient;
	}

	public void setSession(Map<String, Object> arg0) {
		
		
	}

	public Object getModel() {
		
		return null;
	}
}
