USE Premiere_Products;
create table PartInWarehouse(MyPartNum2 char(5), 
MyWarehouseNum2 Int,
PRIMARY KEY(MyPartNum2),
FOREIGN KEY (MyPartNum2) REFERENCES  Part(PartNum),
FOREIGN KEY (MyWarehouseNum2) REFERENCES WarehouseDetail(WarehouseNum));
