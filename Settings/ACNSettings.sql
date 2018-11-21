/*
Alternative Names!
0 = Mixed (original version).
1 = Xenonyms (english names).
2 = Endonyms (native names).
3 = Endonyms-detailed (native names including words very similar (load words); set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNALT',		3);

/*
Civilization's name renaming!
0 = Original (original version).
1 = Endonyms (native names; set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNCIV',		1);

/*
Greece renaming!
0 = Greece.
1 = Macedonia.
2 = Makedonia (set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNMAC',		1);