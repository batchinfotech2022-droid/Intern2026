USE [EcommerceDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[ReadCustomersWithXOrders]
@Minorders INT
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
	c.Id,
	c.FirstName +' '+c.LastName AS CustomerName,
	COUNT(o.Id) AS TotalOrders
	FROM Customers c
	INNER JOIN Orders o
	ON c.Id = o.CustomerId
	WHERE c.IsDeleted=0 AND o.IsDeleted=0
	GROUP BY c.Id, c.FirstName,c.LastName
	HAVING COUNT(o.Id)>=@Minorders;



	

	END