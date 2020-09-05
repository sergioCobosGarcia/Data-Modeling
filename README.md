# Data Modeling / Modelado de datos

## South Superstore


### Spanish


El objetivo del proyecto es, partiendo de unos datos proporcionados en una Excel, realizar varios modelos de datos en base de datos para concluir cual es el más adecuado a nivel de rendimiento, de almacenaje y de usabilidad por parte del usuario.

Las tecnologías utilizadas han sido Oracle Database 18c Express Edition Release 18.0.0.0.0 - Production Version 18.4.0.0.0, Oracle SQL Developer Version 19.2.1.247 y Oracle Data Modeler Version 20.2.0.167.

El origen de datos es el [siguiente Excel](https://justbeamit.com/c3jbc) que se encuentra en el repositorio \South_Superstore\Data_Source\South_Superstore.xlsx 

![EXCEL](https://i.ibb.co/RSsNqsS/Captura.jpg)

Para replicar el proyecto, a parte de tener el software arriba indicado instalado, se pueden utilizar los scripts de creación de base de datos proporcionados en el repositorio, que contienen la creación de las diferentes bases de datos, tablas e inserts.

Es importante matizar que los resultados pueden variar según los entornos que utilicemos ya que un mismo modelo tendrá un rendimiento muy diferente por ejemplo en Hive que en Oracle.

Como premisa general a la hora de realizar los modelados se ha tenido en cuenta la idea de que actualmente es más importante la inmediatez en los resultados post-ejecución de una consulta que el almacenamiento de la información, intentando minimizar el número de joins necesarios en el modelo normalizado para obtener la información, evitando si es posible la creación de jerarquías y copos de nieve, dando como resultado un modelo normalizado pero no altamente normalizado.

Esta forma de modelar es muy útil para entornos Big Data los cuales es interesante evitar las jerarquías y los copos de nieve para no provocar un dispersión de la tablas a través de los bloques HDFS que provocarían una lentitud en la ejecución de las consultas, en estos entornos es más interesante tener datos redundantes en "tablones" ya que el espacio en disco ya no es un problema principal en HDFS como sí lo era hace unos años, a cambio de este mayor espacio en disco debido a los datos redundantes, obtenemos una mejora importante en el rendimiento.

No obstante, cabe destacar que los resultados arrojados a nivel de rendimiento en los ejemplos desarrollados en el proyecto son meramente anecdóticos debido al número de registros disponibles en la fuente de datos, si bien pueden apreciarse ciertas diferencias a nivel de milisegundos entre las mismas consultas a través de los modelos y el número de joins a realizar que podrían ser extrapoladas a muestras de datos más grandes.

Para este ejemplo de modelización de datos se han creado 3 modelos, el modelo original, un modelo desnormalizado y un modelo normalizado.


#### Original
![Original Data Model](https://i.ibb.co/pr5kHhd/Original-Data-Model.jpg)

El modelo original ha sido creado siguiendo la estructura original de la fuente de datos, es decir, una tabla por cada pestaña del excel, no contiene relaciones.

#### Normalized
![Normalized Data Model](https://i.ibb.co/BTbyj9H/Normalized-Data-Model.jpg)

Este modelo ha sido normalizado y relacionado en base a criterios de rendimiento y necesidad ya que ha sido necesario crear la jerarquía de Categoría, Subcategoría y Producto para poder relacionarla con la tabla de Targets, del mismo modo, se ha creído conveniente pese a estar en un modelo normalizado no crear un copo de nieve para las localizaciones para evitar múltiples join lo que reduciría el tamaño de la base de datos pero afectaría al rendimiento y sobre todo a la usabilidad por parte del usuario que necesitaría realizar múltiples joins para obtener la información de la localización.

#### Denormalized
![Denormalized Data Model](https://i.ibb.co/kq91jsR/Denormalized-Data-Model.jpg)

Este modelo ha sido desnormalizado hasta el máximo posible quedando únicamente 2 tablas que no han podido ser "unificadas" debido a que la información que contienen está a distinto nivel de granularidad, la tabla de target contiene información de objetivos a nivel de subcategorías por año y la tabla de Orders contiene la información a nivel de pedidos y productos, no obstante si se han "unificado" las tablas Reward_Customer y Returns añadiendo campos FLAG para añadir estos indicadores de los campos en la tablas pudiendo así suprimir 2 tablas, esto puede perjudicar la usabilidad a nivel de usuario ya que ciertas consultas pueden requerir de la cláusula Distinct pero en ciertos entornos como un DataWarehouse en HIVE obtendríamos un mejor rendimiento gracias a esta unificación de información de 3 tablas en una única tabla, este diseño no contiene relaciones fisicas creadas.


### Rendimiento

#### Prueba 1: Gran diferencia en el número de Joins de la consulta

Se pretende obtener los productos, subcategorías y categorías cuyas subcategorías tengan más ventas que las esperadas.
Para ello ejecutamos las querys indicadas abajo y comparamos el rendimiento de los tres modelos obteniendo los mismos resultados.

*En esta prueba la query para los modelos Original y Denormalized es la misma.

![Test 1 ESP]( https://i.ibb.co/crrbkQv/Tabla-ESP-Test1.jpg)


##### Querys
###### Original
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 
![Original Data Model]( https://i.ibb.co/0m8N8Tc/original11.jpg)


###### Normalized
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


###### Denormalized
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 
![Denormalized Data Model](https://i.ibb.co/Q9Q6vFt/denormalized.jpg)


#### Prueba 2: Poca diferencia en el número de Joins de la consulta
Se pretende los nombres de los clientes que han tenido recompensa.
Para ello ejecutamos las querys indicadas abajo y comparamos el rendimiento de los tres modelos obteniendo los mismos resultados.

*Debido a la alta desnormalizacion del modelo Denormalized es necesario aplicar un distinct en la consulta.

![Test 2 ESP]( https://i.ibb.co/tY8QXNy/Tabla-ESP-Test2.jpg)



##### Querys
###### Original
  ~~~
    SELECT distinct orders.customer_name,orders.segment from orders
  inner join reward_customer
  on reward_customer.id_customer = orders.customer; --original
  ~~~
![Original Data Model](https://i.ibb.co/ykWhDr5/original.jpg)


  ###### Normalized
  ~~~
    SELECT customer_name,segment from customer where flag_reward = 1;
~~~
![Normalized Data Model](https://i.ibb.co/Wcz0k2V/normalized2.jpg)


###### Denormalized
~~~	
	  SELECT distinct customer_name,segment from orders where flag_customer_reward = 1;
~~~
![Denormalized Data Model](https://i.ibb.co/YXzQpb9/denormalized2.jpg)


### Conclusión general

En líneas generales y extrapolando estos resultados a muestras más grandes podemos ver que los modelos desnormalizados sin relaciones (Denormalized y Original) pueden llegar a funcionar ligeramente más rápido que un modelo normalizado, no obstante, podemos ver que esta mejora del rendimiento únicamente se ha evidenciado en la prueba 1 donde teníamos un número elevado de joins en la consulta del modelo normalizado.

* Los resultados en segundos de las querys son de la primera ejecución antes de estar cacheado el resultado.


### English


The objective of the project is, starting from data provided in an Excel, to make several data models in a database to conclude which is the most suitable at the level of performance, storage and usability by the user.

The technologies used were Oracle Database 18c Express Edition Release 18.0.0.0 - Production Version 18.4.0.0.0, Oracle SQL Developer Version 19.2.1.247 and Oracle Data Modeler Version 20.2.0.167.

The data source is the [following Excel](https://justbeamit.com/c3jbc) which is located in the repository \South_Superstore\Data_Source\South_Superstore.xlsx

![EXCEL](https://i.ibb.co/RSsNqsS/Captura.jpg)

To replicate the project, apart from having the above software installed, you can use the database creation scripts provided in the repository, which contain the creation of the different databases, tables and inserts.

It is important to point out that the results may vary according to the environments we use, since the same model will have a very different performance, for example, in Hive than in Oracle.

As a general premise when performing the modeling, we have taken into account the idea that nowadays it is more important the immediacy in the results after the execution of a query than the storage of the information, trying to minimize the number of joins required in the normalized model to obtain the information, avoiding if possible the creation of hierarchies and snowflakes, resulting in a normalized model but not highly normalized.

This way of modeling is very useful for Big Data environments which is interesting to avoid hierarchies and snowflakes in order not to cause a dispersion of the tables through the HDFS blocks that would cause a slow execution of the queries, in these environments, sometimes, it is more interesting to have redundant data in tables since the disk space is no longer a main problem in HDFS as it was some years ago, in exchange of this higher disk space due to the redundant data, we obtain an important improvement in the performance.

However, it should be noted that the results shown at the performance level in the examples developed in the project are merely anecdotal due to the number of records available in the data source, although some differences can be seen at the millisecond level between the same queries through the models and the number of joins to be made that could be extrapolated to larger data samples.

For this example of data modelling, 3 models have been created, the original model, a denormalized model and a normalized model.


#### Original
![Original Data Model](https://i.ibb.co/pr5kHhd/Original-Data-Model.jpg)

The original model has been created following the original structure of the data source, i.e. one table for each tab in the excel, without relationships.

#### Normalized
![Normalized Data Model](https://i.ibb.co/BTbyj9H/Normalized-Data-Model.jpg)

This model has been normalized and related based on performance and necessity criteria since it has been necessary to create the hierarchy of Category, Subcategory and Product to be able to relate it to the Targets table, in the same way, it has been considered convenient despite being in a normalized model not to create a snowflake for the locations to avoid multiple joins which would reduce the size of the database but would affect the performance and above all the usability by the user who would need to perform multiple joins to obtain the location information.

#### Denormalized
![Denormalized Data Model](https://i.ibb.co/kq91jsR/Denormalized-Data-Model.jpg)

This model has been denormalized as much as possible, leaving only 2 tables that could not be "unified" because the information they contain is at different levels of granularity, the target table contains information on targets at the level of subcategories by year and the Orders table contains information at the level of orders and products, however if the tables Reward_Customer and Returns have been "unified" adding FLAG fields to add these indicators of the fields in the table and thus being able to suppress 2 tables, this can harm the usability at user level since certain consultations can require the Distinct clause but in certain environments like a DataWarehouse in HIVE we would obtain a better performance thanks to this unification of information of 3 tables in a single table, this design does not contain created physical relations.


### Performance

#### Test 1: Big difference in the number of Joins in the query

The aim is to obtain the products, subcategories and categories whose subcategories have more sales than expected.
To do this we execute the queries below and compare the performance of the three models obtaining the same results.

*In this test the query for the Original and Denormalized models is the same.

![Test 1 ENG]( https://i.ibb.co/vq8jDBf/Tabla-ENG-Test1.jpg)



##### Querys
###### Original
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 
![Original Data Model]( https://i.ibb.co/0m8N8Tc/original11.jpg) 


###### Normalized
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


###### Denormalized
~~~
    SELECT category,subcategory,product_name,sales,sales_target FROM orders
  INNER JOIN TARGET
  ON  target.product_subcategory = orders.subcategory
  where sales > sales_target;
 ~~~ 
![Denormalized Data Model](https://i.ibb.co/Q9Q6vFt/denormalized.jpg)

#### Test 2: Little difference in the number of Joins in the query
The names of customers who have been rewarded are intended.
To do this we execute the queries below and compare the performance of the three models obtaining the same results.

*Due to the high denormality of the Denormalized model it is necessary to apply a distinct in the query.

![Test 2 ENG]( https://i.ibb.co/RN2dLpF/Tabla-ENG-Test2.jpg)



##### Querys
###### Original
  ~~~
    SELECT distinct orders.customer_name,orders.segment from orders
  inner join reward_customer
  on reward_customer.id_customer = orders.customer; --original
  ~~~
![Original Data Model](https://i.ibb.co/ykWhDr5/original.jpg)


  ###### Normalized
  ~~~
    SELECT customer_name,segment from customer where flag_reward = 1;
~~~
![Normalized Data Model](https://i.ibb.co/Wcz0k2V/normalized2.jpg)


###### Denormalized
~~~	
	  SELECT distinct customer_name,segment from orders where flag_customer_reward = 1;
~~~
![Denormalized Data Model](https://i.ibb.co/YXzQpb9/denormalized2.jpg)


### General conclusion

In general terms and extrapolating these results to larger samples we can see that denormalized models without relationships (Denormalized and Original) can work slightly faster than a standard model, however, we can see that this performance improvement has only been evident in test 1 where we had a high number of joins in the consultation of the standard model.

* The results in seconds of the queries are from the first execution before the result is cached.
