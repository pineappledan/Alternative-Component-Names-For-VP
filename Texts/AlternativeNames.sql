/*
VP-CBP compatibility patch!
0 = Disabled disregarding if its detects VP-CBP by many.
1 = Enabled if it detects the VP-CBP by many.
2 = Disabled until it detects something! (Default)
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACN-VP-CBP', 	2);

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'ACN-VP-CBP' AND EXISTS (SELECT * FROM Units WHERE Type='UNIT_COLONIST') AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=0);

/*
MUCfVP compatibility patch!
0 = Disabled disregarding if its detects MUCfVP by many.
1 = Enabled if it detects the MUCfVP by many.
2 = Disabled until it detects something! (Default)
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACN-MUCfVP', 	2);

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'ACN-MUCfVP' AND EXISTS (SELECT * FROM Units WHERE Type='UNIT_ZULU_INDABA') AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=0);

/*
Compatibility patch for additional civilizations!
0 = Disabled disregarding if its detects Civilization.
1 = Enabled if it detects the Civilization.
2 = Disabled until it detects something! (Default)
*/

INSERT INTO COMMUNITY	
		(Type,			Value)
VALUES	('ACN-CIV-ISR', 2);

UPDATE COMMUNITY
SET Value = '1'
WHERE Type = 'ACN-CIV-ISR' AND EXISTS (SELECT * FROM Units WHERE Type='UNIT_ISRAEL_SHOPHET') AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-CIV-ISR' AND Value=0);
--==============================================================================================================================================================================================================================================================================================--
--==============================================================================================================================================================================================================================================================================================--
-- Alternative Names
	-- Endonyms
		-- VP
		UPDATE Language_en_US SET Text = 'Fighting Elephant' WHERE Tag = 'TXT_KEY_UNIT_INDIAN_WARELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Yurt' WHERE Tag = 'TXT_KEY_BUILDING_YURT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Pike and Shot' WHERE Tag = 'TXT_KEY_UNIT_SPANISH_TERCIO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		-- MUCfVP
		UPDATE Language_en_US SET Text = 'Shotel Swordsman' WHERE Tag = 'TXT_KEY_UNIT_ETHIOPIA_SHOTELAI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Armstrong Gun' WHERE Tag = 'TXT_KEY_UNIT_SIAM_SEIR_MORB' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Sauna' WHERE Tag = 'TXT_KEY_BUILDING_SWEDEN_BASTU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Lagoon' WHERE Tag = 'TXT_KEY_BUILDING_VENICE_LAGUNA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Galiot' WHERE Tag = 'TXT_KEY_UNIT_VENICE_FUSTA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Mughal Fort' WHERE Tag = 'TXT_KEY_BUILDING_INDIA_QILA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Paradise Garden' WHERE Tag = 'TXT_KEY_BUILDING_PERSIA_PAIRIDAEZA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=1) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
	-- Xenonyms
		-- VP
		UPDATE Language_en_US SET Text = 'Ghazi' WHERE Tag = 'TXT_KEY_UNIT_ARABIAN_CAMELARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Kaffeehaus' WHERE Tag = 'TXT_KEY_BUILDING_COFFEE_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Ocelotl' WHERE Tag = 'TXT_KEY_UNIT_AZTEC_JAGUAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Chinampa' WHERE Tag = 'TXT_KEY_BUILDING_FLOATING_GARDENS_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Qashtum' WHERE Tag = 'TXT_KEY_UNIT_BABYLON_BOWMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Pernambuco Camp' WHERE Tag = 'TXT_KEY_IMPROVEMENT_BRAZILWOOD_CAMP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Curadh' WHERE Tag = 'TXT_KEY_UNIT_CELT_PICTISH_WARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Lian Nu' WHERE Tag = 'TXT_KEY_UNIT_CHINESE_CHUKONU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Watergeuzen' WHERE Tag = 'TXT_KEY_UNIT_SEA_BEGGAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Hawelti' WHERE Tag = 'TXT_KEY_BUILDING_STELE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Huaraca' WHERE Tag = 'TXT_KEY_UNIT_INCAN_SLINGER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Anden' WHERE Tag = 'TXT_KEY_IMPROVEMENT_TERRACE_FARM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Vaav' WHERE Tag = 'TXT_KEY_BUILDING_INDUS_CANAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Catabhata' WHERE Tag = 'TXT_KEY_UNIT_INDONESIAN_KRIS_SWORDSMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Haudenosesne' WHERE Tag = 'TXT_KEY_BUILDING_LONGHOUSE_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Rotisken''rakehte' WHERE Tag = 'TXT_KEY_UNIT_IROQUOIAN_MOHAWKWARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Haan' WHERE Tag = 'TXT_KEY_UNIT_MONGOL_KHAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Goumiers' WHERE Tag = 'TXT_KEY_UNIT_BERBER_CAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Tophane-i Amire' WHERE Tag = 'TXT_KEY_BUILDING_SIEGE_WORKSHOP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Stajnia Ksiazeca' WHERE Tag = 'TXT_KEY_BUILDING_DUCAL_STABLE_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Husaria' WHERE Tag = 'TXT_KEY_UNIT_POLISH_WINGED_HUSSAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Ika a Whiro' WHERE Tag = 'TXT_KEY_UNIT_POLYNESIAN_MAORI_WARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Pungkuto''ett�' WHERE Tag = 'TXT_KEY_UNIT_SHOSHONE_COMANCHE_RIDERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Katukkatun' WHERE Tag = 'TXT_KEY_IMPROVEMENT_ENCAMPMENT_SHOSHONE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Chang Suek' WHERE Tag = 'TXT_KEY_UNIT_SIAMESE_WARELEPHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Farari' WHERE Tag = 'TXT_KEY_UNIT_SONGHAI_MUSLIMCAVALRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Magni Mercante' WHERE Tag = 'TXT_KEY_UNIT_VENETIAN_MERCHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
			-- detailed VP
			UPDATE Language_en_US SET Text = 'Qasbah' WHERE Tag = 'TXT_KEY_IMPROVEMENT_KASBAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=3) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
			UPDATE Language_en_US SET Text = 'Oplitis' WHERE Tag = 'TXT_KEY_UNIT_GREEK_HOPLITE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=3) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-VP-CBP' AND Value=1);
		-- MUCfVP
		UPDATE Language_en_US SET Text = 'Al-Hashimiyun' WHERE Tag = 'TXT_KEY_UNIT_ARABIA_HASHEMITE_RAIDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Cuauhtli' WHERE Tag = 'TXT_KEY_UNIT_AZTEC_EAGLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Covinni' WHERE Tag = 'TXT_KEY_UNIT_CELTS_SCYTHED_CHARIOT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Dunon' WHERE Tag = 'TXT_KEY_IMPROVEMENT_CELTS_OPPIDUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Kao-Chang' WHERE Tag = 'TXT_KEY_BUILDING_CHINA_EXAMINATION_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Langskib' WHERE Tag = 'TXT_KEY_UNIT_DENMARK_LANGSKIB' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Deutscher Orden' WHERE Tag = 'TXT_KEY_BUILDING_GERMANY_TEUTONIC_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Alti Cur' WHERE Tag = 'TXT_KEY_BUILDING_HUNS_ALTI_CUR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Ne Hatoraz' WHERE Tag = 'TXT_KEY_UNIT_IROQUOIS_PROWLER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Kobukseon' WHERE Tag = 'TXT_KEY_CIV5_KOREA_TURTLESHIP_HEADING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Pitz Court' WHERE Tag = 'TXT_KEY_BUILDING_MAYA_PITZ' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Alqirsan' WHERE Tag = 'TXT_KEY_UNIT_MOROCCO_CORSAIR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Sahi Topu' WHERE Tag = 'TXT_KEY_UNIT_OTTOMANS_GREAT_TURKISH_BOMBARD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Yedinorog' WHERE Tag = 'TXT_KEY_UNIT_RUSSIA_LICORNE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Ohamupe' WHERE Tag = 'TXT_KEY_UNIT_SHOSHONE_YELLOW_BROW' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Pis''kun' WHERE Tag = 'TXT_KEY_BUILDING_SHOSHONE_BUFFALO_POUND' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
		UPDATE Language_en_US SET Text = 'Baan Chang' WHERE Tag = 'TXT_KEY_BUILDING_SIAM_BAAN_CHANG' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND (Value=2 OR Value=3)) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
			-- detailed MUCfVP
			UPDATE Language_en_US SET Text = 'Kleftis' WHERE Tag = 'TXT_KEY_UNIT_GREECE_KLEPHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNALT' AND Value=3) AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACN-MUCfVP' AND Value=1);
