USE Premiere_Products;
Alter Table Part ADD FOREIGN KEY(Warehouse) REFERENCES WarehouseDetail(WarehouseNum);
