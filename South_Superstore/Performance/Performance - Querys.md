

# Test 1: Big difference in the number of Joins in the practice


## Querys
### Original
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 



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



### Denormalized
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 


# Test 2: Little difference in the number of Joins in the practice



## Querys
### Original
  ~~~
    SELECT distinct orders.customer_name,orders.segment from orders
  inner join reward_customer
  on reward_customer.id_customer = orders.customer; 
  ~~~

### Normalized
   ~~~   
    SELECT customer_name,segment from customer where flag_reward = 1;
~~~



### Denormalized
~~~	
	  SELECT distinct customer_name,segment from orders where flag_customer_reward = 1;
~~~



