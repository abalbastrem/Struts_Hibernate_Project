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
			ligas = (List<Liga>)session.createQuery("FROM Liga").list();
			for (Liga liga : ligas) {
				System.out.println(liga.getId() + " - " + liga.getEquipos());
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		session.close();
		return ligas;
   }
   
}
