﻿/*
部署後指令碼樣板
--------------------------------------------------------------------------------------
 此檔案包含要附加到組建指令碼的 SQL 陳述式		
 使用 SQLCMD 語法可將檔案包含在部署後指令碼中			
 範例:      :r .\myfile.sql								
 使用 SQLCMD 語法可參考部署後指令碼中的變數		
 範例:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/********* 批次新增01 *********/
:r .\Scripts\InsertBatch01.sql

/********* 批次更新01 *********/
:r .\Scripts\UpdateBatch01.sql