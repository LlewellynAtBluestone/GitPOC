SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--  Comments here are associated with the test.
--  For test case examples, see: http://tsqlt.org/user-guide/tsqlt-tutorial/
CREATE PROCEDURE [unittest].[test MySampleTest]
/*
		EXEC POC_CI_CD.tSQLt.Run 
		@TestName = N'[UnitTest].[test MySampleTest]' 
		GO
*/

AS
BEGIN

    DECLARE @currentDate DATETIME2(0) = GETDATE();
    --	-------------------------------------------------------------------------------------------------------------------------------------------------
    --  Fake tables
    --	-------------------------------------------------------------------------------------------------------------------------------------------------
    EXEC tSQLt.FakeTable @TableName = N'MyTestTable',
                         @SchemaName = N'dbo',
                         @Identity = 0,
                         @ComputedColumns = 1,
                         @Defaults = 1;

    --	-------------------------------------------------------------------------------------------------------------------------------------------------
    --  Insert test data into the fake tables
    --	-------------------------------------------------------------------------------------------------------------------------------------------------	
    INSERT INTO dbo.MyTestTable
    (
        [MyPrimaryKey],
        [Col1],
        [Col2],
        [Col3]
    )
    VALUES
    (1, N'this', @currentDate, 1),
    (2, N'is', @currentDate, 2);

    --	-------------------------------------------------------------------------------------------------------------------------------------------------
    --  Run the tested stored procedure
    --	-------------------------------------------------------------------------------------------------------------------------------------------------
    EXECUTE [dbo].[MyTestSP] 2;

    --	-------------------------------------------------------------------------------------------------------------------------------------------------
    --  Comapre expected and actual results
    --	-------------------------------------------------------------------------------------------------------------------------------------------------	
    -- Expected 
    IF OBJECT_ID('dbo.Expected') IS NOT NULL
        DROP TABLE dbo.Expected;

    CREATE TABLE dbo.Expected
    (
        [MyPrimaryKey] BIGINT,
        [Col1] NCHAR(10),
        [Col2] DATETIME2(7),
        [Col3] INT
    );

    INSERT INTO dbo.Expected
    (
        [MyPrimaryKey],
        [Col1],
        [Col2],
        [Col3]
    )
    VALUES
    (1, N'this      ', @currentDate, 3),
    (2, N'is        ', @currentDate, 2);

    -- Actual 																				
    IF OBJECT_ID('dbo.Actual') IS NOT NULL
        DROP TABLE dbo.Actual;

    SELECT *
    FROM dbo.MyTestTable;

    CREATE TABLE dbo.Actual
    (
        [MyPrimaryKey] BIGINT,
        [Col1] NCHAR(10),
        [Col2] DATETIME2(7),
        [Col3] INT
    );
    INSERT INTO dbo.Actual
    SELECT *
    FROM dbo.MyTestTable;

    EXEC tSQLt.AssertEqualsTable @Expected = N'dbo.Expected',
                                 @Actual = N'dbo.Actual',
                                 @FailMsg = N'The expected data for the statement was not returned';

    DROP TABLE dbo.Actual;
    DROP TABLE dbo.Expected;

END;


GO
