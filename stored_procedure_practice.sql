USE classicmodels;

-- 1. Tạo Stored Procedure đầu tiên để lấy danh sách tất cả khách hàng
DELIMITER //

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
END //

DELIMITER ;

-- Gọi Stored Procedure vừa tạo
CALL findAllCustomers();

-- 2. Xóa và cập nhật lại Stored Procedure (lọc theo customerNumber = 175)
DELIMITER //

DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END //

DELIMITER ;

-- Gọi lại Stored Procedure sau khi cập nhật
CALL findAllCustomers();