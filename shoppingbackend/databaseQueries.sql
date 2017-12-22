CREATE TABLE Category (

	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id)
	
);

 INSERT INTO category (name,description,image_url,is_active) VALUES ('WOODEN WORK','THIS IS THE DESCRIPTION OF WOODEN ITEMS!','CAT_3.pgn',true);
 INSERT INTO category (name,description,image_url,is_active) VALUES ('POTTERY','THIS IS THE DESCRIPTION OF POTTERY ITEMS!','CAT_4.pgn',true);
 INSERT INTO category (name,description,image_url,is_active) VALUES ('METAL WORK','THIS IS THE DESCRIPTION OF METAL ITEMS!','CAT_5.pgn',true);
 
 CREATE TABLE user_detail(
 
 	id IDENTITY,
 	first_name VARCHAR(50),
 	last_name VARCHAR(50),
 	role VARCHAR(50),
 	enabled BOOLEAN,
 	password VARCHAR(60),
 	email VARCHAR(100),
 	contact_number VARCHAR(15),
 	CONSTRAINT pk_user_id PRIMARY KEY(id),
 );
 
 
 INSERT INTO user_detail
 (first_name, last_name, role, enabled, password, email, contact_number)
 VALUES ('Virat', 'Kohli', 'ADMIN', true, 'admin', 'vk@gmail.com', '8888888888');
 
 INSERT INTO user_detail
 (first_name, last_name, role, enabled, password, email, contact_number)
 VALUES ('Ravindra', 'Jadeja', 'SUPPLIER', true, '12345', 'rj@gmail.com', '9999999999');
 
 INSERT INTO user_detail
 (first_name, last_name, role, enabled, password, email, contact_number)
 VALUES ('Ravichandra', 'Ashwin', 'SUPPLIER', true, '12345', 'ra@gmail.com', '7777777777');
 
 
 CREATE TABLE product(
 	id IDENTITY,
 	code VARCHAR(20),
 	name VARCHAR(50),
 	brand VARCHAR(50),
 	description VARCHAR(255),
 	unit_price DECIMAL(10,2),
 	quantity INT,
 	is_active BOOLEAN,
 	category_id INT,
 	supplier_id INT,
 	purchases INT DEFAULT 0,
 	views INT DEFAULT 0,
 	CONSTRAINT pk_product_id PRIMARY KEY(id),
 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category(id),
 	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),
 	
 );
 
 INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
 VALUES ('PRDABC123DEFX', 'WOODEN CRAFT', 'ZAORI', 'this is one of the best usable product for home!', 12000, 5, true, 3, 2 );
 
 INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
 VALUES ('PRDDEF123DEFX', 'SOFT TOY', 'LEGO', 'LOVABLE TO ALL!', 6000, 2, true, 3, 3 );
 
 INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
 VALUES ('PRDABC123WGTX', 'BLUE POTTERY', 'AUREA', 'this is one of the finest pottery!', 1999, 5, true, 3, 2 );
 
 INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
 VALUES ('PRDABC3DEFX', 'METAL WORK', 'EXCLUSIVELANE', 'this is one of the best usable product for home!', 16000, 3, true, 1, 2 );
 
 INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
 VALUES ('PRDABCWWFX', 'JEWELLERY BOX', 'HANDISTORE', 'this is one of the best usable product for home!', 12000, 5, true, 1, 3 );
 
 
 --the cart line table to store the cart details
 
 
 CREATE TABLE cart_line(
 
 	id IDENTITY,
 	cart_id int,
 	total DECIMAL(10,2),
 	product_id int,
 	product_count int,
 	buying_price DECIMAL(10,2),
 	is_available boolean,
 	CONSTRAINT fk_cartline_cart_id FOREIGN KEY (cart_id) REFERENCES cart(id),
 	CONSTRAINT fk_cartline_product_id FOREIGN KEY (product_id) REFERENCES product (id),
 	CONSTRAINT pk_cartlines_id PRIMARY KEY (id)
 
 );
 
 
 
 
 
 