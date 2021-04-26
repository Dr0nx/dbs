# Настраиваю сервер mysql

dr0n@bozhkov-ubuntu:~$ sudo apt install mysql-server
dr0n@bozhkov-ubuntu:~$ echo -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'my8sql';\nFLUSH PRIVILEGES;" > tmp
dr0n@bozhkov-ubuntu:~$ sudo mysql < tmp
dr0n@bozhkov-ubuntu:~$ rm tmp
dr0n@bozhkov-ubuntu:~$ echo -e "[client]\nuser=root\npassword=my8sql" > .my.cnf
dr0n@bozhkov-ubuntu:~$ chmod 0600 .my.cnf
dr0n@bozhkov-ubuntu:~$ mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.23-0ubuntu0.20.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> ^DBye
dr0n@bozhkov-ubuntu:~$
