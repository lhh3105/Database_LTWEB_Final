-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: azshop
-- ------------------------------------------------------
-- Server version	8.0.34

CREATE DATABASE IF NOT EXISTS azshop;
USE azshop;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'huy','123');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `customerID` int NOT NULL,
  `itemID` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `promotionPrice` int DEFAULT NULL,
  `productName` varchar(45) DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `productID` int NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryID` int NOT NULL,
  `categoryName` varchar(45) DEFAULT NULL,
  `parentCategoryID` int DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'sofa',2,'https://www.dogtas.com/images/uploaded/blog-images/types-of-sofas/sofa-set.jpg'),(2,'chair',0,'https://www.dogtas.com/images/uploaded/blog-images/types-of-sofas/sofa-set.jpg'),(3,'armchair',2,'https://cavanli.com/wp-content/uploads/2020/11/Ghe-thu-gian-Armchair-Apolo-15-%C4%91%E1%BA%B9p-hi%E1%BB%87n-%C4%91%E1%BA%A1i-da-n%E1%BB%89-cao-c%E1%BA%A5p-Italia-1.jpg'),(4,'shelf',0,'https://www.vidaxl.com/dw/image/v2/BFNS_PRD/on/demandware.static/-/Sites-vidaxl-catalog-master-sku/default/dw7ca53dff/hi-res/111/5830/5833/152881/image_1_152881.jpg?sw=400'),(5,'table',0,'https://rusticwood.vn/image/cache/catalog/products/ban-an/bo%20ban%20%20an%208%20ghe%206-550x412h.jpg'),(6,'dining table',5,'https://rusticwood.vn/image/cache/catalog/products/ban-an/bo%20ban%20%20an%208%20ghe%206-550x412h.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail` (
  `itemID` int NOT NULL,
  `orderID` int DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `evaluationDate` date DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `itemID` int NOT NULL,
  `productID` int DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `colorCode` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `originalPrice` int DEFAULT NULL,
  `promotionPrice` int DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  KEY `productID_idx` (`productID`),
  CONSTRAINT `productID` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,'grey',NULL,'Big',1,500000,480000,'https://cozyliving.com.vn/cdn/shop/products/Cozy-Day23144copy_f27f18ca-fdc9-4686-bf68-a141ecc754af.jpg?v=1655780871'),(2,1,'pink',NULL,'nornal',1,700000,600000,'https://product.hstatic.net/1000256920/product/upload_c848351b8f604750880bd13f3bb21e17_master.jpg'),(3,1,'green',NULL,'small',1,650000,600000,'https://product.hstatic.net/1000256920/product/upload_c848351b8f604750880bd13f3bb21e17_master.jpg'),(4,2,'red',NULL,'big',1,2000000,2100000,'https://bizweb.dktcdn.net/thumb/1024x1024/100/139/088/products/6b-bo-sofa-go-o-c-cho-cao-ca-p.jpg?v=1683600077093'),(5,3,'brown',NULL,'big',1,2300000,2100000,'https://hungtin.vn/wp-content/uploads/2022/07/sopha-5.jpg'),(6,4,'brown',NULL,'normal',1,110000,100000,'https://cavanli.com/wp-content/uploads/2020/11/Ghe-thu-gian-Armchair-Apolo-15-%C4%91%E1%BA%B9p-hi%E1%BB%87n-%C4%91%E1%BA%A1i-da-n%E1%BB%89-cao-c%E1%BA%A5p-Italia-1.jpg'),(7,5,'blue',NULL,'small',1,200000,180000,'https://noithathoanmy.com/wp-content/uploads/2018/09/ghe-armchair-dep-gia-re-13.jpg'),(8,6,'yellow',NULL,'normal',1,800000,780000,'https://www.vidaxl.com/dw/image/v2/BFNS_PRD/on/demandware.static/-/Sites-vidaxl-catalog-master-sku/default/dw7ca53dff/hi-res/111/5830/5833/152881/image_1_152881.jpg?sw=400'),(9,7,'brown',NULL,'small',1,600000,580000,'https://product.hstatic.net/1000078439/product/1_27afff3c63354b8b9eeef5d5c3df5e4c.jpg'),(10,8,'brown',NULL,'normal',2,2000000,1800000,'https://rusticwood.vn/image/cache/catalog/products/ban-an/bo%20ban%20%20an%208%20ghe%206-550x412h.jpg');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemimage`
--

DROP TABLE IF EXISTS `itemimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemimage` (
  `itemImageID` int NOT NULL,
  `itemID` int DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`itemImageID`),
  KEY `itemID_idx` (`itemID`),
  CONSTRAINT `itemID` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemimage`
