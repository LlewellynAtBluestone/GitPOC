SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[MyTestSP]
-- =============================================
-- Author:		Me
-- Create date: Today
-- Description:	A test for POC
-- =============================================
@Increment int
AS
BEGIN
	UPDATE dbo.MyTestTable
	SET Col3 = Col3 + @Increment
	WHERE MyPrimaryKey = 1
END
GO
