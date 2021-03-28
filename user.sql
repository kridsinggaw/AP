SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `apnews`;
USE `apnews`;

CREATE TABLE `history` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `news_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title_th` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `detail_th` text COLLATE utf8mb4_general_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_general_ci NOT NULL,
  `project_id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `news` (`id`, `title_th`, `title_en`, `detail_th`, `detail_en`, `project_id`, `start_date`, `end_date`) VALUES
(1, 'วันสงกรานต์', 'Songkran Day', '\"<h2>กิจกรรมวันสงกรานต์</h2>\r\n<p><strong>การทำบุญตักบาตร</strong>&nbsp;นับว่าเป็นการสร้างบุญสร้างกุศลให้กับตนเอง อีกทั้งยังเป็นการอุทิศส่วนกุศลนั้นให้แก่ผู้ที่ล่วงลับไปแล้ว การทำบุญในลักษณะนี้มักจะมีการเตรียมไว้ล่วงหน้า เมื่อถึงเวลาทำบุญก็จะนำอาหารไปตักบาตรถวายพระภิกษุที่ศาลาวัดโดยจัดเป็นที่รวมสำหรับการทำบุญ ในวันเดียวกันนี้หลังจากที่ได้ทำบุญเสร็จเรียบร้อย ก็จะมีการก่อเจดีย์ทรายอันเป็นประเพณีที่สำคัญในวันสงกรานต์อีกด้วย</p>\r\n<p><strong>การรดน้ำ</strong>&nbsp;นับได้ว่าเป็นการอวยพรปีใหม่ให้แก่กันและกัน น้ำที่นำมาใช้รดหัวในการนี้มักเป็นน้ำหอมเจือด้วยน้ำธรรมดา</p>\r\n<p><strong>การสรงน้ำพระ</strong>&nbsp;เป็นการรดน้ำพระพุทธรูปที่บ้านและที่วัด ซึ่งในบางที่ก็จะมีการจัดให้สรงน้ำพระสงฆ์เพิ่มเติมด้วย</p>\r\n<p><strong>การบังสุกุลอัฐิ</strong>&nbsp;สำหรับเถ้ากระดูกของญาติผู้ใหญ่ที่ได้ล่วงลับไปแล้ว มักทำที่เก็บเป็นลักษณะของเจดีย์ จากนั้นจะนิมนต์พระไปบังสุกุล</p>\r\n<p><strong>การรดน้ำผู้ใหญ่</strong>&nbsp;คือการที่เราไปอวยพรผู้ใหญ่ใที่ห้ความเคารพนับถือ อย่าง ครูบาอาจารย์ มักจะนั่งลงกับที่ จากนั้นผู้ที่รดก็จะเอาน้ำหอมเจือกับน้ำธรรมดารดลงไปที่มือ ผู้หลักผู้ใหญ่ก็จะให้ศีลให้พรผู้ที่ไปรด หากเป็นพระก็อาจนำเอาผ้าสบงไปถวายเพื่อให้ผลัดเปลี่ยนด้วย แต่หากเป็นฆราวาสก็จะหาผ้าถุง หรือผ้าขาวม้าไปให้เปลี่ยน มีความหมายกับการเริ่มต้นสิ่งใหม่ๆ ในวันปีใหม่ไทย</p>\r\n<p><strong>การดำหัว</strong>&nbsp;มีจุดประสงค์คล้ายกับการรดน้ำของทางภาคกลาง ส่วนใหญ่จะพบเห็นการดำหัวได้ทางภาคเหนือ การดำหัวทำเพื่อแสดงความเคารพต่อผู้ที่อาวุโสว่า ไม่ว่าเป็น พระ ผู้สูงอายุ ซึ่งจะมีการขอขมาในสิ่งที่ได้ล่วงเกิน หรือเป็นการขอพรปีใหม่จากผู้ใหญ่ ของที่ใช้ในการดำหัวหลักๆ ประกอบด้วย อาภรณ์ มะพร้าว กล้วย ส้มป่อย เทียน และดอกไม้</p>\r\n<p><strong>การปล่อยนกปล่อยปลา</strong>&nbsp;ถือว่าการล้างบาปที่เราได้ทำไว้ เป็นการสะเดาะเคราะห์ร้ายให้กลายเป็นดี มีแต่ความสุข ความสบายในวันขึ้นปีใหม่</p>\r\n<p><strong>การขนททรายเข้าวัด</strong>&nbsp;ในทางภาคเหนือนิยมขนทรายเข้าวัดเพื่อเป็นนิมิตโชคลาคให้พบแต่ความสุข ความเจริญ เงินทองไหลมาเทมาดุจทรายที่ขนเข้าวัด แต่ก็มีบางพื้นที่มีความเชื่อว่า การนำทรายที่ติดเท้าออกจากวัดเป็นบาป จึงต้องขนทรายเข้าวัดเพื่อไม่ให้เกิดบาป</p>\"', '\"<h2>กิจกรรมวันสงกรานต์</h2>\r\n<p><strong>การทำบุญตักบาตร</strong>&nbsp;นับว่าเป็นการสร้างบุญสร้างกุศลให้กับตนเอง อีกทั้งยังเป็นการอุทิศส่วนกุศลนั้นให้แก่ผู้ที่ล่วงลับไปแล้ว การทำบุญในลักษณะนี้มักจะมีการเตรียมไว้ล่วงหน้า เมื่อถึงเวลาทำบุญก็จะนำอาหารไปตักบาตรถวายพระภิกษุที่ศาลาวัดโดยจัดเป็นที่รวมสำหรับการทำบุญ ในวันเดียวกันนี้หลังจากที่ได้ทำบุญเสร็จเรียบร้อย ก็จะมีการก่อเจดีย์ทรายอันเป็นประเพณีที่สำคัญในวันสงกรานต์อีกด้วย</p>\r\n<p><strong>การรดน้ำ</strong>&nbsp;นับได้ว่าเป็นการอวยพรปีใหม่ให้แก่กันและกัน น้ำที่นำมาใช้รดหัวในการนี้มักเป็นน้ำหอมเจือด้วยน้ำธรรมดา</p>\r\n<p><strong>การสรงน้ำพระ</strong>&nbsp;เป็นการรดน้ำพระพุทธรูปที่บ้านและที่วัด ซึ่งในบางที่ก็จะมีการจัดให้สรงน้ำพระสงฆ์เพิ่มเติมด้วย</p>\r\n<p><strong>การบังสุกุลอัฐิ</strong>&nbsp;สำหรับเถ้ากระดูกของญาติผู้ใหญ่ที่ได้ล่วงลับไปแล้ว มักทำที่เก็บเป็นลักษณะของเจดีย์ จากนั้นจะนิมนต์พระไปบังสุกุล</p>\r\n<p><strong>การรดน้ำผู้ใหญ่</strong>&nbsp;คือการที่เราไปอวยพรผู้ใหญ่ใที่ห้ความเคารพนับถือ อย่าง ครูบาอาจารย์ มักจะนั่งลงกับที่ จากนั้นผู้ที่รดก็จะเอาน้ำหอมเจือกับน้ำธรรมดารดลงไปที่มือ ผู้หลักผู้ใหญ่ก็จะให้ศีลให้พรผู้ที่ไปรด หากเป็นพระก็อาจนำเอาผ้าสบงไปถวายเพื่อให้ผลัดเปลี่ยนด้วย แต่หากเป็นฆราวาสก็จะหาผ้าถุง หรือผ้าขาวม้าไปให้เปลี่ยน มีความหมายกับการเริ่มต้นสิ่งใหม่ๆ ในวันปีใหม่ไทย</p>\r\n<p><strong>การดำหัว</strong>&nbsp;มีจุดประสงค์คล้ายกับการรดน้ำของทางภาคกลาง ส่วนใหญ่จะพบเห็นการดำหัวได้ทางภาคเหนือ การดำหัวทำเพื่อแสดงความเคารพต่อผู้ที่อาวุโสว่า ไม่ว่าเป็น พระ ผู้สูงอายุ ซึ่งจะมีการขอขมาในสิ่งที่ได้ล่วงเกิน หรือเป็นการขอพรปีใหม่จากผู้ใหญ่ ของที่ใช้ในการดำหัวหลักๆ ประกอบด้วย อาภรณ์ มะพร้าว กล้วย ส้มป่อย เทียน และดอกไม้</p>\r\n<p><strong>การปล่อยนกปล่อยปลา</strong>&nbsp;ถือว่าการล้างบาปที่เราได้ทำไว้ เป็นการสะเดาะเคราะห์ร้ายให้กลายเป็นดี มีแต่ความสุข ความสบายในวันขึ้นปีใหม่</p>\r\n<p><strong>การขนททรายเข้าวัด</strong>&nbsp;ในทางภาคเหนือนิยมขนทรายเข้าวัดเพื่อเป็นนิมิตโชคลาคให้พบแต่ความสุข ความเจริญ เงินทองไหลมาเทมาดุจทรายที่ขนเข้าวัด แต่ก็มีบางพื้นที่มีความเชื่อว่า การนำทรายที่ติดเท้าออกจากวัดเป็นบาป จึงต้องขนทรายเข้าวัดเพื่อไม่ให้เกิดบาป</p>\"', 1, '2020-02-01', '2020-02-28'),
(2, 'แจ้งวันหยุดเนื่องในวันมาฆบูชา', 'Makha  Bucha Day', '\"<p>วันเสาร์ที่ 8 กุมภาพันธ์ 2563 สำนักงานนิติบุคคลปิดทำการเนื่องในวันมาฆบูชา</p>\r\n<p>จึงเรียนมาเพื่อทราบและขออภัยในความไม่สะดวก</p>\"', '\"<p>วันเสาร์ที่ 8 กุมภาพันธ์ 2563 สำนักงานนิติบุคคลปิดทำการเนื่องในวันมาฆบูชา</p>\r\n<p>จึงเรียนมาเพื่อทราบและขออภัยในความไม่สะดวก</p>\"', 2, '2020-02-01', '2020-02-25'),
(3, 'เพิ่มเครื่องออกกำลังกายภายในอาคารชุดฯ', 'เพิ่มเครื่องออกกำลังกายภายในอาคารชุดฯ', '\"<p>เรียน ท่านเจ้าของร่วม/ผู้พักอาศัยทุกท่าน</p>\r\n<p>เรื่อง เพิ่มเครื่องออกกำลังกายภายในอาคารชุดฯ&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; สืบเนื่องจาก บริษัท เอเชี่ยนพร็อพเพอร์ตี้ (2014) จำกัด เจ้าของโครงการ ได้ให้การสนับสนุน เครื่องออกกำลังกาย จำนวน 3 เครื่อง ให้กับอาคารชุด แอสปาย สาทร-ราชพฤกษ์ บริเวณจุดติดตั้งดังนี้&nbsp;</p>\r\n<p>1.Krankcycle ติดตั้งบริเวณชั้น 32 (พร้อมใช้งาน)</p>\r\n<p>2.S-Force Performance Trainer ติดตั้งบริเวณชั้น 32 (พร้อมใช้งาน)</p>\r\n<p>3.Climbmill ติดตั้ง ชั้น 8 (อยู่ระหว่างการจัดส่ง)&nbsp;</p>\r\n<p>จึงเรียนมาเพื่อทราบ</p>\r\n<p>นิติบุคคลอาคารชุด แอสปาย สาทร-ราชพฤกษ์</p>\r\n<p>&nbsp; &nbsp; &nbsp;</p>\"', '\"<p>เรียน ท่านเจ้าของร่วม/ผู้พักอาศัยทุกท่าน</p>\r\n<p>เรื่อง เพิ่มเครื่องออกกำลังกายภายในอาคารชุดฯ&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; สืบเนื่องจาก บริษัท เอเชี่ยนพร็อพเพอร์ตี้ (2014) จำกัด เจ้าของโครงการ ได้ให้การสนับสนุน เครื่องออกกำลังกาย จำนวน 3 เครื่อง ให้กับอาคารชุด แอสปาย สาทร-ราชพฤกษ์ บริเวณจุดติดตั้งดังนี้&nbsp;</p>\r\n<p>1.Krankcycle ติดตั้งบริเวณชั้น 32 (พร้อมใช้งาน)</p>\r\n<p>2.S-Force Performance Trainer ติดตั้งบริเวณชั้น 32 (พร้อมใช้งาน)</p>\r\n<p>3.Climbmill ติดตั้ง ชั้น 8 (อยู่ระหว่างการจัดส่ง)&nbsp;</p>\r\n<p>จึงเรียนมาเพื่อทราบ</p>\r\n<p>นิติบุคคลอาคารชุด แอสปาย สาทร-ราชพฤกษ์</p>\r\n<p>&nbsp; &nbsp; &nbsp;</p>\"', 3, '2020-02-08', '2020-02-29'),
(4, 'การตรวจสอบงานระบบประจำเดือน ธันวาคม 2562', 'การตรวจสอบงานระบบประจำเดือน ธันวาคม 2562', '\"<p>การตรวจสอบงาน ระบบประจำเดือน ธันวาคม 2562&nbsp;</p>\r\n<p>ฝ่ายวิศวกรรมส่วนกลาง</p>\"', '\"<p>การตรวจสอบงาน ระบบประจำเดือน ธันวาคม 2562&nbsp;</p>\r\n<p>ฝ่ายวิศวกรรมส่วนกลาง</p>\"', 3, NULL, NULL),
(5, 'รื้อกระเบื้องทางเดินส่วนกลางใหม่  ชั้น 17', 'รื้อกระเบื้องทางเดินส่วนกลางใหม่  ชั้น 17', '\"<p style=\"\"text-align: justify;\"\"><strong>เรื่อง&nbsp; &nbsp;&nbsp;</strong><strong>รื้อกระเบื้องทางเดินส่วนกลางใหม่&nbsp; ชั้น 17 </strong></p>\r\n<p style=\"\"text-align: justify;\"\"><strong>เรียน&nbsp;&nbsp; ท่านเจ้าของร่วม / ผู้พักอาศัย</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p style=\"\"text-align: justify;\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ทางฝ่ายบริหารได้ทำการรื้อกระเบื้องทางเดินส่วนกลางใหม่ ชั้น 17 เนื่องจากกระเบื้องโก่งตัวระหว่างรอยต่อ ของกระเบื้อง โดยช่างอาคารดำเนิน รื้อและปูกระเบื้องใหม่ใน <strong>วันอังคารที่ 10 ธันวาคม 2562 ถึง วันเสาร์ที่ 21 ธันวาคม 2562</strong> <strong>เวลา 9.00 น. &ndash; 17.00 น.</strong></p>\r\n<p style=\"\"text-align: justify;\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ฝ่ายบริหารอาคารนิติบุคคลอาคารชุด ริธึ่ม สาทร-นราธิวาส ขออภัยในความไม่สะดวกต่างๆ ที่เกิดขึ้นจากการปฏิบัติงานดังกล่าว&nbsp; หากมีข้อสงสัยประการใด&nbsp; กรุณาติดต่อสอบถามข้อมูลเพิ่มเติม&nbsp; ได้ที่ 02-286-3651 ต่อ 101</p>\"', '\"<p style=\"\"text-align: justify;\"\"><strong>เรื่อง&nbsp; &nbsp;&nbsp;</strong><strong>รื้อกระเบื้องทางเดินส่วนกลางใหม่&nbsp; ชั้น 17 </strong></p>\r\n<p style=\"\"text-align: justify;\"\"><strong>เรียน&nbsp;&nbsp; ท่านเจ้าของร่วม / ผู้พักอาศัย</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p style=\"\"text-align: justify;\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ทางฝ่ายบริหารได้ทำการรื้อกระเบื้องทางเดินส่วนกลางใหม่ ชั้น 17 เนื่องจากกระเบื้องโก่งตัวระหว่างรอยต่อ ของกระเบื้อง โดยช่างอาคารดำเนิน รื้อและปูกระเบื้องใหม่ใน <strong>วันอังคารที่ 10 ธันวาคม 2562 ถึง วันเสาร์ที่ 21 ธันวาคม 2562</strong> <strong>เวลา 9.00 น. &ndash; 17.00 น.</strong></p>\r\n<p style=\"\"text-align: justify;\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ฝ่ายบริหารอาคารนิติบุคคลอาคารชุด ริธึ่ม สาทร-นราธิวาส ขออภัยในความไม่สะดวกต่างๆ ที่เกิดขึ้นจากการปฏิบัติงานดังกล่าว&nbsp; หากมีข้อสงสัยประการใด&nbsp; กรุณาติดต่อสอบถามข้อมูลเพิ่มเติม&nbsp; ได้ที่ 02-286-3651 ต่อ 101</p>\"', 2, '2020-02-05', '2020-03-05');


CREATE TABLE `project` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `project` (`id`, `name`) VALUES
(1, 'ALL'),
(2, 'A'),
(3, 'B');

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(24) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `project_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `user` (`id`, `username`, `password`, `phone`, `first_name`, `last_name`, `project_id`) VALUES
(1, 'takeshi@gmail.com', '1234', '0837273492', 'Takeshi', 'Mura', 2),
(2, 'nobita@outlook.com', '1234', '0981342212', 'Nobita', 'Jian', 2),
(3, 'shizuka@hotmail.com', '1234', '0818484848', 'TaShizukakeshi', 'Jung', 3),
(4, 'suneo@gmail.com', '1234', '0979292928', 'Sueno', 'Sushi', 3),
(5, 'suneo@gmail.com', '1234', '0828472938', 'Tsubaza', 'Baki', 2),
(6, 'bryan@icloud.com', '1234', '0849184849', 'Bryan', 'Trump', 3);

ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `history` (`user_id`,`news_id`);

ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

ALTER TABLE `history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `project`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;