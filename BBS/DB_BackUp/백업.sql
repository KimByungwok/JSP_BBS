-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.4-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- test 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `test`;

-- 테이블 test.bbs 구조 내보내기
CREATE TABLE IF NOT EXISTS `bbs` (
  `bbsID` int(11) NOT NULL,
  `bbsTitle` varchar(50) DEFAULT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `bbsDate` datetime DEFAULT NULL,
  `bbsContent` varchar(2048) DEFAULT NULL,
  `bbsAvailable` int(11) DEFAULT NULL,
  `bbsHit` int(11) DEFAULT NULL,
  PRIMARY KEY (`bbsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.bbs:~17 rows (대략적) 내보내기
/*!40000 ALTER TABLE `bbs` DISABLE KEYS */;
REPLACE INTO `bbs` (`bbsID`, `bbsTitle`, `userID`, `bbsDate`, `bbsContent`, `bbsAvailable`, `bbsHit`) VALUES
	(1, 'ㅎㅇ', 'aa', '2022-02-07 16:40:57', 'ㅎㅇ', 1, 9),
	(2, '배고프다 ', 'bb', '2022-02-07 16:41:16', '배고파"dsa', 1, 18),
	(3, '이거 페이지 이동도 되게 해주더라', 'cc', '2022-02-07 16:41:48', '신기 ㅋ', 1, 0),
	(4, '아 물론 글 10개 이상부터ㅎ', 'dd', '2022-02-07 16:42:07', 'ㅇㅇㄴㅇㄴㅁ', 1, 0),
	(5, 'dsadsa', 'aa', '2022-02-07 16:42:27', 'dsadsa"dsadsa" 수정 22년 2월 23일 18시 13분""ㄴㄴㄴ', 1, 23),
	(6, '<script> alert(\'ㅎㅇ\'); </script>', 'aa', '2022-02-07 16:43:07', '이거 뭐 코드에 예외처리 안 하면 악성코드 되더라ㅋㅋㅋㅋㅋ"ㅋㅋㅋ', 1, 3),
	(7, '배껴서 만들었지만 진짜 잘 만든듯 ', 'cc', '2022-02-07 16:43:37', '아 물론 나동빈씨^^', 1, 10),
	(8, 'ㄹㅇㄹㅇㄴㄹ', '김병욱', '2022-02-07 16:44:06', 'ㄴㄹㅇㄹㅇㄴ', 1, 2),
	(9, 'ㅇㄴㅁㅇㄴㅁㅇㄴ', '김병욱', '2022-02-07 16:44:10', 'ㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁ', 1, 1),
	(10, 'ㅇㄴㅇㄴㅁ', '김병욱', '2022-02-07 16:44:14', 'ㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㅁㄴㅇㅁㄴ', 1, 8),
	(11, '다음페이지 생긴다 ', '김병욱', '2022-02-07 16:44:27', 'ㅇㅇ', 1, 3),
	(12, '나는 바보다', '채승혜', '2022-02-07 16:47:52', '채승헤 빡빡이 빡빡이', 1, 12),
	(13, 'ddddddddddddd', 'aa', '2022-02-23 16:14:08', 'dddddddddddddddd', 1, 24),
	(14, '??', 'aa', '2022-02-23 17:33:34', '???"업데이트 했다""되라 제발', 1, 138),
	(15, '댓글 수정 왜 안될까', '김병욱', '2022-02-28 18:42:42', '짜증나게;;', 1, 139),
	(16, 'dsadsa', 'aa', '2022-02-28 23:00:05', 'dsadsa', 0, 16),
	(17, 'dsad', 'aa', '2022-02-28 23:13:48', 'dsadsa', 1, 22);
/*!40000 ALTER TABLE `bbs` ENABLE KEYS */;

-- 테이블 test.bbs_seq 구조 내보내기
CREATE TABLE IF NOT EXISTS `bbs_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;

-- 테이블 데이터 test.bbs_seq:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `bbs_seq` DISABLE KEYS */;
REPLACE INTO `bbs_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
	(1, 1, 9223372036854775806, 1, 1, 1000, 0, 0);
/*!40000 ALTER TABLE `bbs_seq` ENABLE KEYS */;

-- 테이블 test.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `m_id` varchar(20) NOT NULL,
  `m_pw` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `m_email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.member:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
REPLACE INTO `member` (`m_id`, `m_pw`, `m_name`, `m_email`) VALUES
	('aaa', '111', '텔레토비', 'a@a.com'),
	('bbb', '222', '보라돌이', 'b@b.com'),
	('ccc', '333', '나나', 'c@c.com'),
	('ddd', '444', '뚜비', 'd@d.com'),
	('eee', '555', '뽀오', 'e@e.com');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 test.quddnr 구조 내보내기
CREATE TABLE IF NOT EXISTS `quddnr` (
  `Code` varchar(20) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Division` varchar(20) DEFAULT NULL,
  `Num` varchar(50) DEFAULT NULL,
  `FormatedNow` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.quddnr:~9 rows (대략적) 내보내기
/*!40000 ALTER TABLE `quddnr` DISABLE KEYS */;
REPLACE INTO `quddnr` (`Code`, `Name`, `Price`, `Division`, `Num`, `FormatedNow`) VALUES
	('A-001', '마우스', 7000, 'A급', '25개', '2021년 12월13일 11시12분47초'),
	('B-207', '키보드', 15000, 'C급', '3개', '2021년 12월13일 11시13분03초'),
	('C-301', '핸드폰 거치대', 4000, 'D급', '6개', '2021년 12월13일 11시22분55초'),
	('D-108', '충전기', 20000, 'A급', '14개', '2021년 12월13일 11시13분37초'),
	('dsdsa', '1247325456', 12345, 'B급', '20개', '2021년 12월13일 11시53분14초'),
	('F-032', '에어팟', 250000, 'B급', '5개', '2021년 12월13일 11시14분00초'),
	('G-123', '키보드 커버', 4000, 'B급', '26개', '2021년 12월13일 11시14분26초'),
	('Z-013', '텀블러', 10000, 'A급', '1개', '2021년 12월13일 11시31분23초');
/*!40000 ALTER TABLE `quddnr` ENABLE KEYS */;

-- 테이블 test.reply 구조 내보내기
CREATE TABLE IF NOT EXISTS `reply` (
  `userID` varchar(50) DEFAULT NULL,
  `replyID` int(11) NOT NULL,
  `replyContent` varchar(2048) DEFAULT NULL,
  `bbsID` int(11) DEFAULT NULL,
  `replyAvailable` int(11) DEFAULT NULL,
  PRIMARY KEY (`replyID`) USING BTREE,
  KEY `FK_bbsID` (`bbsID`),
  CONSTRAINT `FK_bbsID` FOREIGN KEY (`bbsID`) REFERENCES `bbs` (`bbsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.reply:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
REPLACE INTO `reply` (`userID`, `replyID`, `replyContent`, `bbsID`, `replyAvailable`) VALUES
	('김병욱', 1, '수정은 왜 안돼', 15, 1),
	('김병욱', 2, '하,,', 15, 1),
	('aa', 3, 'ㅇㄴㅇㄴㅁㅇㄴㅁ', 15, 1),
	('aa', 4, 'ㅇㄴㅁㅇㄴㅁㅇ', 15, 1);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;

-- 테이블 test.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `userID` varchar(20) NOT NULL,
  `userPassword` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `userSex` varchar(20) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test.user:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`userID`, `userPassword`, `userName`, `userSex`, `userEmail`) VALUES
	('aa', 'aa', 'aa', '남자', 'aa@aa'),
	('bb', 'bb', 'bb', '남자', 'bb@bb'),
	('cc', 'cc', 'cc', '남자', 'cc@cc'),
	('dd', 'dd', 'dd', '남자', 'dd@dd'),
	('김병욱', 'rlaquddnr', '김병욱', '남자', 'rlaquddnr@rlaquddnr.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
