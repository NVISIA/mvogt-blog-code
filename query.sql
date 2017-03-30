SELECT PackageTypeName, [OrderLines].PackageTypeID, count(OrderLineID) as '# of orders' from [Sales].[OrderLines] 
INNER JOIN [Warehouse].[PackageTypes] on OrderLines.PackageTypeID = PackageTypes.PackageTypeID 
GROUP BY PackageTypeName, [OrderLines].PackageTypeID;

