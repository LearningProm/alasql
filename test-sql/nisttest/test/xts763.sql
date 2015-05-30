-- MODULE   XTS763

-- SQL Test Suite, V6.0, Interactive SQL, xts763.sql
-- 59-byte ID
-- TEd Version #

-- AUTHORIZATION CTS1              

   SELECT USER FROM HU.ECCO;
-- RERUN if USER value does not match preceding AUTHORIZATION comment
   ROLLBACK WORK;

-- date_time print

-- TEST:7063 Access to CHARACTER_SETS view!

   SELECT COUNT(*) 
  FROM INFORMATION_SCHEMA.CHARACTER_SETS
  WHERE CHARACTER_SET_SCHEMA = 'INFORMATION_SCHEMA'
  AND CHARACTER_SET_NAME = 'SQL_TEXT'
  AND DEFAULT_COLLATE_SCHEMA = 'INFORMATION_SCHEMA'
  AND DEFAULT_COLLATE_NAME = 'SQL_TEXT'
  AND CHARACTER_SET_CATALOG IS NOT NULL
  AND DEFAULT_COLLATE_CATALOG IS NOT NULL
  AND FORM_OF_USE IS NOT NULL
  AND NUMBER_OF_CHARACTERS > 0;
-- PASS:7063 If COUNT = 1?

   SELECT COUNT(*) 
  FROM INFORMATION_SCHEMA.CHARACTER_SETS
  WHERE CHARACTER_SET_SCHEMA = 'CTS1'
  AND CHARACTER_SET_NAME = 'CS'
  AND DEFAULT_COLLATE_SCHEMA = 'INFORMATION_SCHEMA'
  AND DEFAULT_COLLATE_NAME = 'SQL_TEXT'
  AND CHARACTER_SET_CATALOG IS NOT NULL
  AND DEFAULT_COLLATE_CATALOG IS NOT NULL
  AND FORM_OF_USE IS NOT NULL
  AND NUMBER_OF_CHARACTERS > 0;
-- PASS:7063 If COUNT = 1?

   SELECT CHARACTER_SET_CATALOG, DEFAULT_COLLATE_CATALOG,
  FORM_OF_USE, NUMBER_OF_CHARACTERS 
  FROM INFORMATION_SCHEMA.CHARACTER_SETS WHERE
  CHARACTER_SET_SCHEMA = 'CTS1' AND
  CHARACTER_SET_NAME = 'CS';
-- PASS:7063 If 1 row is returned with 4 non-null values?

   ROLLBACK WORK;

-- END TEST >>> 7063 <<< END TEST
-- *********************************************
-- *************************************************////END-OF-MODULE