SELECT * FROM `employee` WHERE DAY(`birthday`) = DAY(CURDATE()) AND MONTH(`birthday`) = MONTH(CURDATE());
