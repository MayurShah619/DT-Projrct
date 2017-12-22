package com.niit.shoppingbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingbackend.dao.CategoryDAO;
import com.niit.shoppingbackend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	//private static List<Category> categories = new ArrayList<>();
	
	/*static{	
		Category category = new Category();
		
		//adding first category
		category.setId(1);
		category.setName("Home Decor");
		category.setDescription("this is home decoration");
		category.setImageURL("");
		
		categories.add(category);
		
			category = new Category();
		
		//adding second category
		category.setId(2);
		category.setName("painting");
		category.setDescription("this is painting");
		category.setImageURL("");
		
		categories.add(category);
		
			category = new Category();
		
		//adding third category
		category.setId(3);
		category.setName("recycle");
		category.setDescription("this is recycled products");
		category.setImageURL("");
		
		categories.add(category);
	}*/
	
	@Override
	public List<Category> list() {
		
		//String selectActiveCategory = "FROM CATEGORY WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Category WHERE active = :active");
		
		
		query.setParameter("active", true);
		
		return query.getResultList();
	}

	/*
	 * GETTING SINGLE CATEGORY BASED ON ID
	 * 
	 */
	@Override
	public Category get(int id) {
		
		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));
		
	}

	@Override
	
	public boolean add(Category category) {
		
		try{
			//add the category to the database table
			sessionFactory.getCurrentSession().persist(category);
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
		
	
	}

	//updating a single category
	
	@Override
	public boolean update(Category category) {
		
		
		try{
			//add the category to the database table
			sessionFactory.getCurrentSession().update(category);
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
		
		
	}

	@Override
	public boolean delete(Category category) {
		
		category.setActive(false);
		
		try{
			//add the category to the database table
			sessionFactory.getCurrentSession().update(category);
			return true;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

}
