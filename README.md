# Devops-practice
## If privileges issue has to be come than follow these instruction (mysql)

revoke all privileges on *.* from 'db_name'@'localhost';
grant SELECT,INSERT,UPDATE,DELETE ON *.* TO 'db_name'@'localhost';
flush privileges;
SHOW GRANTS FOR 'db_name'@'localhost';
