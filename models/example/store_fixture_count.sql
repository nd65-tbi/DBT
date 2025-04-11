
 SELECT
	STORE_KEY AS Q_STR_SNUM,
	SUBSTR(STORE_KEY,5) AS Q_STR_DNUM,
	FIXTURE_NAME,
	FIXTURE_COUNT,
	CASE 
		WHEN FIXTURE_NAME ='BACKROOM_SQFT' THEN 'SQFT' 
		WHEN FIXTURE_NAME IN ('BELT_WALL',
								'FLEX_WALL',
								'SOCKS_WALL',
								'PERIMETER_JETRAIL',
								'SLAT_WALL',
								'SPORTSWEAR_WALL_SPACE',
								'BACKROOM_BAR_RACK',
								'REEVES_WALL_DOUBLE_HANGING_PARTIAL',
								'PAIDGOOD_HANGBAR_JETRAIL',
								'BACKROOM_HANGBAR_JETRAIL',
								'RENTAL_HANGBAR_JETRAIL',
								'BACKROOM_SHELVING',
								'BACKROOM_SUPPLY_SHELVING',
								'REEVES_WALL_DOUBLE_HANGING',
								'UNDERWEAR_WALL'
							) THEN 'Feet'
		ELSE 'Count'    END AS UNIT_OF_MEASUREMENT,
		'StoreOps' AS SRC_ID,
		CURRENT_TIMESTAMP()::TIMESTAMP_NTZ AS LOAD_DATE
FROM FIVETRAN_DATABASE.SHARE_POINT.STORE_FIXTURE_DATA_WIDE S 
	UNPIVOT (FIXTURE_COUNT FOR FIXTURE_NAME 
				 IN ("ACCESSORY_FIXTURE",
				"ACE_DRESS_SHIRT_CUBES_FIVEBYSEVEN",
				"ACE_DRESS_SHIRT_CUBES_FOURBYFIVE",
				"ACE_DRESS_SHIRT_CUBES_FOURBYSEVEN",
				"ACE_DRESS_SHIRT_CUBES_THREEBYFIVE",
				"ACE_DRESS_SHIRT_WALL_FIXTURE",
				"BACKROOM_BAR_RACK",
				"BACKROOM_DRESS_SHIRT_FIXTURE",
				"BACKROOM_HALF_CIRCLE",
				"BACKROOM_HANGBAR_JETRAIL",
				"BACKROOM_HRACK",
				"BACKROOM_KD_RACK",
				"BACKROOM_ROLLING_RACK",
				"BACKROOM_ROLLING_TSTAND",
				"BACKROOM_ROUNDER",
				"BACKROOM_SHELVING",
				"BACKROOM_SHIRT_BOX",
				"BACKROOM_SHIRT_CUBE",
				"BACKROOM_SHOESTOCK",
				"BACKROOM_SQFT",
				"BACKROOM_SUPPLY_SHELVING",
				"BACKROOM_VALET_BAR",
				"BACKROOM_ZRACK",
				"BAGS_ATTACHES",
				"BELT_WALL",
				"BLACK_BELT_ACCESSORY_FIXTURE",
				"BLACK_TIE_BOAT",
				"CAKETOPPER",
				"CLEARANCE_ROUNDER",
				"CONVERSION_GONDOLAS",
				"CONVERSION_UNIT",
				"DOUBLE_HUNG_HRACK",
				"DOUBLE_HUNG_I_BAR",
				"DRESS_SHIRT_CABINET",
				"DRESS_SHIRT_CUBE_WALL",
				"DRESS_SHIRT_CUBES_ALL",
				"DRESS_SHIRT_CUBES_FIVEBYSEVEN",
				"DRESS_SHIRT_CUBES_FOURBYFIVE",
				"DRESS_SHIRT_CUBES_FOURBYFOUR",
				"DRESS_SHIRT_CUBES_FOURBYSEVEN",
				"DRESS_SHIRT_CUBES_FOURBYSIX",
				"DRESS_SHIRT_CUBES_ONWALL",
				"DRESS_SHIRT_CUBES_THREEBYSEVEN",
				"DRESS_SHIRT_CUBES_WALL_CLOSET",
				"DRESS_SHIRT_FLOATING_FIXTURE_FOUR_COLUMNS",
				"DRESS_SHIRT_FLOATING_FIXTURE_SIXBYFIVE",
				"DRESS_SHIRT_LAYDOWN",
				"DRESS_SHIRT_LAYDOWN_FOURBYTHREE",
				"DRESS_SHIRT_LAYDOWN_THREEBYTWO",
				"FLEX_WALL",
				"FOUR_BIN_COFFIN",
				"FOUR_FT_ACCESSORY_FIXTURE",
				"FOUR_FT_VALET_BAR",
				"FOUR_FT_WALL_FIXTURE",
				"GLASS_DRESS_SHIRT_FLOOR_FIXTURE",
				"GLASS_CAPACITY_FIXTURE",
				"GLASS_LAYDOWN_WITH_CABINET",
				"HALF_CIRCLE_VALET_BAR",
				"I_BAR",
				"IMPULSE_FIXTURE",
				"JEWELRY_LAYDOWN",
				"JEWELRY_PODIUM",
				"JEWELRY_TABLES",
				"LARGE_GLASS_JEWELRY_TABLE",
				"LARGE_NESTING_TABLE",
				"LARGE_ROUND_TABLE",
				"LARGE_TIETANIC",
				"NESTING_TABLE",
				"PAIDGOOD_HANGBAR_JETRAIL",
				"PERIMETER_JETRAIL",
				"REEVES_WALL_DOUBLE_HANGING_PARTIAL",
				"RENTAL_HANGBAR_JETRAIL",
				"SHELVED_CAPACITY_FIXTURE",
				"SHOE_DISPLAY",
				"SHOE_TOWER",
				"SHOES_LAYDOWN",
				"SHOES_WALL",
				"SINGLE_HUNG_HRACK",
				"SINGLE_HUNG_I_BAR",
				"SLAT_WALL",
				"SMALL_NESTING_TABLE",
				"SMALL_TIETANIC",
				"SPORTSWEAR_WALL_COUNT",
				"SPORTSWEAR_WALL_SPACE",
				"SQUARE_TIETABLE",
				"SUIT_GONDOLAS",
				"THREE_BIN_COFFIN",
				"THREE_FT_ACCESSORY_FIXTURE",
				"THREE_FT_VALET_BAR",
				"THREE_TIERED_TABLE",
				"TIE_BOAT",
				"TIERED_TIE_TABLE",
				"TOMMY_JOHN",
				"TWO_FT_VALET_BAR",
				"TWO_TIERED_HIGHCAP_TABLE",
				"TWO_TIERED_TABLE",
				"TWO_WAY",
				"UNDERWEAR_LAYDOWN",
				"WOODEN_SHELVED_HRACK"
				)
				)
;
