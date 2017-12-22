package com.niit.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingbackend.dao.ProductDAO;
import com.niit.shoppingbackend.dto.Product;

public class ProductTestCase {
	

	private static AnnotationConfigApplicationContext context;

	private static ProductDAO productDAO;

	private Product product;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingbackend");
		context.refresh();
		productDAO = (ProductDAO)context.getBean("productDAO");

	}
		/*@Test
		public void testCRUDProduct() {
				//create operation
			product = new Product();
			
			product.setName("DECORATIVE CANDLES");
			product.setBrand("HANDICRAFT");
			product.setDescription("this is used for lightening");
			product.setUnitPrice(2500);
			product.setActive(true);
			product.setCategoryId(3);
			product.setSupplierId(3);
		
		assertEquals("Something went wrong while inserting a new products!", true, productDAO.add(product));
		
		//reading and updating the category
		product = productDAO.get(2);
		product.setName("stuff toys");
		assertEquals("Something went wrong while updating the existing record!", true, productDAO.update(product));
		
		assertEquals("Something went wrong while deleting the existing record!", true, productDAO.delete(product));
		
		//List
		assertEquals("Something went wrong while fetching the list of products!", 6, productDAO.list().size());
		
		}*/
	
	@Test
	public void testListActiveProducts(){
		assertEquals("Something went wrong while fetching the list of products!", 5, productDAO.listActiveProducts().size());
		
	}
	
	@Test
	public void testListActiveProductsByCategory(){
		assertEquals("Something went wrong while fetching the list of products!", 3, productDAO.listActiveProductsByCategory(3).size());
		assertEquals("Something went wrong while fetching the list of products!", 2, productDAO.listActiveProductsByCategory(1).size());
		
	}
	

	@Test
	public void testGetLatestActiveProduct(){
		assertEquals("Something went wrong while fetching the list of products!", 3, productDAO.getLatestActiveProducts(3).size());
		
	}
	
}