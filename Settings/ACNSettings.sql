/*
Alternative Component Names!
0 = Mixed (original version).
1 = Xenonyms (english names).
2 = Xenonyms-detailed (english names including ...).
3 = Endonyms (native names).
4 = Endonyms-detailed (native names including words very similar (load words); set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNALT',		3);
--==============================================================================================================================================================================================================================================================================================--
--==============================================================================================================================================================================================================================================================================================--
/*
Civilization's renaming!
0 = Original (original version).
1 = Endonyms (native names; set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNCIV',		1);

/*
Civilization Leader's renaming!
0 = Original (original version).
1 = Endonyms (native names; set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNLEA',		1);
--==============================================================================================================================================================================================================================================================================================--
--==============================================================================================================================================================================================================================================================================================--
/*
Greece renaming!
0 = Greece.
1 = Macedonia.
2 = Makedonia (set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNMAC',		2);

/*
Polinesia renaming!
0 = Polinesia.
1 = Polenisia.
2 = Hawai'i (set as default).
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACNHAW',		2);
--==============================================================================================================================================================================================================================================================================================--
--==============================================================================================================================================================================================================================================================================================--