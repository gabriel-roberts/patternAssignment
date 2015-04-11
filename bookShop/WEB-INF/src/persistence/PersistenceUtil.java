package persistence;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entity.Customer;


public class PersistenceUtil implements Serializable{
private static final long serialVersionUID = 1L;

	
	protected static EntityManagerFactory emf = 
			Persistence.createEntityManagerFactory("bookshop"); 	
	
	
	public static void persist(Object entity) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(entity);
		em.getTransaction().commit();
		em.close();
	}

	public static void remove(Object entity) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Object mergedEntity = em.merge(entity);
		em.remove(mergedEntity);
		em.getTransaction().commit();
		em.close();
	}
	
	public static Object merge(Object entity) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		entity = em.merge(entity);
		em.getTransaction().commit();		
		em.close();
		return entity;
	}

	public static EntityManager createEM() {
		return emf.createEntityManager();
	}
		public static List<Customer> findAllCustomers(){
			EntityManager em = emf.createEntityManager();
			Query allCustomers = em.createNamedQuery("Customer.findAll");
			List<Customer> customers = (List<Customer>) allCustomers.getResultList();
			em.close();
			return customers;		
			}


			public static Customer findCustomerByUsername(String username){
			
			EntityManager em = emf.createEntityManager();
			Query customersByName = em.createNamedQuery("Customer.findByUsername");
			customersByName.setParameter("username", username);
			List<Customer> customers = (List<Customer>) customersByName.getResultList();
			em.close();		
			if (customers.size() == 0)
				return null;
			else 
				return customers.get(0);
			}
			
			public static Customer findCustomerByUsernameAndPassword(String username, String password){
				
				EntityManager em = emf.createEntityManager();
				Query customersByLoginIn = em.createNamedQuery("Customer.findByUsernameAndPassword");
				customersByLoginIn.setParameter("username", username);
				customersByLoginIn.setParameter("password", password);				
				List<Customer> customers = (List<Customer>) customersByLoginIn.getResultList();
				em.close();		
				if (customers.size() == 0)
					return null;
				else 
					return customers.get(0);
				}
}
