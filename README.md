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

##### Puntos adicionales 

~~~
- En un principio la idea era que el mismo actualizador de personas, usara la misma tabla de usuarios. Por ese motivo las migraciones estan reflejadas de esa manera.

- Se intento usar la plantilla adminlte para acelerar la interfaz grafica pero al final solo se pudo configurar el bootstrap a pesar de que no se uso por completo

- Ya que es la primera vez que manejo este framework no pude completar el ejercicio pero planeo continuarlo ya que me parecion un framework bastante interesante

~~~





