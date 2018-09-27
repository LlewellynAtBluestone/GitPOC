SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[MyTestSPAdd2]
-- =============================================
-- Author:		Me
-- Create date: Today
-- Description:	A test for POC
-- =============================================
AS
BEGIN
	UPDATE dbo.MyTestTable
	SET Col3 = Col3 + 2
	WHERE MyPrimaryKey = 1
END
GO
