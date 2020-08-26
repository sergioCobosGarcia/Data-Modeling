# Spanish
## Rendimiento

### Prueba 1: Gran diferencia en el número de Joins de la consulta

Se pretende obtener los productos, subcategorías y categorías cuyas subcategorías tengan más ventas que las esperadas.
Para ello ejecutamos las querys indicadas abajo y comparamos el rendimiento de los tres modelos obteniendo los mismos resultados.
*En esta prueba la query para los modelos Original y Denormalized es la misma.

Modelo	Tiempo (Segundos)	Numero de Joins	Registros
Original	0,005	1	34
Normalized	0,019	4	34
Denormalized	0,005	1	34

#### Querys
##### Original
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 
![Original Data Model]( https://i.ibb.co/0m8N8Tc/original11.jpg) (INSETAT FOTO ORIGINAL11.jpg)


##### Normalized
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


##### Denormalized
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 
![Denormalized Data Model](https://i.ibb.co/Q9Q6vFt/denormalized.jpg)


### Prueba 2: Poca diferencia en el número de Joins de la consulta
Se pretende los nombres de los clientes que han tenido recompensa.
Para ello ejecutamos las querys indicadas abajo y comparamos el rendimiento de los tres modelos obteniendo los mismos resultados.
*Debido a la alta desnormalizacion del modelo Denormalized es necesario aplicar un distinct en la consulta.

Modelo	Tiempo	Numero de Joins	Registros
Original	0,015	1	233
Normalized	0,015	0	233
Denormalized	0,017	0	233



#### Querys
##### Original
  ~~~
    SELECT distinct orders.customer_name,orders.segment from orders
  inner join reward_customer
  on reward_customer.id_customer = orders.customer; --original
  ~~~
![Original Data Model](https://i.ibb.co/ykWhDr5/original.jpg)


  ##### Normalized
  ~~~
    SELECT customer_name,segment from customer where flag_reward = 1;
~~~
![Normalized Data Model](https://i.ibb.co/Wcz0k2V/normalized2.jpg)


##### Denormalized
~~~	
	  SELECT distinct customer_name,segment from orders where flag_customer_reward = 1;
~~~
![Denormalized Data Model](https://i.ibb.co/YXzQpb9/denormalized2.jpg)


## Conclusión general

En líneas generales y extrapolando estos resultados a muestras más grandes podemos ver que los modelos desnormalizados sin relaciones (Denormalized y Original) pueden llegar a funcionar ligeramente más rápido que un modelo normalizado, no obstante, podemos ver que esta mejora del rendimiento únicamente se ha evidenciado en la prueba 1 donde teníamos un número elevado de joins en la consulta del modelo normalizado.

* Los resultados en segundos de las querys son de la primera ejecución antes de estar cacheado el resultado.
# English
## Performance

### Test 1: Big difference in the number of Joins in the practice

The aim is to obtain the products, subcategories and categories whose subcategories have more sales than expected.
To do this we execute the queries below and compare the performance of the three models obtaining the same results.
*In this test the query for the Original and Denormalized models is the same.


Model	Time (Seconds)	Number of Joins	Records
Original	0,005	1	34
Normalized	0,019	4	34
Denormalized	0,005	1	34


#### Querys
##### Original
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 
![Original Data Model]( https://i.ibb.co/0m8N8Tc/original11.jpg) (INSETAT FOTO ORIGINAL11.jpg)


##### Normalized
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


##### Denormalized
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 
![Denormalized Data Model](https://i.ibb.co/Q9Q6vFt/denormalized.jpg)

### Test 2: Little difference in the number of Joins in the practice
The names of customers who have been rewarded are intended.
To do this we execute the queries below and compare the performance of the three models obtaining the same results.
*Due to the high denormality of the Denormalized model it is necessary to apply a distinct in the query.

Model	Time (Seconds)	Number of Joins	Records
Original	0,015	1	233
Normalized	0,015	0	233
Denormalized	0,017	0	233


#### Querys
##### Original
  ~~~
    SELECT distinct orders.customer_name,orders.segment from orders
  inner join reward_customer
  on reward_customer.id_customer = orders.customer; --original
  ~~~
![Original Data Model](https://i.ibb.co/ykWhDr5/original.jpg)


  ##### Normalized
  ~~~
    SELECT customer_name,segment from customer where flag_reward = 1;
~~~
![Normalized Data Model](https://i.ibb.co/Wcz0k2V/normalized2.jpg)


##### Denormalized
~~~	
	  SELECT distinct customer_name,segment from orders where flag_customer_reward = 1;
~~~
![Denormalized Data Model](https://i.ibb.co/YXzQpb9/denormalized2.jpg)


## General conclusion

In general terms and extrapolating these results to larger samples we can see that denormalized models without relationships (Denormalized and Original) can work slightly faster than a standard model, however, we can see that this performance improvement has only been evident in test 1 where we had a high number of joins in the consultation of the standard model.

* The results in seconds of the queries are from the first execution before the result is cached.

