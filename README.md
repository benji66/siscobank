# siscobank

#### 18 de diciembre de 2023 por [Francisco Gimenez](/)

Realizado en ambiente linux (ubuntu).


## Requisitos previos

- rvm (ruby 3.0.3)
- rails 7.1
- servidor Postgres  

## Descargar repositorio git

~~~
git clone https://github.com/benji66/siscobank.git
~~~
##### Creacion de dependencias

~~~
rails bundle install
~~~

##### Datos de conexion a db

crear un archivo .env y sustituir los valores:

~~~
SISCOBANK_DATABASE_PASSWORD = ###
~~~

verificar el archivo config/database.yml y colocar los valores correspondientes

##### Creacion de base de datos 

~~~
rails db:create
~~~

##### Migraciones de tablas del sistema

~~~
rails db:migrate
~~~

##### Datos precargados 

~~~
rails db:seed
~~~

##### Usuario de acceso 

~~~
email: admin@admin.com
password: admin123
~~~





