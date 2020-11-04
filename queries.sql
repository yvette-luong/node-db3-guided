SELECT Orders.OrderId, Customers.CustomerName, Orders.OrderDate
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
order by Orders.customerId;

--join orders
select orders.orderId, orders.orderDate, employees.firstName, employees.lastName
from orders
join employees on orders.employeeId =  employees.employeeId

--
SELECT *
FROM Orders
JOIN Employees on Orders.EmployeeID = Employees.EmployeeID
JOIN Customers on Orders.CustomerID = Customers.CustomerID


--list all customers and any order data for them 

 --list all customers without orders
select c.CustomerId as Id
	, c.CustomerName as Customer
    , c.Country
    , o.OrderID
    , o.OrderDate
from customers as c
left join orders as o ON c.customerId = o.customerId
where somecolumn is null
order by c.customerId