FUNDAMENTOS DE BASES DE DATOS
Inicios:

-   Necesidad de almacenar datos
-   Datos e informacion impresa en papiros
-   Microfilm o datos registrados en plastico como los rollos de camara antigua
-   Medios digitales como CD.
-   Almacenamiento en la nube

Que son las BD?

-   Vonn Newman
-   Se dividen en dos grupos: Relacionales y no relacionales
-   Relacionales: SQL Server, Oracle, Postgre SQL, MySQL, MariaDB
-   No relacionales: Cassandra, elasticsearch, newo4J, Mongo
-   Como servicios: Administrados y Auto-administrados.

Inicios de las bases de datos relacionales.
Las Reglas y mandamientos de Edgar Frank Ted Codd

Regla 0: Regla de fundación.
a) Cualquier sistema que se proclame como relacional, debe ser capaz de gestionar sus bases de datos enteramente mediante sus capacidades relacionales.

Regla 1: Regla de la información.
a) Todos los datos deben estar almacenados en las tablas
b) Esas tablas deben cumplir las premisas del modelo relacional
c) No puede haber información a la que accedemos por otra vía

Regla 2: Regla del acceso garantizado.
a) Cualquier dato es accesible sabiendo la clave de su fila y el nombre de su columna o atributo
b) Si a un dato no podemos acceder de esta forma, no estamos usando un modelo relacional

Regla 3: Regla del tratamiento sistemático de valores nulos.
a) Esos valores pueden dar significado a la columna que los contiene
b) El SGBD debe tener la capacidad de manejar valores nulos
c) El SGBD reconocerá este valor diferenciándolo de cualquier otro
d) El SGBD deberá aplicársele la lógica apropiada
e) Es un valor independiente del tipo de datos de la columna

Regla 4: Catálogo dinámico en línea basado en el modelo relacional.
a) El catálogo en línea es el diccionario de datos
b) El diccionario de datos se debe de poder consultar usando las mismas técnicas que para los datos
c) Los metadatos, por tanto, se organizan también en tablas relacionales
d) Si SELECT es una instrucción que consulta datos, también será la que consulta los metadatos

Regla 5: Regla comprensiva del sublenguaje de los datos completo.
a) Al menos tiene que existir un lenguaje capaz de hacer todas las funciones del SGBD
b) No puede haber funciones fuera de ese lenguaje
c) Puede haber otros lenguajes en el SGBD para hacer ciertas tareas
d) Pero esas tareas también se deben poder hacer con el “lenguaje completo”

Regla 6: Regla de actualización de vistas.
a) Las vistas tienen que mostrar información actualizada
b) No puede haber diferencias entre los datos de las vistas y los datos de las tablas base

Regla 7: Alto nivel de inserción, actualización, y cancelación.
a) La idea es que el lenguaje que maneja la base de datos sea muy humano
b) Eso implica que las operaciones del lenguaje de manipulación de los datos (DML) trabajen con conjuntos de filas a la vez
c) Para modificar, eliminar o añadir datos, no hará falta programar de la forma en la que lo hacen los lenguajes de tercera generación como C o Java

Regla 8: Independencia física de los datos.
a) Cambios en la física de la BD no afecta a las aplicaciones ni a los esquemas lógicos
b) El acceso a las tablas (elemento lógico) no cambia porque la física de la base de datos cambie

Regla 9: Independencias lógicas de los datos.
a) Cambios en el esquema lógico (tablas) de la BD no afectan al resto de esquemas
b) Si cambiamos nombres de tabla, o de columna o modificamos información de las filas, las aplicaciones (esquema externo) no se ven afectadas
c) Es más difícil de conseguir

Regla 10: Independencia de la integridad.
a) Las reglas de integridad (restricciones) deben de ser gestionadas y almacenadas por el SGBD

Regla 11: Independencia de la distribución.
a) Que la base de datos se almacene o gestione de forma distribuida en varios servidores, no afecta al uso de esta ni a la programación de las aplicaciones de usuario
b) El esquema lógico es el mismo independientemente de si la BD es distribuida o no

Regla 12: La regla de la no subversión.
a) La base de datos no permitirá que exista un lenguaje o forma de acceso, que permita saltarse las reglas anteriores

Entidad fuerte: no depende de otra
Entidad debil: depende de otra

La representacion de una entidad en diagrama es un rectangulo
La representacion de un atributo es un ovalo
La representacion de un atributo calculado es un ovalo con lineas continuas
La representacion de un atributo unico con llave primaria es un ovalo con texto subrayado.


Formas Normales (normalizacion de una base de datos)
1FN = Sin campos repetidos
2FN = Cada tabla debe tener una clave unica
3FN = Los campos que no son clave no deben tener dependencias.
4FN = Los campos multivaluados se identifican con una clave unica


RDBMS: https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-database 

Instalar mysql en windows con wsl:

1. sudo apt update
2. Open your WSL terminal (ie. Ubuntu).
3. Update your Ubuntu packages: sudo apt update
4. Once the packages have updated, install MySQL with: sudo apt install mysql-server
5. Confirm installation and get the version number: mysql --version

-------
1. Start a MySQL server: sudo /etc/init.d/mysql start
2. Start the security script prompts: sudo mysql_secure_installation
3. The first prompt will ask whether you’d like to set up the Validate Password Plugin, which can be used to test the strength of your MySQL password. You will then set a password for the MySQL root user, decide whether or not to remove anonymous users, decide whether to allow the root user to login both locally and remotely, decide whether to remove the test database, and, lastly, decide whether to reload the privilege tables immediately.

To open the MySQL prompt, enter: sudo mysql
To see what databases you have available, in the MySQL prompt, enter: SHOW DATABASES;
To create a new database, enter: CREATE DATABASE database_name;
To delete a database, enter: DROP DATABASE database_name;


Instalar Postgres
sudo apt update
sudo apt install postgresql postgresql-contrib
psql --version

There are 3 commands you need to know once PostgreSQL is installed:

for checking the status of your database.
    sudo service postgresql status
to start running your database.
    sudo service postgresql start 
to stop running your database.
    sudo service postgresql stop

The default admin user, postgres, needs a password assigned in order to connect to a database. To set a password:

Enter the command: sudo passwd postgres
You will get a prompt to enter your new password.
Close and reopen your terminal.

To run PostgreSQL with psql shell:

Start your postgres service: 
    sudo service postgresql start
Connect to the postgres service and open the psql shell: 
    sudo -u postgres psql

To exit postgres=# enter: \q or use the shortcut key: Ctrl+D



Install MongoDB
To install MongoDB (version 5.0) on WSL (Ubuntu 20.04):

Open your WSL terminal (ie. Ubuntu) and go to your home directory: cd ~
Update your Ubuntu packages: sudo apt update
Import the public key used by the MongoDB package management system: wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
Create a list file for MongoDB: echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
Reload local package database: sudo apt-get update
Install MongoDB packages: sudo apt-get install -y mongodb-org
Confirm installation and get the version number: mongod --version
Make a directory to store data: mkdir -p ~/data/db
Run a Mongo instance: sudo mongod --dbpath ~/data/db
Check to see that your MongoDB instance is running with: ps -e | grep 'mongod'
To exit the MongoDB Shell, use the shortcut keys: Ctrl + C

