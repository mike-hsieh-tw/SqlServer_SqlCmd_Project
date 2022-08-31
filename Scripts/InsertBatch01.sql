INSERT [dbo].[ErrorLog] ([ErrorTime] ,[UserName] ,[ErrorNumber] ,[ErrorSeverity] ,[ErrorState] ,[ErrorProcedure] ,[ErrorLine] ,[ErrorMessage])
SELECT '2022-01-01', 'System', '1',  '1' , '1' , '1' , '1' ,'1'
WHERE NOT EXISTS(SELECT 1 FROM [dbo].[ErrorLog]  WHERE ErrorLogID = '1' ); 