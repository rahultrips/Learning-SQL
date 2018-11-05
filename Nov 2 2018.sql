--Removed comment on web
--Added this comment on web
SELECT		TOP	(1000) B.*, 
			A.Total 
FROM		[NORTHWND].[dbo].[Orders] B
			JOIN 
			(
				SELECT		[OrderID],
							SUM ([UnitPrice] * [Quantity]) Total    
				FROM		[NORTHWND].[dbo].[Order Details]
				GROUP BY	[OrderID] 
			) A
			ON A.[OrderID] = B.OrderID

SELECT		A.OrderID, 
			(A.EmployeeID) EmployeeID,
			(A.OrderDate) OrderDate,
			SUM([UnitPrice] * [Quantity]) Total 
FROM		[NORTHWND].[dbo].[Orders] A
			JOIN [NORTHWND].[dbo].[Order Details] B On A.OrderID = B.OrderID
GROUP BY	A.OrderID,
			EmployeeID,
			OrderDate


SELECT		A.OrderID, 
			(A.EmployeeID) EmployeeID,
			(A.OrderDate) OrderDate,
			([UnitPrice] * [Quantity]) Total 
FROM		[NORTHWND].[dbo].[Orders] A
			JOIN [NORTHWND].[dbo].[Order Details] B On A.OrderID = B.OrderID
GROUP BY	A.OrderID,
			EmployeeID,
			OrderDate
  
 SELECT	    e.EmployeeID, 
			e.FirstName,
			SUM(Isnull([UnitPrice],0) * Isnull([Quantity],0)) Total
 FROM		[dbo].[Orders] o
			JOIN [dbo].[Order Details] od
				ON o.OrderID = od.OrderID
			RIGHT JOIN [dbo].[Employees] e
				ON o.EmployeeID = e.EmployeeID
 GROUP BY	e.EmployeeID,
			e.FirstName
 Order By   1

 
