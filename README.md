# Portfolio

Installation en local : 
. git clone https://github.com/ThomasWuaro/Portfolio.git 
. créer un fichier .env.local et ajouter votre base de donnée ( ex: DATABASE_URL="mysql://db_user:db_password@127.0.0.1:3306/db_name?serverVersion=5.7" ) 
. cd Portfolio 
. composer install 
. php bin/console doctrine:database:create 
. php bin/console doctrine:database:import portfoliobdd.sql 
. symfony server:start 

