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

AS
BEGIN
	SELECT Col1,Col2,Col3
	FROM dbo.MyTestTable
END
GO
