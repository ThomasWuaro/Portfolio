# Portfolio

Installation en local : 
  1) git clone https://github.com/ThomasWuaro/Portfolio.git 
  2) créer un fichier .env.local et ajouter votre base de donnée ( ex: DATABASE_URL="mysql://db_user:db_password@127.0.0.1:3306/db_name?serverVersion=5.7" ) 
  3) cd Portfolio 
  4) composer install 
  5) php bin/console doctrine:database:create 
  6) php bin/console doctrine:database:import portfoliobdd.sql 
  7) symfony server:start 

