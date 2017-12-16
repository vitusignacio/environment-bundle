/* To find the temporary MySQL Server ROOT passwords 
** grep 'temporary password' /var/log/mysqld.log
** If you would like to skip the following SQL codes, please run:
** mysql_secure_installation
*/
ALTER USER 'root'@'localhost' IDENTIFIED BY 'seCured$123456';
GO
uninstall plugin validate_password;
GO
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'secured$123456' WITH GRANT OPTION;
GO