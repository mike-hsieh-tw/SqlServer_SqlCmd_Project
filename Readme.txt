1.  使用密碼進入資料庫

    sqlcmd -S 127.0.0.1 -U sa -P P@ssw0rd -d AdventureWorks2017



2.  使用Windows驗證進入資料庫

    sqlcmd -S 127.0.0.1 -E -d AdventureWorks2017



3.  使用Windows驗證進入資料庫

    sqlcmd -S 127.0.0.1 -E -d AdventureWorks2017

    SELECT TOP 100 * FROM [Person].[Person]

    GO



4. 使用Windows驗證匯入資料

    (備註: -f 65001 是表示使用 UTF-8)

    sqlcmd -S 127.0.0.1 -E -d AdventureWorks2017 -f 65001 -i .\Script.PostDeployment.sql



5. 在 SqlServer 匯入資料

    DECLARE @CMD_SQL NVARCHAR(MAX)

    SET @CMD_SQL = 'sqlcmd -S 127.0.0.1 -E -d AdventureWorks2017 -f 65001 -i D:\DbAdventureWorks\Script.PostDeployment.sql'

    EXEC xp_cmdshell @SQL

    