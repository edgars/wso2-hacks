package daoImpl;

import java.util.List;
import java.util.Map;

//import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.classic.Session;

import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.ActionContext;

import actionForm.Client_View;
import util.HibernateUtil;

/**
 * @author VS60001724
 * 
 */
public class Client_View_DaoImpl extends HibernateUtil implements
		ModelDriven<Object>, SessionAware {

	private Map<String, Object> usersession;

	/**
	 * @param view
	 *            Client View Transactions
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Client_View> list(Client_View view) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();

		usersession = ActionContext.getContext().getSession();

		String abcd = (String) usersession.get("user1");

		System.out.println("From DAOIMPL Class:" + abcd);

		List<Client_View> details = null;
		try {
			details = session.createQuery(
					"From Client_View WHERE clid=" + abcd + "").list();
			System.out.println(details);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			//e.printStackTrace();
			session.getTransaction().rollback();

		}
		session.getTransaction().commit();

		return details;

	}

	/**
	 * @param abc
	 *            Client View Current Balance
	 * @return
	 */
	public Client_View vish(Client_View abc) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();

		usersession = ActionContext.getContext().getSession();

		String abcd = (String) usersession.get("user1");

		System.out.println("From DAOIMPL Class:" + abcd);

		try {
			String SQL_QUERY = "SELECT view.amount FROM Client_View view WHERE view.clid ='"
					+ abcd + "' ORDER BY view.id DESC LIMIT 1";

			Query query = session.createQuery(SQL_QUERY);

			@SuppressWarnings("rawtypes")
			List results = query.list();
			String f_amount = (String) results.get(0);

			System.out.println(results);
			System.out.println(f_amount);

			abc.setNamount(f_amount);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			

		}

		session.getTransaction().commit();
		return abc;
	}

	public void setUsersession(Map<String, Object> usersession) {
		this.usersession = usersession;
	}

	public Object getModel() {

		return null;
	}

	public void setSession(Map<String, Object> arg0) {

	}

}