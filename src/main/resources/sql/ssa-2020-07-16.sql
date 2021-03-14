/*
 Navicat Premium Data Transfer

 Source Server         : 139.155.39.185
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 139.155.39.185:3306
 Source Schema         : ssa

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 16/07/2020 14:52:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clock_in
-- ----------------------------
DROP TABLE IF EXISTS `clock_in`;
CREATE TABLE `clock_in`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `type` int(10) DEFAULT NULL COMMENT '1跑步、2骑行、3行走',
  `start_time` datetime(0) DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) DEFAULT NULL,
  `distance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '距离,单位Km',
  `start_lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `end_lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `start_lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `end_lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `calorie` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '卡路里',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '去运动' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clock_in
-- ----------------------------
INSERT INTO `clock_in` VALUES (1, 1, 1, '2020-05-10 11:08:45', '2020-05-11 11:08:49', '11', '11', '12', '12', '13', '122', '2020-05-10 11:09:03');
INSERT INTO `clock_in` VALUES (5, 1, NULL, '2020-05-11 18:57:03', '2020-05-12 10:42:02', '0.0', '120.21937542', '120.21937542', '30.25924446', '30.25924446', NULL, '2020-05-11 18:57:03');
INSERT INTO `clock_in` VALUES (6, 1, NULL, '2020-05-12 21:50:11', '2020-05-12 21:54:50', '17000.0', '119.22358867236', '119.22366778822', '34.612583132614', '34.6124405189', NULL, '2020-05-12 21:50:11');
INSERT INTO `clock_in` VALUES (7, 1, NULL, '2020-05-12 21:54:29', '2020-05-12 21:54:52', '26000.0', '119.22353649103', '119.22366778822', '34.612651360659', '34.6124405189', NULL, '2020-05-12 21:54:29');
INSERT INTO `clock_in` VALUES (8, 1, NULL, '2020-05-12 21:54:34', '2020-05-12 21:54:58', '12000.0', '119.22353649103', '119.22361855681', '34.612651360659', '34.612557822628', NULL, '2020-05-12 21:54:34');
INSERT INTO `clock_in` VALUES (9, 1, NULL, '2020-05-12 21:54:38', '2020-05-12 21:55:07', '12000.0', '119.22353649103', '119.22361855681', '34.612651360659', '34.612557822628', NULL, '2020-05-12 21:54:38');
INSERT INTO `clock_in` VALUES (10, 1, NULL, '2020-05-12 21:54:40', '2020-05-12 22:40:28', '21000.0', '119.22353649103', '119.22357682338', '34.612651360659', '34.612457870728', NULL, '2020-05-12 21:54:40');
INSERT INTO `clock_in` VALUES (11, 1, NULL, '2020-05-12 22:40:04', '2020-05-25 16:03:07', '282000.0', '119.22354957614', '119.22657190587', '34.612583248885', '34.613063017602', NULL, '2020-05-12 22:40:04');
INSERT INTO `clock_in` VALUES (12, 14, NULL, '2020-05-16 14:06:32', '2020-05-21 13:37:58', '1.78482E8', '119.36848894', '119.22359571049', '33.01379717', '34.61260996117', NULL, '2020-05-16 14:06:32');
INSERT INTO `clock_in` VALUES (13, 14, NULL, '2020-05-16 14:06:33', NULL, NULL, '119.36848894', NULL, '33.01379717', NULL, NULL, '2020-05-16 14:06:33');
INSERT INTO `clock_in` VALUES (14, 14, NULL, '2020-05-21 13:37:39', NULL, NULL, '119.22359571049', NULL, '34.61260996117', NULL, NULL, '2020-05-21 13:37:39');
INSERT INTO `clock_in` VALUES (15, 1, NULL, '2020-05-25 16:02:46', '2020-05-25 16:03:43', '0.0', '119.22657190587', '119.22657190587', '34.613063017602', '34.613063017602', NULL, '2020-05-25 16:02:46');
INSERT INTO `clock_in` VALUES (16, 1, NULL, '2020-05-25 16:03:25', '2020-05-28 21:19:28', '4.93549E8', '119.22657190587', '120.21937542', '34.613063017602', '30.25924446', NULL, '2020-05-25 16:03:25');
INSERT INTO `clock_in` VALUES (17, 1, NULL, '2020-05-28 21:17:28', '2020-05-28 21:19:28', '0.0', '120.21937542', '120.21937542', '30.25924446', '30.25924446', NULL, '2020-05-28 21:17:28');
INSERT INTO `clock_in` VALUES (18, 1, NULL, '2020-05-28 21:17:28', '2020-05-28 21:19:43', '0.0', '120.21937542', '120.21937542', '30.25924446', '30.25924446', NULL, '2020-05-28 21:17:28');
INSERT INTO `clock_in` VALUES (19, 1, NULL, '2020-05-28 21:20:11', '2020-05-28 21:20:23', '0.0', '120.21937542', '120.21937542', '30.25924446', '30.25924446', NULL, '2020-05-28 21:20:11');

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '动态表',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `like_count` int(10) DEFAULT NULL COMMENT '点赞数',
  `view_count` int(10) DEFAULT NULL COMMENT '浏览数',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '发动态' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dynamic
-- ----------------------------
INSERT INTO `dynamic` VALUES (1, 2, '1', '2', '1', '3', 1, 3, '2020-05-10 11:09:18');
INSERT INTO `dynamic` VALUES (2, 1, 'admin', NULL, NULL, '哈哈哈', 0, 1, '2020-05-11 15:41:30');
INSERT INTO `dynamic` VALUES (3, 1, 'admin', NULL, NULL, '4444', 0, 1, '2020-05-11 15:44:14');
INSERT INTO `dynamic` VALUES (4, 1, 'admin', NULL, NULL, '555', 0, 2, '2020-05-11 15:45:11');
INSERT INTO `dynamic` VALUES (5, 1, 'admin', NULL, NULL, '哈哈哈看看', 0, 0, '2020-05-11 15:46:02');
INSERT INTO `dynamic` VALUES (6, 1, 'admin', NULL, NULL, '好好混', 0, 1, '2020-05-11 15:47:53');
INSERT INTO `dynamic` VALUES (7, 1, 'admin', NULL, NULL, '555', 0, 4, '2020-05-11 15:49:41');
INSERT INTO `dynamic` VALUES (8, 1, 'admin', NULL, NULL, '565666', 0, 4, '2020-05-11 15:52:49');
INSERT INTO `dynamic` VALUES (9, 1, 'admin', NULL, NULL, '2333', 0, 4, '2020-05-11 15:54:07');
INSERT INTO `dynamic` VALUES (10, 1, 'admin', NULL, NULL, '哈哈', 0, 8, '2020-05-12 22:01:41');
INSERT INTO `dynamic` VALUES (11, 1, 'admin', NULL, NULL, '我是娟娟', 0, 11, '2020-05-12 22:01:41');
INSERT INTO `dynamic` VALUES (12, 14, 'gjj', NULL, NULL, '发动态', 0, 0, '2020-05-16 14:05:01');
INSERT INTO `dynamic` VALUES (13, 1, 'admin', NULL, NULL, '写论文', 0, 2, '2020-05-25 16:05:39');
INSERT INTO `dynamic` VALUES (14, 1, 'admin', NULL, NULL, '正在上课', 0, 0, '2020-05-25 16:06:43');
INSERT INTO `dynamic` VALUES (15, 1, 'admin', NULL, NULL, '学校学习', 0, 0, '2020-05-25 16:07:04');
INSERT INTO `dynamic` VALUES (16, 1, 'admin', NULL, NULL, '1566', 0, 0, '2020-05-25 19:40:28');
INSERT INTO `dynamic` VALUES (17, 1, 'admin', NULL, NULL, '555', 0, 0, '2020-05-25 19:41:02');

-- ----------------------------
-- Table structure for dynamic_comment
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_comment`;
CREATE TABLE `dynamic_comment`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论表',
  `dynamic_id` int(11) DEFAULT NULL COMMENT '动态id',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime(0) DEFAULT NULL,
  `user_id` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dynamic_comment
-- ----------------------------
INSERT INTO `dynamic_comment` VALUES (1, 1, '1', '2020-05-10 11:09:32', 1);
INSERT INTO `dynamic_comment` VALUES (2, 1, '22', '2020-05-11 10:59:51', 1);
INSERT INTO `dynamic_comment` VALUES (3, 1, '55', '2020-05-11 11:02:13', 1);
INSERT INTO `dynamic_comment` VALUES (4, 1, '66', '2020-05-11 11:03:35', 1);
INSERT INTO `dynamic_comment` VALUES (5, 1, '88', '2020-05-11 11:04:39', 1);
INSERT INTO `dynamic_comment` VALUES (6, 1, '99', '2020-05-11 11:05:01', 1);
INSERT INTO `dynamic_comment` VALUES (7, 1, '中华', '2020-05-11 11:07:09', 1);
INSERT INTO `dynamic_comment` VALUES (8, 1, '解决问题', '2020-05-11 11:17:52', 1);
INSERT INTO `dynamic_comment` VALUES (9, 7, '', '2020-05-12 21:51:17', 1);
INSERT INTO `dynamic_comment` VALUES (10, 9, '', '2020-05-12 21:51:22', 1);
INSERT INTO `dynamic_comment` VALUES (11, 8, '。。。。', '2020-05-12 21:51:29', 1);
INSERT INTO `dynamic_comment` VALUES (12, 7, 'hello', '2020-05-12 21:56:26', 1);
INSERT INTO `dynamic_comment` VALUES (13, 10, '可以解决', '2020-05-12 22:01:49', 1);
INSERT INTO `dynamic_comment` VALUES (14, 11, 'hello', '2020-05-12 22:01:49', 1);
INSERT INTO `dynamic_comment` VALUES (15, 13, '自己评论', '2020-05-25 16:07:19', 1);

-- ----------------------------
-- Table structure for dynamic_like
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_like`;
CREATE TABLE `dynamic_like`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `dynamic_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dynamic_like
-- ----------------------------
INSERT INTO `dynamic_like` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `feedback` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '反馈',
  `reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回复',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '反馈回复表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (6, 1, '公告推荐会每天更新吗？', '是的，每天可以更新大家需要的', '2020-05-11 12:02:04');
INSERT INTO `feedback` VALUES (7, 1, '是可以直接在手机上点击吗？', '对的，可以直接在手机上操作', '2020-05-11 12:03:45');
INSERT INTO `feedback` VALUES (8, 1, '是可以发布朋友圈吗？', '是的，是可以直接在手机上操作，发布到步友圈中', '2020-05-11 12:04:18');
INSERT INTO `feedback` VALUES (9, 1, '666', NULL, '2020-05-11 12:05:45');
INSERT INTO `feedback` VALUES (11, 1, '好的', NULL, '2020-05-11 12:46:26');
INSERT INTO `feedback` VALUES (14, 1, 'ces', NULL, '2020-06-02 20:09:51');
INSERT INTO `feedback` VALUES (15, 1, '6666', NULL, '2020-06-02 20:12:14');
INSERT INTO `feedback` VALUES (16, 1, '888', NULL, '2020-06-02 20:12:49');
INSERT INTO `feedback` VALUES (17, 1, '999', NULL, '2020-06-02 20:13:38');
INSERT INTO `feedback` VALUES (18, 1, '111', NULL, '2020-06-02 20:14:10');
INSERT INTO `feedback` VALUES (19, 1, '666', NULL, '2020-06-02 20:18:17');
INSERT INTO `feedback` VALUES (20, 1, '633366', NULL, '2020-06-02 20:18:38');
INSERT INTO `feedback` VALUES (21, 1, '33', NULL, '2020-06-02 20:19:08');
INSERT INTO `feedback` VALUES (22, 1, '55', NULL, '2020-06-02 20:26:11');
INSERT INTO `feedback` VALUES (23, 1, 'kk', NULL, '2020-06-02 20:26:52');
INSERT INTO `feedback` VALUES (24, 1, '聊聊', NULL, '2020-06-02 20:28:05');
INSERT INTO `feedback` VALUES (25, 1, '哈哈', NULL, '2020-06-02 20:31:04');
INSERT INTO `feedback` VALUES (26, 1, '44', NULL, '2020-06-02 20:33:44');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `view_count` bigint(20) DEFAULT NULL COMMENT '浏览次数',
  `create_time` datetime(0) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '几个提高代谢的方法，减肥就应该多管齐下！\r\n\r\n1、不要狂减热量的摄入\r\n\r\n人体有着一套自动保持正常体重的程序，如果你突然从饮食中减掉1000大卡的热量，你身体的基础新陈代谢率将自动减缓，这不会帮你更好的瘦身。你应该做的是循序渐进，慢慢减少热量的摄入，比如今天少摄入200大卡，保持几天后继续减少热量的摄入。\r\n\r\n2、早餐一定要吃\r\n\r\n早餐是三餐中与代谢及减肥关系最密切的一餐。人在睡眠时，新陈代谢率会很低，早晨的第一餐会让你的新陈代谢恢复正常水平，帮助你更好的消耗热量。所以，如果忽略早餐，身体在午饭之前不可能和往常一样燃烧脂肪，早餐就像是新陈代谢的启动器。\r\n\r\n3、多吃蛋白质食物\r\n\r\n摄取足量的蛋白质能够提高肌体的新陈代谢水平，使人体每日多燃烧150～200大卡的热量。蛋白质主要是由氨基酸组成的，身体消化这类食物比消化脂肪及碳水化合物更费时费力。所以，要将它们分解掉就需要燃烧更多的热量。我们应当保证每日摄入总热量的25%～35%来自蛋白质，这样的饮食结构才算平衡。建议每公斤体重摄入蛋白为1.2克-2克。\r\n\r\n4、增加进食次数\r\n\r\n每天吃4-5顿小餐要比3顿大餐更能保持较高的新陈代谢水平。两餐之间的时间要尽量保持在2～3小时之内，并且要保证每餐必须有蛋白质食物，它可是新陈代谢的增强剂。\r\n\r\n5、学会吃碳水化合物\r\n\r\n精制碳水化合物，如白面，能使胰岛素水平不稳定，也相应促进了脂肪在肌体内的存储，由此会降低新陈代谢率。因而，补充碳水化合物时，应以含高纤维者为佳，如各类蔬菜、水果及全麦谷物等，它们都属于好的碳水化合物，这些食物对胰岛素水平影响很小。\r\n\r\n6、戒酒\r\n\r\n拿酒杯时要三思。最近有多项研究表明，餐前饮酒会使人多摄入200千卡热量。另有研究发现，肌体在发挥新陈代谢功能时，首先燃烧的是酒精中所含的热量。也就是说，其他饮食中的热量有可能作为脂肪存储于皮下。养生的红葡萄酒，可以小酌一杯，但也不要贪杯。\r\n\r\n7、进行减肥操锻炼\r\n\r\n减肥操是提高身体基础新陈代谢率的最佳方式。随着年龄的增长，肌体基础新陈代谢率会下降，但是减肥操训练能使脂肪下降速度变快。\r\n\r\n8、学会利用经期燃烧脂肪\r\n\r\n每当经前综合症带来的情绪波动与肢体肿胀出现，女性就喜欢懒洋洋地窝在沙发上。不过，如果在月经来临之前的这段时间进行适当的训练，会减掉更多的肥肉。女性在从排卵到月经来潮的时间内进行健身锻炼，能多燃烧掉20%的脂肪。因为在经前这段时间，雌激素与孕激素的水平已达峰值，这些激素能够促进肌体利用脂肪作为能量。', 7, '2020-05-01 17:05:13', '文章一');
INSERT INTO `notice` VALUES (2, '保持90斤的姑娘，坦白了10条吃不胖的减肥秘诀\r\n\r\n1.戒糖！\r\n\r\n强烈建议拒绝白砂糖、麦芽糖、葡萄糖浆、红糖等等所有的纯糖，不吃一切添加加了这些糖分的食物，尤其是零食甜品！这一条是对减肥er最最基本的要求！\r\n\r\n减脂期间在你选购食材时，一定要注意学会看包装上的成分表，凡是加了各种添加糖的返回去，麻溜的放回去！要知道超市里90%以上的零食不是加了白砂糖就是蔗糖/果糖，你常喝一点点、肥宅水就更不用说了！\r\n\r\n你说是能把“戒糖”这一点做到，减肥就成功一般了~而你戒糖后的皮肤超好，不行你试试！\r\n\r\n\r\n\r\n2.戒高碳！\r\n\r\n不吃主食我可没说，我只是让大家把上述的换成这些杂粮：玉米、藜麦、紫薯、糙米、小米、全麦面包（看我自制的全麦欧包）、意面等等的低GI低升糖指数的粗粮类主食；\r\n\r\n若你一下子接受不了粗粮，可以一般米饭一般粗粮代替。另外，杂粮的饱腹感绝对 顶你一碗米饭的量，不容易饿的快！\r\n\r\n\r\n\r\n3.所有的节食都会走向一场暴食的狂欢！\r\n\r\n节食一时爽，一直节食一直爽！我劝你早点放弃这个念头！99%的节食者最后都暴食反弹了！长期克制饮食，用残留的意志力去对抗身体对食物的本能欲望，结果不用猜都知道——贪吃暴食+基础代谢受损 → 复胖！越减越肥 !\r\n\r\n\r\n4. 减肥没必要顿顿水煮一切！\r\n\r\n生冷难啃的沙拉、咽不下的柴口鸡胸、毫无味道的轻食，统统不应该出现在我们长期的减肥餐桌上，你天天面对这些食物迟早放弃减肥！\r\n\r\n水煮最后只会是让你厌恶减肥，所以不如培养一份做美食的爱好吧，从心底萌牙的手艺才是你坚持健身餐的动力！\r\n\r\n\r\n5.吃慢一点，享受食物的味道！\r\n\r\n你身上25%的肉就是因为你狼吞虎咽长上的！回忆下以前的饮食习惯：5分钟干掉2碗菜和一大碗饭，压根儿没尝到菜的味道！\r\n\r\n细嚼慢咽！请把4个字刻在你的心里，吃饭是每一口务必咀嚼30次！要知道尝试减的咀嚼食物大脑才会接收到饱腹的信号，另外我们体内消化系统中的“饥饿激素”也会随之下降。当你养成这细嚼慢咽的饮食习惯，我保证你比是有还少吃99大卡！\r\n\r\n\r\n6、一定要奖励自己，才能坚你的减肥大业！\r\n\r\n不管是日日的减脂餐，还是辛苦训练的撸铁，一定一定记得奖励自己。这一点其实跟欺骗餐同理：给自己一个减肥的节奏，如一周4-5天的健康饮食和训练，在这几天就安心地吃健康餐和认真的运动，尽自己努力完成预定目标；\r\n\r\n而在奖励自己的那天，你可以奖励自已', 0, '2020-05-02 18:09:18', '文章二');
INSERT INTO `notice` VALUES (3, '两个月减了16斤！！！\r\n分享三个经验：\r\n1、节食减肥不可取。节食减肥伤身体不说，而且容易反复，不知道有多少人饥一顿饱一顿，结果体重却不变呢，大家想做美美的小仙女一定要健康的减肥哦[苦笑]\r\n2、锻炼。锻炼也不必太过拼命哦，每天四十分钟的有氧无氧结合运动，就十分有效果呢[哈哈]\r\n3、晚餐只吃一碗粥（因为我是晚上七点左右开始锻炼，所以经常会饿，这时候来一个苹果，超满足！有没有！）', 3, '2020-05-02 18:10:42', '文章四');
INSERT INTO `notice` VALUES (6, '吃不胖的秘密：\n1、早晨6～9点。这是新陈代谢最旺盛的时候，脂肪不易堆积；9点之前一定要给自己补充一份均衡营养的早餐！\n2、中午12点～13点半。午饭要吃的丰盛均衡，7--8分饱足已；\n3、下午5-6点，可进食一些水果，既补充体力又抑制对晚餐的欲望；\n4、晚上7点后～次日早晨6点，此时进食最容易发胖，要强迫自己养成晚7点后不再进食的好习惯\n\n任何一个微不足道的习惯都会改变你', 3, '2020-05-16 11:24:51', '低卡饮食吃不胖');
INSERT INTO `notice` VALUES (7, '1.早起喝一杯温开水\n一个晚上以后身体处于缺水状态，一杯温开水可以唤醒身体，帮助身体排毒、加速代谢。\n2.少食多餐\n这是万能真理，每一餐吃的少一点就可以啦~晚餐吃一点点！零食忍不住可以吃我之前推荐过的低卡零食！\n3.多喝水\n每天要喝2L 以上的水哦，加快代谢、排出身体废物。缺水的话容易导致饥饿感哦\n4.运动\n真的真的要多运动！只吃不运动瘦不下来的哦～', 2, '2020-05-16 11:28:16', '减脂期注意');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `page_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `parent_id` int(11) DEFAULT NULL COMMENT '父页面id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '页面名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '页面地址',
  `level_type` int(11) DEFAULT NULL COMMENT '页面层级',
  `level_index` int(11) DEFAULT NULL COMMENT '页面索引',
  `delete_flag` int(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '是否删除',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`page_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '页面管理表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES (1, 0, '系统设置', NULL, 0, 10, 0, 'manager');
INSERT INTO `page` VALUES (2, 1, '用户管理', '/admin/userPage', 1, 22, 0, 'manager');
INSERT INTO `page` VALUES (3, 1, '页面管理', '/admin/page', 1, 23, 0, 'manager');
INSERT INTO `page` VALUES (4, 1, '角色管理', '/admin/role', 1, 24, 0, 'manager');
INSERT INTO `page` VALUES (43, 0, '公告管理', '', 0, 5, 0, 'left_menu_message');
INSERT INTO `page` VALUES (44, 43, '公告管理', '/user/notice/listAdmin', 1, 1, 0, NULL);
INSERT INTO `page` VALUES (45, 43, '公告列表', '/user/notice/list', 1, 2, 0, NULL);
INSERT INTO `page` VALUES (46, 43, '发布公告', '/user/notice/publish', 1, 3, 0, NULL);
INSERT INTO `page` VALUES (49, 0, '动态管理', '', 0, 6, 0, 'left_menu_new');
INSERT INTO `page` VALUES (51, 0, '打卡记录', '', 0, 7, 0, 'log');
INSERT INTO `page` VALUES (52, 0, '用户反馈', '', 0, 8, 0, 'left_menu_search');
INSERT INTO `page` VALUES (53, 49, '动态列表', '/dynamic/dynamicList', 1, 1, 0, NULL);
INSERT INTO `page` VALUES (54, 49, '我的动态', '/dynamic/dynamicUserList', 1, 2, 0, NULL);
INSERT INTO `page` VALUES (55, 49, '评论列表', '/dynamicComment/dynamicCommentList', 1, 3, 0, NULL);
INSERT INTO `page` VALUES (56, 49, '我的评论', '/dynamicComment/dynamicCommentUserList', 1, 4, 0, NULL);
INSERT INTO `page` VALUES (57, 51, '打卡列表', '/clockin/clockinList', 1, 1, 0, NULL);
INSERT INTO `page` VALUES (58, 51, '我的打卡', '/clockin/clockinUserList', 1, 2, 0, NULL);
INSERT INTO `page` VALUES (59, 52, '反馈列表', '/feedback/feedbackList', 1, 1, 0, NULL);
INSERT INTO `page` VALUES (60, 52, '我的反馈', '/feedback/feedbackUserList', 1, 2, 0, NULL);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型名称',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '超级管理员');
INSERT INTO `role` VALUES (2, '普通用户', '普通用户');

-- ----------------------------
-- Table structure for role_page
-- ----------------------------
DROP TABLE IF EXISTS `role_page`;
CREATE TABLE `role_page`  (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `page_id` int(11) DEFAULT NULL COMMENT '页面id',
  PRIMARY KEY (`rp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 947 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_page
-- ----------------------------
INSERT INTO `role_page` VALUES (1, 1, 1);
INSERT INTO `role_page` VALUES (2, 1, 2);
INSERT INTO `role_page` VALUES (3, 1, 3);
INSERT INTO `role_page` VALUES (4, 1, 4);
INSERT INTO `role_page` VALUES (551, 3, 6);
INSERT INTO `role_page` VALUES (552, 3, 8);
INSERT INTO `role_page` VALUES (923, 1, 43);
INSERT INTO `role_page` VALUES (924, 1, 44);
INSERT INTO `role_page` VALUES (925, 1, 45);
INSERT INTO `role_page` VALUES (926, 1, 46);
INSERT INTO `role_page` VALUES (927, 1, 49);
INSERT INTO `role_page` VALUES (928, 1, 53);
INSERT INTO `role_page` VALUES (929, 1, 54);
INSERT INTO `role_page` VALUES (930, 1, 55);
INSERT INTO `role_page` VALUES (931, 1, 56);
INSERT INTO `role_page` VALUES (932, 1, 51);
INSERT INTO `role_page` VALUES (933, 1, 57);
INSERT INTO `role_page` VALUES (934, 1, 58);
INSERT INTO `role_page` VALUES (935, 1, 52);
INSERT INTO `role_page` VALUES (936, 1, 59);
INSERT INTO `role_page` VALUES (937, 1, 60);
INSERT INTO `role_page` VALUES (938, 2, 43);
INSERT INTO `role_page` VALUES (939, 2, 45);
INSERT INTO `role_page` VALUES (940, 2, 49);
INSERT INTO `role_page` VALUES (941, 2, 54);
INSERT INTO `role_page` VALUES (942, 2, 56);
INSERT INTO `role_page` VALUES (943, 2, 51);
INSERT INTO `role_page` VALUES (944, 2, 58);
INSERT INTO `role_page` VALUES (945, 2, 52);
INSERT INTO `role_page` VALUES (946, 2, 60);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '体重',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身高',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 18, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1580745684@qq.com', '12', '06574b3e-9241-4c25-af8b-8076f48db303', '75', '18888889998', '180', '江苏省南通市', '2020-04-25 11:07:11', '');
INSERT INTO `user` VALUES (11, 20, 'user', 'e10adc3949ba59abbe56e057f20f883e', '1506317155@11.com', NULL, NULL, '50', '18551001217', '163', '江苏省连云港市', '2020-05-02 15:21:02', NULL);
INSERT INTO `user` VALUES (14, 22, 'gjj', 'e10adc3949ba59abbe56e057f20f883e', '1306317155@qq.com', NULL, '554fab62-d439-4edf-86ae-feafc72991dd', '52', '18551001279', '165', '江苏省苏州市', '2020-05-15 14:49:41', NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `ur_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`ur_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, '1', 1);
INSERT INTO `user_role` VALUES (153, '9', 2);
INSERT INTO `user_role` VALUES (154, '11', 2);
INSERT INTO `user_role` VALUES (155, '12', 2);
INSERT INTO `user_role` VALUES (156, '13', 2);
INSERT INTO `user_role` VALUES (157, '14', 2);

SET FOREIGN_KEY_CHECKS = 1;
