SELECT *
FROM [Sales].[SalesOrderHeader]
WHERE DATEDIFF(DAY, [OrderDate], DATEFROMPARTS(2013, 12, 25)) BETWEEN 0 AND 7