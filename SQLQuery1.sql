create procedure AddBooks
@UserName varchar(20),
@BookTitle varchar(50),
@CategoryType varchar(20),
@Description varchar(80),
@Price decimal(10,2),
@AuthorName varchar(20),
@Status varchar(15), 
@Image varbinary(max)

as 
begin
declare @UserId int;
select @UserId=UserId FROM Users where UserName =@UserName;
insert into Books (UserID,BookTitle, CategoryType, Description, Price, AuthorName, Status, Image) values (@UserId,@BookTitle, @CategoryType, @Description, @Price, @AuthorName, @Status, @Image)
end

drop procedure AddBooks