SELECT
	OH.[SalesOrderID],
	OH.[OrderDate],
	OH.[TotalDue],
	[Percent of Sales] = FORMAT((OH.TotalDue / P.SalesYTD) * 100, 'p') 
FROM [Sales].[SalesOrderHeader] OH
LEFT JOIN [Sales].[SalesPerson] P
ON OH.[SalesPersonID] = P.[BusinessEntityID]
AND OH.TotalDue > 2000
ORDER BY OH.SalesOrderID