/*
Alternative Names!
0 = Mixed (original version).
1 = Endonyms (english names).
2 = Xenonyms (native names).
3 = Xenonyms-detailed (native names including words very similar (load words); set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNALT',		3);

/*
Civilization's name renaming!
0 = Original (original version).
1 = Xenonyms (native names; set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNCIV',		1);