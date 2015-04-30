package com.Cart.start.manager;
import java.util.List;


import org.hibernate.HibernateException;

import com.Cart.start.dao.UsersDAO;
import com.Cart.start.model.Users;

public class UsersManager{

		private static UsersDAO usersDAO;

		public UsersManager() {
			usersDAO = new UsersDAO();
		}

		public void persist(Users entity) {
			try{
				usersDAO.openCurrentSessionwithTransaction();
				usersDAO.persist(entity);
			}
			catch(HibernateException e){
				System.out.println(e);
				usersDAO.getCurrentTransaction().rollback();
			}
			finally{
				usersDAO.closeCurrentSessionwithTransaction();
			}
		}

		public void update(Users entity) {
			try{
				usersDAO.openCurrentSessionwithTransaction();
				usersDAO.update(entity);
			}
			catch(HibernateException e){
				System.out.println(e);
			}
			finally{
				usersDAO.closeCurrentSessionwithTransaction();
			}
		}

		public Users findById(String id) {
			Users Users=null;
			try{
				usersDAO.openCurrentSessionwithTransaction();
				Users = usersDAO.findById(id);
			}
			catch(HibernateException e){
				System.out.println(e);
			}
			finally{
				usersDAO.closeCurrentSessionwithTransaction();
			}
			return Users;
		}
		public Boolean isPresent(String email){
			Users users=null;
			Boolean flag=true;
			try{
				usersDAO.openCurrentSessionwithTransaction();
				users=usersDAO.findById(email);
				if(users==null){
					flag=false;
				}
			}
			catch(HibernateException e){
				System.out.println(e);
			}
			finally{
				usersDAO.closeCurrentSessionwithTransaction();
			}
			return flag;
		}
		

		public void delete(String id) {
			Users Users;
			try{
				usersDAO.openCurrentSessionwithTransaction();
				Users = usersDAO.findById(id);
				usersDAO.delete(Users);
			}
			
			catch(HibernateException e){
				System.out.println(e);
			}
			finally{
				usersDAO.closeCurrentSessionwithTransaction();
			}
		}

		public List<Users> findAll() {
			List<Users> Users=null;
			try{
				usersDAO.openCurrentSession();
				Users = usersDAO.findAll();
			}
			catch(HibernateException e){
				System.out.println(e);
			}
			finally{
				usersDAO.closeCurrentSessionwithTransaction();
			}
			return Users;
		}

		public void deleteAll() {
			try{
				usersDAO.openCurrentSessionwithTransaction();
				usersDAO.deleteAll();
			}
			catch(HibernateException e){
				System.out.println(e);
			}
			finally{
				usersDAO.closeCurrentSessionwithTransaction();
			}
		}

		public UsersDAO UsersDAO() {
			return usersDAO;
		}
}