--

LOCK TABLES `itemimage` WRITE;
/*!40000 ALTER TABLE `itemimage` DISABLE KEYS */;
INSERT INTO `itemimage` VALUES (1,1,'https://cozyliving.com.vn/cdn/shop/products/Cozy-Day23144copy_f27f18ca-fdc9-4686-bf68-a141ecc754af.jpg?v=1655780871'),(2,1,'https://product.hstatic.net/1000256920/product/upload_c848351b8f604750880bd13f3bb21e17_master.jpg'),(3,2,'https://product.hstatic.net/1000256920/product/upload_c848351b8f604750880bd13f3bb21e17_master.jpg'),(4,3,'https://product.hstatic.net/1000256920/product/upload_c848351b8f604750880bd13f3bb21e17_master.jpg'),(5,4,'https://bizweb.dktcdn.net/thumb/1024x1024/100/139/088/products/6b-bo-sofa-go-o-c-cho-cao-ca-p.jpg?v=1683600077093'),(6,5,'https://hungtin.vn/wp-content/uploads/2022/07/sopha-5.jpg'),(7,6,'https://cavanli.com/wp-content/uploads/2020/11/Ghe-thu-gian-Armchair-Apolo-15-%C4%91%E1%BA%B9p-hi%E1%BB%87n-%C4%91%E1%BA%A1i-da-n%E1%BB%89-cao-c%E1%BA%A5p-Italia-1.jpg'),(8,7,'https://noithathoanmy.com/wp-content/uploads/2018/09/ghe-armchair-dep-gia-re-13.jpg'),(9,8,'https://www.vidaxl.com/dw/image/v2/BFNS_PRD/on/demandware.static/-/Sites-vidaxl-catalog-master-sku/default/dw7ca53dff/hi-res/111/5830/5833/152881/image_1_152881.jpg?sw=400'),(10,9,'https://product.hstatic.net/1000078439/product/1_27afff3c63354b8b9eeef5d5c3df5e4c.jpg'),(11,10,'https://rusticwood.vn/image/cache/catalog/products/ban-an/bo%20ban%20%20an%208%20ghe%206-550x412h.jpg');
/*!40000 ALTER TABLE `itemimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderID` int NOT NULL,
  `orderDate` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `transportFee` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `totalMoney` int DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `deliveryTime` date DEFAULT NULL,
  `customerConfirmation` int DEFAULT NULL,
  `custormerID` int DEFAULT NULL,
  `sellerID` int DEFAULT NULL,
  `shipperID` int DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `orderID` int NOT NULL,
  `method` int DEFAULT NULL,
  `time` timestamp(3) NULL DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `cardOwner` varchar(100) DEFAULT NULL,
  `accountNumber` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` int NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `supplierID` int DEFAULT NULL,
  `categoryID` int DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `avgRating` float DEFAULT NULL,
  `numOfRating` int DEFAULT NULL,
  `soldTotal` int DEFAULT NULL,
  `displayedPromotionPrice` int DEFAULT NULL,
  `displayedOriginalPrice` int DEFAULT NULL,
  `displayedImage` varchar(200) DEFAULT NULL,
  `categoryName` varchar(100) DEFAULT NULL,
  `supplierName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Sofa nệm Cali','Đẹp, êm dễ chịu, bền','Viet Nam',1,1,'gỗ',4,4,100,480000,500000,'https://cozyliving.com.vn/cdn/shop/products/Cozy-Day23144copy_f27f18ca-fdc9-4686-bf68-a141ecc754af.jpg?v=1655780871','sofa',NULL),(2,'Sofa gỗ Elli','Đẹp','Viet Nam',1,1,'gỗ',4,4,100,2000000,2100000,'https://bizweb.dktcdn.net/thumb/1024x1024/100/139/088/products/6b-bo-sofa-go-o-c-cho-cao-ca-p.jpg?v=1683600077093','sofa',NULL),(3,'Sofa gỗ Hưng Tín','Đẹp, hiện đại','Viet Nam',1,1,'gỗ',4,4,100,2300000,2200000,'https://hungtin.vn/wp-content/uploads/2022/07/sopha-5.jpg','sofa',NULL),(4,'Ghế armchair Apollo','Thoải mái, đẹp','Viet Nam',1,3,'nhựa',4,4,200,110000,100000,'https://cavanli.com/wp-content/uploads/2020/11/Ghe-thu-gian-Armchair-Apolo-15-%C4%91%E1%BA%B9p-hi%E1%BB%87n-%C4%91%E1%BA%A1i-da-n%E1%BB%89-cao-c%E1%BA%A5p-Italia-1.jpg','armchair',NULL),(5,'Ghế armchair anime','Êm, thẩm mỹ','Viet Nam',1,3,'gỗ',4,4,100,200000,180000,'https://noithathoanmy.com/wp-content/uploads/2018/09/ghe-armchair-dep-gia-re-13.jpg','armchair',NULL),(6,'Kệ trưng bày 5-laver vida','Đẹp, nhẹ','Viet Nam',1,4,'gỗ',4,4,100,800000,780000,'https://www.vidaxl.com/dw/image/v2/BFNS_PRD/on/demandware.static/-/Sites-vidaxl-catalog-master-sku/default/dw7ca53dff/hi-res/111/5830/5833/152881/image_1_152881.jpg?sw=400','shelf',NULL),(7,'Kệ sách IGA','Đẹp, nhỏ gọn','Viet Nam',1,4,'gỗ',4,3,12,600000,580000,'https://product.hstatic.net/1000078439/product/1_27afff3c63354b8b9eeef5d5c3df5e4c.jpg','shelf',NULL),(8,'Bộ bàn ăn gỗ Rustic','Đẹp, sang trọng','Viet Nam',1,6,'gỗ',5,5,50,2000000,1800000,'https://rusticwood.vn/image/cache/catalog/products/ban-an/bo%20ban%20%20an%208%20ghe%206-550x412h.jpg','dining table',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `numOfStar` int NOT NULL,
  `numOfRating` int NOT NULL,
  PRIMARY KEY (`numOfRating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchhistory`
--

DROP TABLE IF EXISTS `searchhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `searchhistory` (
  `customerID` int NOT NULL,
  `createdAt` timestamp(3) NULL DEFAULT NULL,
  `history` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchhistory`
--

LOCK TABLES `searchhistory` WRITE;
/*!40000 ALTER TABLE `searchhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierID` int NOT NULL,
  `supplierName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Anh Khoa');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `cid` varchar(100) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `kpi` int DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Le Huu','Huy','Khanh Hoa',0,'0793516760','2003-05-31','111',3,100000,'south','','huy123@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `voucherID` int NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `minimumPrice` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `mfg` date DEFAULT NULL,
  `exp` date DEFAULT NULL,
  PRIMARY KEY (`voucherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchercustomer`
--

DROP TABLE IF EXISTS `vouchercustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchercustomer` (
  `voucherID` int NOT NULL,
  `customerID` int DEFAULT NULL,
  PRIMARY KEY (`voucherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchercustomer`
--

LOCK TABLES `vouchercustomer` WRITE;
/*!40000 ALTER TABLE `vouchercustomer` DISABLE KEYS */;
/*!40000 ALTER TABLE `vouchercustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'azshop'
--

--
-- Dumping routines for database 'azshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 12:51:36
