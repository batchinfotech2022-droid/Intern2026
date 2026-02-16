USE [EcommerceDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[Top5BestSellingProducts]
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT TOP 5
	p.Id AS ProductId,
	p.ProductName,
	SUM(oi.Quantity) AS TotalSold
	FROM OrderItems oi
	INNER JOIN Products p
	ON oi.ProductId=p.Id
	where oi.IsDeleted=0 AND 
	p.IsDeleted=0
	GROUP BY p.Id,p.ProductName
	ORDER BY TotalSold DESC;


	

	END