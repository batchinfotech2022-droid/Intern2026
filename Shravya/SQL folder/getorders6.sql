USE [EcommerceDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[Orders_GetOrdersWithCustomerDetails]
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
	o.Id AS OrderId,
	c.FirstName+' '+c.LastName AS CustomerName,
	o.OrderDate,
	o.TotalAmount
	FROM Orders o
	INNER JOIN Customers c	ON o.CustomerId=c.Id
	WHERE o.IsDeleted=0
	AND c.IsDeleted=0;

	END