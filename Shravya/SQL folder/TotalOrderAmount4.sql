USE [EcommerceDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  OR ALTER PROCEDURE [dbo].[GetTotalAmount]
    AS
BEGIN
    SET NOCOUNT ON;

	SELECT 
	o.Id,
	o.CustomerId,
	SUM(oi.Quantity*oi.Price) AS TotalAmount
	FROM Orders o
	INNER JOIN OrderItems oi
	ON o.Id=oi.OrderId
	WHERE o.IsDeleted=0 AND oi.IsDeleted=0
	GROUP BY 
	o.Id,
	o.CustomerId;

	END