/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL57
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : tests_manage_system

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 03/07/2019 10:59:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `ans_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ans_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pro_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ans_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('a10', 'C', 'p10');
INSERT INTO `answer` VALUES ('a11', '(× )改正为：进程和程序不是一一对应的。 ', 'p11');
INSERT INTO `answer` VALUES ('a12', '( × )改正为： V 操作是对信号量执行加 1 操作，意味着释放一个单位资源，加 1 后如 果信号量的值小于等于零，则从等待队列中唤醒一个进程，现进程变为就绪状态，否则现 进程继续进行', 'p12');
INSERT INTO `answer` VALUES ('a13', '( √) ', 'p13');
INSERT INTO `answer` VALUES ('a14', '( × )改正为：在采用树型目录结构的文件系统中，不同用户的文件名可以相同', 'p14');
INSERT INTO `answer` VALUES ('a15', '( √)\r\n', 'p15');
INSERT INTO `answer` VALUES ('a16', ' PCB(或进程控制块 )、 程序、数据集合；PCB', 'p16');
INSERT INTO `answer` VALUES ('a17', '编译阶段 ；装入阶段 ', 'p17');
INSERT INTO `answer` VALUES ('a18', '普通文件、目录文件、特别文件 ', 'p18');
INSERT INTO `answer` VALUES ('a19', ' SPOOLing ；独占；共享 ', 'p19');
INSERT INTO `answer` VALUES ('a2', 'A', 'p2');
INSERT INTO `answer` VALUES ('a20', '微内核；调度运行 ；线程', 'p20');
INSERT INTO `answer` VALUES ('a21', '操作系统是控制和管理计算机系统内各种硬件和软件资源、有效地组织多道程 序运行的系统软件 (或程序集合 )，是用户与计算机之间的接口。操作系统的主要功能包括：存储器管理、处理机管理、设备管理、文件管理以及用户接口 管理。 ', 'p21');
INSERT INTO `answer` VALUES ('a22', '存储器管理的主要功能是：内存分配，地址映射，内存保护，内存扩充。 虚拟存储器是用户能作为可编址内存对待的存储空间， 在这种计算机系统中虚地址被映象 成实地址。或者：简单地说，虚拟存储器是由操作系统提供的一个假想的特大存储器。', 'p22');
INSERT INTO `answer` VALUES ('a23', '文件的逻辑组织 ——用户对文件的观察和使用是从自身处理文件中数据时采用的组 织方式来看待文件组织形式。 这种从用户观点出发所见到的文件组织形式称为文件的逻辑 组织。 文件的物理组织 ——文件在存储设备上的存储组织形式称为文件的物理组织。 ', 'p23');
INSERT INTO `answer` VALUES ('a24', 'F', 'p24');
INSERT INTO `answer` VALUES ('a25', 'A', 'p25');
INSERT INTO `answer` VALUES ('a26', 'C', 'p26');
INSERT INTO `answer` VALUES ('a27', 'A', 'p27');
INSERT INTO `answer` VALUES ('a28', 'B', 'p28');
INSERT INTO `answer` VALUES ('a29', 'C', 'p29');
INSERT INTO `answer` VALUES ('a3', 'C', 'p3');
INSERT INTO `answer` VALUES ('a30', 'B', 'p30');
INSERT INTO `answer` VALUES ('a31', 'D', 'p31');
INSERT INTO `answer` VALUES ('a32', 'D', 'p32');
INSERT INTO `answer` VALUES ('a33', 'A', 'p33');
INSERT INTO `answer` VALUES ('a34', '正确。依法治国是社会文明进步的显著标志，是国家长治久安的重要保障，是 社会主义民主政治的基本要求， 也是建设中国特色社会主义经济、 政治、文化，构建和谐社 会的必然要求。首先，依法治国是中国共产党执政方式的重大转变，有利于加强和 改善党的领导；其次，依法治国是发展社会主义民主，实现人民当家作主的根本保 证;其三，依法治国是发展社会主义市场经济和扩大对外开放的客观需要；最后， 依法治国是国家长治久安的重要保障。', 'p34');
INSERT INTO `answer` VALUES ('a35', '错误。 和谐社会并不简单地等同于稳定的社会。和谐的社会必然是稳定 的社会，但稳定的社会不一定和谐。在历史上，有的稳定社会以牺牲社会活力为代价的。和谐社会不是静态的完美，而是动态的、充满生机和活力的社会。', 'p35');
INSERT INTO `answer` VALUES ('a36', '正确。 十六大指出： “一国两制 ”是两岸统一的最佳方式。首先，用“一 国两制” 方式实现祖国统一， 得到了全体中华儿女的衷心拥护和国际上的高度评价； 其次，用“一国两制”方式解决台湾问题，考虑了历史和现实，有利于两岸共谋发展，保持 台湾的繁荣稳定，有利于中华民族的伟业；最后，香港澳门回归后的事实证明， “一 国两制”的方针是正确的，具有强大的生命力，是解决两岸统一的最佳方式。', 'p36');
INSERT INTO `answer` VALUES ('a37', '（以下提纲需展开） \r\n我国现阶段的人民民主专政实质上就是无产阶级专政：第一，性质相同；第二，作用、 职能相同；第三，历史使命相同。  人民民主专政是适合于中国国情和革命传统的一种形式，具有鲜明的中国特色：第一， 从政权组成的阶级结构看；第二，从党派之间的关系看；第三，从表述上看。  人民民主专政实质上就是无产阶级专政，从提法上更适合于我们的国情。 ', 'p37');
INSERT INTO `answer` VALUES ('a38', '公有制经济的含义： 公有制经济的范围不仅包括国有经济和集体经济， 还包括混合所有 制经济中的国有成分和集体成分。 公有制的主体地位主要体现在两个方面： 一是公有资产在社会总资产中占优势。 二是国 有经济控制国民经济命脉， 对经济发展起主导作用。这是就全国而言的， 有的地方、 有些产业可以有所差别。', 'p38');
INSERT INTO `answer` VALUES ('a39', 'A', 'p39');
INSERT INTO `answer` VALUES ('a4', 'C', 'p4');
INSERT INTO `answer` VALUES ('a40', 'B', 'p40');
INSERT INTO `answer` VALUES ('a41', 'C', 'p41');
INSERT INTO `answer` VALUES ('a42', 'D', 'p42');
INSERT INTO `answer` VALUES ('a43', 'A', 'p43');
INSERT INTO `answer` VALUES ('a44', 'A', 'p44');
INSERT INTO `answer` VALUES ('a45', 'B', 'p45');
INSERT INTO `answer` VALUES ('a46', 'C', 'p46');
INSERT INTO `answer` VALUES ('a47', 'D', 'p47');
INSERT INTO `answer` VALUES ('a48', 'B', 'p48');
INSERT INTO `answer` VALUES ('a49', '耦合', 'p49');
INSERT INTO `answer` VALUES ('a5', 'D', 'p5');
INSERT INTO `answer` VALUES ('a50', '事务流型结构', 'p50');
INSERT INTO `answer` VALUES ('a51', '程序＋文档', 'p51');
INSERT INTO `answer` VALUES ('a52', '黑盒 ', 'p52');
INSERT INTO `answer` VALUES ('a53', '人机交互组件', 'p53');
INSERT INTO `answer` VALUES ('a54', 'UML', 'p54');
INSERT INTO `answer` VALUES ('a55', '扇出', 'p55');
INSERT INTO `answer` VALUES ('a56', 'Brooks', 'p56');
INSERT INTO `answer` VALUES ('a57', '依赖', 'p57');
INSERT INTO `answer` VALUES ('a58', '模块化', 'p58');
INSERT INTO `answer` VALUES ('a59', '该方法把测试对象看作一个打开的盒子，测试人员须了解程序的内部结构和处理过程，以检查处理过程的细节为基础， 对程序中尽可能多的逻辑路径进行测试，检查内部控制结构和数据结构是否有错，实际的运行状态与预期的状态是否一致。 白盒法也不可能进行穷举测试。 ', 'p59');
INSERT INTO `answer` VALUES ('a6', 'B', 'p6');
INSERT INTO `answer` VALUES ('a60', '具有相同或相似性质的对象的抽象就是类。 ', 'p60');
INSERT INTO `answer` VALUES ('a61', '指在设计和确定模块时，使得一个模块内包含的信息（过程或数据），对于不需要这些信息的其它模块来说，是不能 访问的。 ', 'p61');
INSERT INTO `answer` VALUES ('a62', '指设计足够的测试用例，覆盖被测程序中所有可能的路径。 ', 'p62');
INSERT INTO `answer` VALUES ('a63', '软件工程是指导计算机软件开发和维护的工程学科。采用工程的概念、原理、技术和方法来开发与维护软件，把经过 时间考验而证明正确的管理技术和当前能够得到的最好的技术方法结合起来，这就是软件工程。 ', 'p63');
INSERT INTO `answer` VALUES ('a7', 'D', 'p7');
INSERT INTO `answer` VALUES ('a8', 'C', 'p8');
INSERT INTO `answer` VALUES ('a9', 'C', 'p9');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `mana_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mana_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mana_pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`mana_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('m01', '管理员', '12345');

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem`  (
  `pro_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_ansno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pro_keyw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pro_dif` int(1) NULL DEFAULT NULL,
  `cha_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cha_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cha_mpoint` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pro_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pro_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES ('p10', '下列关于进程和线程的叙述中，正确的是 (  )。\r\nA．一个进程只可拥有一个线程\r\nB．一个线程只可拥有一个进程\r\nC．一个进程可拥有若干个线程\r\nD．一个线程可拥有若干个进程\r\n', 'a10', '操作系统原理', 2, '2', '死锁', '死锁', '选择题');
INSERT INTO `problem` VALUES ('p11', '简单地说，进程是程序的执行过程。因而，进程和程序是一一对应的。 ( ) ', 'a11', '操作系统原理', 3, '3', 'PV操作', 'PV操作', '判断题');
INSERT INTO `problem` VALUES ('p12', 'V 操作是对信号量执行加 1 操作，意味着释放一个单位资源，加 l 后如果信号量 的值小于等于零，则从等待队列中唤醒一个进程，使该进程变为阻塞状态，而现进程继续 进行。 ( )', 'a12', '操作系统原理', 6, '3', 'PV操作', 'PV操作', '判断题');
INSERT INTO `problem` VALUES ('p13', '段页式存储管理汲取了页式管理和段式管理的长处，其实现原理结合了页式和段式管 理的基本思想， 即用分段方法来分配和管理用户地址空间， 用分页方法来管理物理存储空 间。( ) ', 'a13', '操作系统原理', 3, '3', 'PV操作', 'PV操作', '判断题');
INSERT INTO `problem` VALUES ('p14', '在采用树型目录结构的文件系统中，各用户的文件名必须互不相同。 ( ) ', 'a14', '操作系统原理', 5, '3', 'PV操作', 'PV操作', '判断题');
INSERT INTO `problem` VALUES ('p15', '用户程序应与实际使用的物理设备无关，这种特性就称作与设备无关性。 ( ) ', 'a15', '操作系统原理', 2, '3', 'PV操作', 'PV操作', '判断题');
INSERT INTO `problem` VALUES ('p16', '通常，进程实体是由 ___________________________ 这三部分组成，其 中 ________是进程存在的惟一标志。 ', 'a16', '操作系统原理', 5, '5', '资源调度', '资源调度', '填空题');
INSERT INTO `problem` VALUES ('p17', '从用户的源程序进入系统到相应程序在机器上运行，所经历的主要处理阶段有编 辑阶段，__________ ，连接阶段，__________和运行阶段', 'a17', '操作系统原理', 6, '5', '资源调度', '资源调度', '填空题');
INSERT INTO `problem` VALUES ('p18', '在 UNIX 系统中，文件的类型主要包括__________、___________、___________', 'a18', '操作系统原理', 7, '5', '资源调度', '资源调度', '填空题');
INSERT INTO `problem` VALUES ('p19', '虚拟设备是通过 ______________ 技术把_______设备变成能为若干用户_______的设备。 ', 'a19', '操作系统原理', 5, '5', '资源调度', '资源调度', '填空题');
INSERT INTO `problem` VALUES ('p2', '在操作系统中，进程的最基本的特征是 (  )。\r\nA．动态性和并发性 B．顺序性和可再现性\r\nC．与程序的对应性 D．执行过程的封闭性\r\n', 'a2', '操作系统原理', 1, '2', '死锁', '死锁', '选择题');
INSERT INTO `problem` VALUES ('p20', 'Windows NT 是采用___________结构的操作系统，它的进程的功能发生了变化，它是资源 分配的单位，不是___________的单位，后者的功能由_______ 完成', 'a20', '操作系统原理', 3, '5', '资源调度', '资源调度', '填空题');
INSERT INTO `problem` VALUES ('p21', '什么是操作系统 ?它的主要功能是什么 ?', 'a21', '操作系统原理', 3, '7', '文件管理', '文件管理', '简答题');
INSERT INTO `problem` VALUES ('p22', '操作系统中存储器管理的主要功能是什么 ?什么叫虚拟存储器 ?', 'a22', '操作系统原理', 5, '7', '文件管理', '文件管理', '简答题');
INSERT INTO `problem` VALUES ('p23', '什么是文件的逻辑组织和物理组织 ?', 'a23', '操作系统原理', 7, '7', '文件管理', '文件管理', '简答题');
INSERT INTO `problem` VALUES ('p24', '20 世纪 30 年代，中国共产党最早提出反对教条主义任务的领导人是 （ ）。\r\nA、毛泽东 B、刘少奇\r\nC、周恩来 D、张闻天', 'a24', '毛泽东思想和中国特色社会主义概论', 2, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p25', '毛泽东指出，解决中国一切革命问题的最基本的根据是（ ）。\r\nA、正确分析中国社会的阶级状况 B、正确分析中国社会的经济结构\r\nC、认清中国社会的特殊国情 D、认清中国社会的主要矛盾\r\n', 'a25', '毛泽东思想和中国特色社会主义概论', 3, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p26', '我国建国初期属于（ ）。\r\nA、新民主主义社会 B、社会主义社会\r\nC、资本主义社会 D、社会主义初级阶段', 'a26', '毛泽东思想和中国特色社会主义概论', 5, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p27', '邓小平揭示社会主义本质的科学内涵是在（ ）。\r\nA、1978 年 B、1980 年\r\nC、1992 年 D、1995 年', 'a27', '毛泽东思想和中国特色社会主义概论', 3, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p28', '社会主义社会实行按劳分配的经济基础是（ ）。\r\nA、社会主义生产资料的公有制 B、社会主义社会的生产力发展水平\r\nC、存在旧的社会分工，劳动还是谋生手段 D、社会主义经济仍然是商品经济', 'a28', '毛泽东思想和中国特色社会主义概论', 4, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p29', '社会主义文化建设的基本内容包括思想道德建设和（ ）。\r\nA、民主法制建设 B、教育科学文化建设\r\nC、树立共产主义理想 D、世界观、人生观、价值观建设', 'a29', '毛泽东思想和中国特色社会主义概论', 5, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p3', '操作系统中利用信号量和 P、V 操作， (  )。\r\nA．只能实现进程的互斥 B．只能实现进程的同步\r\nC．可实现进程的互斥和同步 D．可完成进程调度\r\n', 'a3', '操作系统原理', 3, '2', '死锁', '死锁', '选择题');
INSERT INTO `problem` VALUES ('p30', '当今世界发展的趋势是（ ）。\r\nA、一极化 B、两极格局\r\nC、多极化 D、三足鼎立', 'a30', '毛泽东思想和中国特色社会主义概论', 4, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p31', '台湾问题是（ ）。\r\nA、第二次世界大战的遗留问题 B、中国国内战争的遗留问题\r\nC、甲午战争遗留下来的问题 D、中国近代史上的遗留问题', 'a31', '毛泽东思想和中国特色社会主义概论', 3, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p32', '威胁世界和平发展与稳定的主要根源是（ ）。\r\nA、恐怖主义 B、民族分裂主义\r\nC、宗教极端势力 D、霸权主义和强权政治', 'a32', '毛泽东思想和中国特色社会主义概论', 1, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p33', '我们国家的领导阶级是（ ）。\r\nA、无产阶级 B、资产阶级\r\nC、农民阶级 D、工人阶级', 'a33', '毛泽东思想和中国特色社会主义概论', 2, '3', '邓小平理论', '邓小平理论', '选择题');
INSERT INTO `problem` VALUES ('p34', '依法治国是党领导人民治理国家的基本方略。', 'a34', '毛泽东思想和中国特色社会主义概论', 4, '5', '三个代表思想', '三个代表思想', '简答题');
INSERT INTO `problem` VALUES ('p35', '稳定的社会就是和谐社会。', 'a35', '毛泽东思想和中国特色社会主义概论', 7, '5', '三个代表思想', '三个代表思想', '简答题');
INSERT INTO `problem` VALUES ('p36', '“一国两制”是中国国家统一的最佳方案。', 'a36', '毛泽东思想和中国特色社会主义概论', 9, '5', '三个代表思想', '三个代表思想', '简答题');
INSERT INTO `problem` VALUES ('p37', '如何理解我国现阶段的人民民主专政实质上就是无产阶级专政？', 'a37', '毛泽东思想和中国特色社会主义概论', 6, '5', '三个代表思想', '三个代表思想', '简答题');
INSERT INTO `problem` VALUES ('p38', '如何理解公有制经济的主体地位？ ', 'a38', '毛泽东思想和中国特色社会主义概论', 8, '5', '三个代表思想', '三个代表思想', '简答题');
INSERT INTO `problem` VALUES ('p39', '计算机系统可以划分为软件系统和硬件系统，软件是一种 A．逻辑产品 B．文档资料    C ．程序代码 D．物理装置 ', 'a39', '软件工程', 1, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p4', '作业调度的关键在于 (  )。\r\nA．选择恰当的进程管理程序 B．用户作业准备充分\r\nC．选择恰当的作业调度算法 D．有一个较好的操作环境\r\n', 'a4', '操作系统原理', 2, '2', '死锁', '死锁', '选择题');
INSERT INTO `problem` VALUES ('p40', '可行性分析研究的主要目的是 A.定义项目 B. 项目是否值得开发 C.开发项目 D.规划项目 ', 'a40', '软件工程', 2, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p41', '在下列四种模块的耦合性中，信息隐蔽性能最好的是（ ） A.控制耦合 B.内容耦合 C. 数据耦合 D. 特征耦合 ', 'a41', '软件工程', 1, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p42', '需求分析是回答系统必须（ ）的问题。 A. 为谁做 B.怎么做 C.何时做 D.做什么 ', 'a42', '软件工程', 3, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p43', '在 UML中，类是用 （ ）表示的 A 矩形框 B 椭圆 C 箭头 D 菱形框 ', 'a43', '软件工程', 3, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p44', '编码阶段是位于哪个阶段之后 A. 详细设计 B. 可行性研究 C. 总体设计 D. 需求分析 ', 'a44', '软件工程', 4, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p45', '在数据流图中，圆圈符号表示的是 A. 数据源点或终点 B.数据处理 C. 数据存储 D. 数据流 ', 'a45', '软件工程', 5, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p46', '内聚是衡量模块内部聚合能力的量度。内聚越高，说明模块内各成分彼此联系的程度 A．越松散 B．彼此相等 C．越紧密 D．没有联系 ', 'a46', '软件工程', 6, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p47', '在瀑布模型中，将软件划分为若干个时期，软件项目的可行性研究一般归属于（ ） A、维护时期 B、开发时期 C、运行时期 D、计划时期 ', 'a47', '软件工程', 7, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p48', ' 软件维护有四种，下面哪一个不是的 A. 完善性维护 B. 测试性维护 C. 预防性维护 D. 适应性维护', 'a48', '软件工程', 8, '8', '软件维护', '软件维护', '选择题');
INSERT INTO `problem` VALUES ('p49', '常用__________和内聚这两个定性度量标准来评定模块的独立性。 ', 'a49', '软件工程', 2, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p5', '系统抖动是指 (  )。\r\nA．使用机器时，屏幕闪烁的现象\r\nB．由于主存分配不当，偶然造成主存不够的现象\r\nC．系统盘有问题，致使系统不稳定的现象\r\nD．被调出的页面又立刻被调入所形成的频繁调入调出现象', 'a5', '操作系统原理', 2, '2', '死锁', '死锁', '选择题');
INSERT INTO `problem` VALUES ('p50', '结构化设计方法以数据流图为基础， 按一定步骤映射成软件结构， 数据流图有两种基本结构： 变换型结构和_____________________。 ', 'a50', '软件工程', 2, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p51', '软件的定义可以简单的表述为：软件＝________________ ', 'a51', '软件工程', 3, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p52', '测试技术有黑盒测试和白盒测试两种，根据程序的功能来设计测试用例，这种方法称为____________测试。 ', 'a52', '软件工程', 3, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p53', '在面向对象的系统设计过程中，有 4 种主要的设计组件必须定义，它们是领域组件、_______________ 、 任务管理组件和数据管理组件。', 'a53', '软件工程', 3, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p54', '统一建模语言是面向对象软件工程所使用的一种建模工具，其英文缩写是_____________', 'a54', '软件工程', 4, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p55', '软件结构的深度、宽度、扇入、扇出四个特征，定义了软件结构的形态。________________是指一个模块直接调用的 下属模块的数目。 ', 'a55', '软件工程', 5, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p56', '向一个已经拖期的项目追加开发人员，可能使它完成得更晚。鉴于这一发现的重要性，许多文献称之为_______________定律。 ', 'a56', '软件工程', 6, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p57', ' 在 UML的图形符号中，虚线箭头表示的是两个元素之间的 ____________关系。', 'a57', '软件工程', 8, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p58', ' 在软件的开发过程中，必须遵循的原则是抽象、信息隐蔽和______________。', 'a58', '软件工程', 9, '4', '类图', '类图', '填空题');
INSERT INTO `problem` VALUES ('p59', ' 白盒法 ', 'a59', '软件工程', 2, '2', '软件工程', '软件工程', '简答题');
INSERT INTO `problem` VALUES ('p6', '在分页存储管理系统中，从页号到物理块号的地址映射是通过 (  )实现的。\r\nA．段表 B．页表\r\nC. PCB D．JCB ', 'a6', '操作系统原理', 1, '2', '死锁', '死锁', '选择题');
INSERT INTO `problem` VALUES ('p60', '类', 'a60', '软件工程', 4, '2', '软件工程', '软件工程', '简答题');
INSERT INTO `problem` VALUES ('p61', '信息隐蔽 ', 'a61', '软件工程', 5, '2', '软件工程', '软件工程', '简答题');
INSERT INTO `problem` VALUES ('p62', '路径覆盖 ', 'a62', '软件工程', 6, '2', '软件工程', '软件工程', '简答题');
INSERT INTO `problem` VALUES ('p63', '软件工程 ', 'a63', '软件工程', 8, '2', '软件工程', '软件工程', '简答题');
INSERT INTO `problem` VALUES ('p7', '在下述文件系统目录结构中， 能够用多条路径访问同一文件 (或目录 )的目录结构是 (  ) \r\nA．单级目录 B．二级目录\r\nC．纯树型目录 D．非循环图目录\r\n', 'a7', '操作系统原理', 3, '2', '死锁', '死锁', '选择题');
INSERT INTO `problem` VALUES ('p8', 'SPOOLing 技术可以实现设备的 (  )分配。\r\nA．独占 B．共享\r\nC．虚拟 D．物理\r\n', 'a8', '操作系统原理', 3, '2', '死锁', '死锁', '选择题');
INSERT INTO `problem` VALUES ('p9', '避免死锁的一个著名的算法是 (  )。\r\nA．先人先出算法 B．优先级算法\r\nC．银行家算法 D．资源按序分配法', 'a9', '操作系统原理', 3, '2', '死锁', '死锁', '选择题');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stu_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_discipline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stu_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('123', '张三', '12323', '网络安全', '大三');
INSERT INTO `student` VALUES ('124', '小明', '12345', '土木工程', '大四');
INSERT INTO `student` VALUES ('231', '孙晓传', '12345', '网络安全', '大二');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tea_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tea_pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tea_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tea_discipline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tea_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tea_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('DFG', 'DFG', 'GDFG', 'DFGFD', 'GFG');
INSERT INTO `teacher` VALUES ('T12', '12345', '塞尔达', '软件工程', '1234sdsf@qq.com');
INSERT INTO `teacher` VALUES ('T14', '123', 'KOS-MOS', '机械', '12323431@hotmail.com');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `tst_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tst_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tst_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tst_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tst_dif` int(1) NULL DEFAULT NULL,
  `tst_num` int(10) NULL DEFAULT NULL,
  `tst_score` int(10) NULL DEFAULT NULL,
  `tst_detail` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tst_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('ccd786c3-e56f-49de-b9b5-4f25b2fcc0a3', '毛概1', '2019-6-25', '闭卷', 6, 5, 100, '1.(选择题)20 世纪 30 年代，中国共产党最早提出反对教条主义任务的领导人是 （ ）。\r\nA、毛泽东 B、刘少奇\r\nC、周恩来 D、张闻天\n\n2.(选择题)毛泽东指出，解决中国一切革命问题的最基本的根据是（ ）。\r\nA、正确分析中国社会的阶级状况 B、正确分析中国社会的经济结构\r\nC、认清中国社会的特殊国情 D、认清中国社会的主要矛盾\r\n\n\n3.(选择题)我国建国初期属于（ ）。\r\nA、新民主主义社会 B、社会主义社会\r\nC、资本主义社会 D、社会主义初级阶段\n\n4.(选择题)邓小平揭示社会主义本质的科学内涵是在（ ）。\r\nA、1978 年 B、1980 年\r\nC、1992 年 D、1995 年\n\n5.(选择题)社会主义社会实行按劳分配的经济基础是（ ）。\r\nA、社会主义生产资料的公有制 B、社会主义社会的生产力发展水平\r\nC、存在旧的社会分工，劳动还是谋生手段 D、社会主义经济仍然是商品经济\n\n6.(选择题)社会主义文化建设的基本内容包括思想道德建设和（ ）。\r\nA、民主法制建设 B、教育科学文化建设\r\nC、树立共产主义理想 D、世界观、人生观、价值观建设\n\n7.(选择题)当今世界发展的趋势是（ ）。\r\nA、一极化 B、两极格局\r\nC、多极化 D、三足鼎立\n\n8.(选择题)台湾问题是（ ）。\r\nA、第二次世界大战的遗留问题 B、中国国内战争的遗留问题\r\nC、甲午战争遗留下来的问题 D、中国近代史上的遗留问题\n\n9.(选择题)威胁世界和平发展与稳定的主要根源是（ ）。\r\nA、恐怖主义 B、民族分裂主义\r\nC、宗教极端势力 D、霸权主义和强权政治\n\n10.(选择题)我们国家的领导阶级是（ ）。\r\nA、无产阶级 B、资产阶级\r\nC、农民阶级 D、工人阶级\n\n11.(辨析题)依法治国是党领导人民治理国家的基本方略。\n\n12.(辨析题)稳定的社会就是和谐社会。\n\n13.(辨析题)“一国两制”是中国国家统一的最佳方案。\n\n14.(论述题)如何理解我国现阶段的人民民主专政实质上就是无产阶级专政？\n\n15.(论述题)如何理解公有制经济的主体地位？ \n\n\n\n\n\n\n\n参考答案：\n1. C\n\n2. A\n\n3. C\n\n4. A\n\n5. B\n\n6. C\n\n7. B\n\n8. D\n\n9. D\n\n10. A\n\n11. 正确。依法治国是社会文明进步的显著标志，是国家长治久安的重要保障，是 社会主义民主政治的基本要求， 也是建设中国特色社会主义经济、 政治、文化，构建和谐社 会的必然要求。首先，依法治国是中国共产党执政方式的重大转变，有利于加强和 改善党的领导；其次，依法治国是发展社会主义民主，实现人民当家作主的根本保 证;其三，依法治国是发展社会主义市场经济和扩大对外开放的客观需要；最后， 依法治国是国家长治久安的重要保障。\n\n12. 错误。 和谐社会并不简单地等同于稳定的社会。和谐的社会必然是稳定 的社会，但稳定的社会不一定和谐。在历史上，有的稳定社会以牺牲社会活力为代价的。和谐社会不是静态的完美，而是动态的、充满生机和活力的社会。\n\n13. 正确。 十六大指出： “一国两制 ”是两岸统一的最佳方式。首先，用“一 国两制” 方式实现祖国统一， 得到了全体中华儿女的衷心拥护和国际上的高度评价； 其次，用“一国两制”方式解决台湾问题，考虑了历史和现实，有利于两岸共谋发展，保持 台湾的繁荣稳定，有利于中华民族的伟业；最后，香港澳门回归后的事实证明， “一 国两制”的方针是正确的，具有强大的生命力，是解决两岸统一的最佳方式。\n\n14. （以下提纲需展开） \r\n我国现阶段的人民民主专政实质上就是无产阶级专政：第一，性质相同；第二，作用、 职能相同；第三，历史使命相同。  人民民主专政是适合于中国国情和革命传统的一种形式，具有鲜明的中国特色：第一， 从政权组成的阶级结构看；第二，从党派之间的关系看；第三，从表述上看。  人民民主专政实质上就是无产阶级专政，从提法上更适合于我们的国情。 \n\n15. 公有制经济的含义： 公有制经济的范围不仅包括国有经济和集体经济， 还包括混合所有 制经济中的国有成分和集体成分。 公有制的主体地位主要体现在两个方面： 一是公有资产在社会总资产中占优势。 二是国 有经济控制国民经济命脉， 对经济发展起主导作用。这是就全国而言的， 有的地方、 有些产业可以有所差别。\n\n');
INSERT INTO `test` VALUES ('cec1843b-828c-4701-b0ce-cb639f62107c', 'sda', '2019-01-18', '开卷', 6, 5, 5, '1.(选择题)以下著名的操作系统中，属于多用户、分时系统的是 (  )。\r\nA．DOS 系统 B．UNIX 系统\r\nC．Windows NT 系统 D．OS／2 系统\n\n2.(选择题)下列关于进程和线程的叙述中，正确的是 (  )。\r\nA．一个进程只可拥有一个线程\r\nB．一个线程只可拥有一个进程\r\nC．一个进程可拥有若干个线程\r\nD．一个线程可拥有若干个进程\r\n\n\n3.(判断题)简单地说，进程是程序的执行过程。因而，进程和程序是一一对应的。 ( ) \n\n4.(判断题)V 操作是对信号量执行加 1 操作，意味着释放一个单位资源，加 l 后如果信号量 的值小于等于零，则从等待队列中唤醒一个进程，使该进程变为阻塞状态，而现进程继续 进行。 ( )\n\n5.(判断题)段页式存储管理汲取了页式管理和段式管理的长处，其实现原理结合了页式和段式管 理的基本思想， 即用分段方法来分配和管理用户地址空间， 用分页方法来管理物理存储空 间。( ) \n\n\n\n\n\n\n\n\n\n参考答案：\n1. B\n\n2. C\n\n3. (× )改正为：进程和程序不是一一对应的。 \n\n4. ( × )改正为： V 操作是对信号量执行加 1 操作，意味着释放一个单位资源，加 1 后如 果信号量的值小于等于零，则从等待队列中唤醒一个进程，现进程变为就绪状态，否则现 进程继续进行\n\n5. ( √) \n\n');
INSERT INTO `test` VALUES ('fec3f440-deb3-4f01-8eb2-6f31d77827a3', '操作系统原理大作业', '2019-06-03', '闭卷', 6, 5, 123445, '1.(选择题)以下著名的操作系统中，属于多用户、分时系统的是 (  )。\r\nA．DOS 系统 B．UNIX 系统\r\nC．Windows NT 系统 D．OS／2 系统\n\n2.(选择题)下列关于进程和线程的叙述中，正确的是 (  )。\r\nA．一个进程只可拥有一个线程\r\nB．一个线程只可拥有一个进程\r\nC．一个进程可拥有若干个线程\r\nD．一个线程可拥有若干个进程\r\n\n\n3.(判断题)简单地说，进程是程序的执行过程。因而，进程和程序是一一对应的。 ( ) \n\n4.(判断题)V 操作是对信号量执行加 1 操作，意味着释放一个单位资源，加 l 后如果信号量 的值小于等于零，则从等待队列中唤醒一个进程，使该进程变为阻塞状态，而现进程继续 进行。 ( )\n\n5.(判断题)段页式存储管理汲取了页式管理和段式管理的长处，其实现原理结合了页式和段式管 理的基本思想， 即用分段方法来分配和管理用户地址空间， 用分页方法来管理物理存储空 间。( ) \n\n6.(判断题)在采用树型目录结构的文件系统中，各用户的文件名必须互不相同。 ( ) \n\n7.(判断题)用户程序应与实际使用的物理设备无关，这种特性就称作与设备无关性。 ( ) \n\n8.(填空题)通常，进程实体是由 ___________________________ 这三部分组成，其 中 ________是进程存在的惟一标志。 \n\n9.(填空题)从用户的源程序进入系统到相应程序在机器上运行，所经历的主要处理阶段有编 辑阶段，__________ ，连接阶段，__________和运行阶段\n\n10.(填空题)在 UNIX 系统中，文件的类型主要包括__________、___________、___________\n\n11.(填空题)虚拟设备是通过 ______________ 技术把_______设备变成能为若干用户_______的设备。 \n\n12.(选择题)在操作系统中，进程的最基本的特征是 (  )。\r\nA．动态性和并发性 B．顺序性和可再现性\r\nC．与程序的对应性 D．执行过程的封闭性\r\n\n\n13.(填空题)Windows NT 是采用___________结构的操作系统，它的进程的功能发生了变化，它是资源 分配的单位，不是___________的单位，后者的功能由_______ 完成\n\n\n\n\n\n\n\n参考答案：\n1. B\n\n2. C\n\n3. (× )改正为：进程和程序不是一一对应的。 \n\n4. ( × )改正为： V 操作是对信号量执行加 1 操作，意味着释放一个单位资源，加 1 后如 果信号量的值小于等于零，则从等待队列中唤醒一个进程，现进程变为就绪状态，否则现 进程继续进行\n\n5. ( √) \n\n6. ( × )改正为：在采用树型目录结构的文件系统中，不同用户的文件名可以相同\n\n7. ( √)\r\n\n\n8.  PCB(或进程控制块 )、 程序、数据集合；PCB\n\n9. 编译阶段 ；装入阶段 \n\n10. 普通文件、目录文件、特别文件 \n\n11.  SPOOLing ；独占；共享 \n\n12. A\n\n13. 微内核；调度运行 ；线程\n\n');

SET FOREIGN_KEY_CHECKS = 1;
