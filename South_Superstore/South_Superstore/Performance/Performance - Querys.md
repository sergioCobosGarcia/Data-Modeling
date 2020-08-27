

# Test 1: Big difference in the number of Joins in the practice

![Test 1 ENG]( https://i.ibb.co/vq8jDBf/Tabla-ENG-Test1.jpg)

## Querys
### Original
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 

![Original Data Model]( https://i.ibb.co/0m8N8Tc/original11.jpg)

### Normalized
~~~
SELECT category,subcategory,product,sales,sales_target FROM CATEGORY
  INNER JOIN SUBCATEGORY
  ON SUBCATEGORY.CATEGORY_ID = CATEGORY.ID_CATEGORY
  INNER JOIN TARGET
  ON  TARGET.ID_SUBCATEGORY = SUBCATEGORY.ID_SUBCATEGORY
  INNER JOIN PRODUCT 
  ON  SUBCATEGORY.ID_SUBCATEGORY = PRODUCT.SUBCATEGORY_ID
  INNER JOIN ORDERS
  ON PRODUCT.ID_PRODUCT = ORDERS.PRODUCT_ID 
  where sales > sales_target;

~~~

![Normalized Data Model](https://i.ibb.co/56W5DBt/normalized.jpg)

### Denormalized
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 

![Denormalized Data Model](https://i.ibb.co/Q9Q6vFt/denormalized.jpg)

# Test 2: Little difference in the number of Joins in the practice

![Test 2 ENG]( https://i.ibb.co/RN2dLpF/Tabla-ENG-Test2.jpg)

## Querys
### Original
  ~~~
    SELECT distinct orders.customer_name,orders.segment from orders
  inner join reward_customer
  on reward_customer.id_customer = orders.customer; 
  ~~~

![Original Data Model](https://i.ibb.co/ykWhDr5/original.jpg)

### Normalized
   ~~~   
    SELECT customer_name,segment from customer where flag_reward = 1;
~~~

![Normalized Data Model](https://i.ibb.co/Wcz0k2V/normalized2.jpg)

### Denormalized
~~~	
	  SELECT distinct customer_name,segment from orders where flag_customer_reward = 1;
~~~

![Denormalized Data Model](https://i.ibb.co/YXzQpb9/denormalized2.jpg)


