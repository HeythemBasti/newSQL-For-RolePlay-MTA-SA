# newSQL-For-RolePlay-MTA-SA
newSQL  is a way to help you easily connect mods and scripts to your database

1-name the folder newSQL to use it properly

2-on server.lua

3-edit 

		connection = dbConnect("mysql","dbname=dbname;host=127.0.0.1;port=3306;","user","pass", "autoreconnect=1")

to your data 

Done.

you can use this :
exports.newSQL:_Query

exports.newSQL:_QuerySingle

exports.newSQL:_Exec

Example :

exports.newSQL:_Query( "SELECT * FROM CAFESHOPS " )

exports.newSQL:_QuerySingle( "SELECT * FROM CAFESHOPS WHERE ownerCharID= ?", ownerCharID)

exports.newSQL:_Exec("UPDATE `CAFESHOPS` SET `Food` = ? WHERE `ownerCharID` = " .. ownerCharID.."",newVal1)

exports.newSQL:_Exec("DELETE FROM CAFESHOPS WHERE shopID=?", shopID)

exports.newSQL:_Exec("INSERT INTO `CAFESHOPS` (`shopID`, `ShopintDBID`, `SellposX`, `SellposY`, `SellposZ`, `SellDim`, `SellInt`, `ownerCharID`, `createdBY`) values (NULL,?, ?, ?, ?, ?, ?, ?, ?)",dbid,posX,posY,posZ,dimension,interiorchk,ownerCharID,createdbyuser)

Good Luck To You All.
