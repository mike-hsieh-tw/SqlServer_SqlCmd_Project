﻿/*
 預先部署指令碼樣板							
--------------------------------------------------------------------------------------
 此檔案包含要在組建指令碼之前執行的 SQL 陳述式	
 使用 SQLCMD 語法可將檔案包含在預先部署指令碼中			
 範例:      :r .\myfile.sql								
 使用 SQLCMD 語法可參考預先部署指令碼中的變數		
 範例:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--USER TABLE結構調整，若存在M_TYPE欄位則刪除所有資料重建
IF EXISTS (SELECT 1 
FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'USER' AND COLUMN_NAME = 'UNKNOWN_COLUMN')
BEGIN
	TRUNCATE TABLE BAA010SET
END