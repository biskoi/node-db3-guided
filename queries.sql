-- SELECT orders.OrderID, orders.OrderDate, customers.CustomerName
-- FROM [Orders]
-- JOIN Customers ON orders.CustomerID = customers.CustomerID

-- SELECT o.OrderID, o.OrderDate, s.ShipperID, s.ShipperName
-- FROM Orders as o
-- JOIN Shippers AS s ON s.ShipperID = o.ShipperID
-- ORDER BY s.ShipperID

-- SELECT od.OrderID, o.OrderDate, p.ProductName, od.Quantity, p.Price, (p.Price * od.Quantity) as Total
-- FROM [OrderDetails] AS od
-- JOIN Orders AS o ON od.OrderID = o.OrderID
-- JOIN Products AS p ON p.ProductID = od.ProductID

-- SELECT od.OrderID, o.OrderDate, p.ProductName, od.Quantity, p.Price, round((p.Price * od.Quantity), 2) as 'Total'
-- FROM [OrderDetails] AS od
-- JOIN Orders AS o ON od.OrderID = o.OrderID
-- JOIN Products AS p ON p.ProductID = od.ProductID
