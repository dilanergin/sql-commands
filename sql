
Select CustomerName, ContactName,City from Customers
Select * from Customers where City ='London'
Select * from Customers where City ='Berlin'
select * from products
select * from products where CategoryId = 5
select * from products where CategoryId = 5 or CategoryId= 1
select * from products where CategoryId = 5 and price>=15
select* from Products order by price
select* from Products order by price asc
select* from Products order by price desc
select* from Products where categoryId=1 order by price desc
select count(*)from Products
select count(*)adet from Products where CategoryId=8

//hangi kategoride kaç farklı ürünümüz var?
select categoryId from products group by CategoryId
select categoryId,count(*) from products group by CategoryId

//içerisine 10 taneden az olan kategorileri ver
select categoryId, count(*) from products group by categoryId having count(*)<10
select categoryId, count(*) from products where price>20 group by categoryId having count(*)<10

select * from products inner join Categories 
on products.categoryId= categories.categoryId

select products.productId, products.productName,products.Price, categories.categoryName from products inner join Categories 
on products.categoryId= categories.categoryId

select * from products p [Order Details] od 
on products.productId= od.productId

select * from Customers c left join Orders o on c.CustomerId=o.CustomerId

select * from Customers c left join Orders o on c.CustomerId=o.CustomerId
where o.CustomerId is null