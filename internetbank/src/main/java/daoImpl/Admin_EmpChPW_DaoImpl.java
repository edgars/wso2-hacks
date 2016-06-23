package daoImpl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.classic.Session;

import actionForm.Admin_EmpChPW;
import util.HibernateUtil;

/**
 * @author VS60001724
 */
public class Admin_EmpChPW_DaoImpl extends HibernateUtil {

	/**
	 * @param chpw
	 *            Admin Can change Employee password
	 * @return
	 */
	public Admin_EmpChPW changepw(Admin_EmpChPW chpw) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();

		String bank_id = chpw.getBank_id();
		String newpw = chpw.getNewpw();
		try {
			String SQL_QUERY2 = "UPDATE Admin_EmpChPW set password = :password WHERE bank_id = :bank_id";
			Query query2 = session.createQuery(SQL_QUERY2);
			query2.setParameter("password", newpw);
			query2.setParameter("bank_id", bank_id);
			int result = query2.executeUpdate();
			System.out.println("Rows affected: " + result);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}

		System.out.println(bank_id);
		System.out.println(newpw);

		session.getTransaction().commit();
		return chpw;
	}

}
