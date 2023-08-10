# step by step config trigger 2 server with looping inserted 5 row in table trs<br>	
	# pulling from github<br>
		+ git init
		+ git remote add origin https://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@github.com/kiemGit/trigger2ServerEach5RowInsert.git<br>
		+ git pull origin master<br>
		
	# config database<br>
		+ create database [palembang], [mysql> create database palembang;]<br>
		+ import table, trigger and function into database [palembang], run script bellow<br>
			+ [sap@localhost t]$ ./restoreDb.sh
			+ [sap@localhost t]$ ./restoreTriger.sh
		+ login to mysql<br>
		+ mysql> use palembang;<br>
		+ mysql> show tables;<br>
		+ mysql> SHOW FUNCTION status\G;<br>
		+ mysql> SHOW TRIGGERS in palembang\G;<br>
		+ mysql> INSERT INTO trs(trsId, idKend) VALUES ('1234125', 2); // run this 5 times<br>
		+ mysql> SELECT * FROM trs_srv2; // data inserted after run above script after 5 times<br>
