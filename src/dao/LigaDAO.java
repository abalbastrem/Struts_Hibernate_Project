package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import bean.HibernateUtil;
import bean.Liga;

public class LigaDAO {
	
	public static List<Liga> getLigas() {
		List<Liga> ligas = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			ligas = (List<Liga>)session.createQuery("FROM Persona").list();
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.print("!!!!!!!!!!!!!!!!!!!");
		return ligas;
   }
   
}