--==============================================================================================================================================================================================================================================================================================--
--==============================================================================================================================================================================================================================================================================================--
-- Civilization Names
	-- VP
	UPDATE Language_en_US SET Text = 'Al-Magrib' WHERE Tag = 'TXT_KEY_CIV_MOROCCO_SHORT_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNCIV' AND Value=1);
	UPDATE Language_en_US SET Text = 'Ellada' WHERE Tag = 'TXT_KEY_CIV_GREECE_SHORT_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNCIV' AND Value=1);
	UPDATE Language_en_US SET Text = 'Athura' WHERE Tag = 'TXT_KEY_CIV_ASSYRIA_SHORT_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNCIV' AND Value=1);
	UPDATE Language_en_US SET Text = 'Roma' WHERE Tag = 'TXT_KEY_CIV_ROME_SHORT_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNCIV' AND Value=1);
	UPDATE Language_en_US SET Text = 'Deutschland' WHERE Tag = 'TXT_KEY_CIV_GERMANY_SHORT_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNCIV' AND Value=1);
	UPDATE Language_en_US SET Text = 'Rossiya' WHERE Tag = 'TXT_KEY_CIV_RUSSIA_SHORT_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNCIV' AND Value=1);
	UPDATE Language_en_US SET Text = 'Shahanshahiye Iran' WHERE Tag = 'TXT_KEY_CIV_PERSIA_SHORT_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNCIV' AND Value=1);
	UPDATE Language_en_US SET Text = 'Qart-hadasht' WHERE Tag = 'TXT_KEY_CIV_CARTHAGE_SHORT_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNCIV' AND Value=1);
	UPDATE Language_en_US SET Text = 'Polska' WHERE Tag = 'TXT_KEY_CIV_POLAND_SHORT_DESC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='ACNCIV' AND Value=1);
--==============================================================================================================================================================================================================================================================================================--
--==============================================================================================================================================================================================================================================================================================--