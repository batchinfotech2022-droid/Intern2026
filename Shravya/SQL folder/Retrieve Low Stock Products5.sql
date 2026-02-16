USE [EcommerceDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[RetrieveLowStockProduct]
@MinStock INT
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
	p.Id,
	p.ProductName,
	p.StockQuantity,
	p.Category
	FROM Products p
	WHERE p.StockQuantity<@MinStock AND IsDeleted=0
	ORDER BY p.StockQuantity ASC;

	END