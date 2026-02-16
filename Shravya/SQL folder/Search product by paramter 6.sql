USE [EcommerceDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[SearchProductsBasedOnParameters]
@MinValue DECIMAL(18,4)=0,
@MaxValue DECIMAL(18,4)
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT *
	FROM Products 
	WHERE Price BETWEEN @MinValue AND @MaxValue
	AND IsDeleted=0;

	END