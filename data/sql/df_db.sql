-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2018-11-15 15:57:57
-- 服务器版本： 5.5.59-log
-- PHP 版本： 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `df_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `ads_dt`
--

CREATE TABLE `ads_dt` (
  `Id` int(11) NOT NULL,
  `title` varchar(55) DEFAULT NULL COMMENT '标题',
  `subs` varchar(100) DEFAULT NULL COMMENT '描述',
  `pic` varchar(100) DEFAULT NULL COMMENT '图片',
  `url` varchar(1000) DEFAULT NULL COMMENT '链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ads_dt`
--

INSERT INTO `ads_dt` (`Id`, `title`, `subs`, `pic`, `url`) VALUES
(1, '少女心温柔仙女网纱连衣裙超火的半身超仙收腰蛋糕千层大摆裙', '¥ 488.00', 'upload/file/file_20181113050914.jpg', 'https://s.click.taobao.com/t?e=m%3D2%26s%3Dapx8n98w3w8cQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67nyIeOFv8YpWPkWZNjOK2CP5IPQuTmfCPLDzyhiA9urFrW6EKd0Lp95fQNGrpR0LpILt%2BLC7zmX2%2FF7JC3iXwSQSV9sIf9VxQLllV%2F4as%2FFWL33lFJev%2B6Q%3D&pvid=21_117.150.9.100_13412_1542099914723'),
(2, '实拍民族风连衣裙大码女装夏季中国风水墨画印花中长款无袖背心裙', '¥47.52', 'upload/file/file_20181113051158.jpg', 'https://s.click.taobao.com/t?e=m%3D2%26s%3DqhyVZNwiYfMcQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67sfeS4Dsp1fk%2FKJpqXxEpU75IPQuTmfCPLDzyhiA9urFrW6EKd0Lp95fQNGrpR0LpILt%2BLC7zmX2l8bfhS%2BsEc37yGsbQoUT%2Fll0cVieKIF8xgxdTc00KD8%3D&pvid=21_117.150.9.100_13412_1542099914723'),
(3, '雅马哈吉他f310正品民谣初学入门41英寸f600电箱成人学生女男木款', '', 'upload/file/file_20181113052638.jpg', 'https://s.click.taobao.com/t?e=m%3D2%26s%3DtR1T343f860cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67iAB9xpSkv%2FZF%2FSaKyaJTUb5IPQuTmfCPLDzyhiA9urFrW6EKd0Lp95fQNGrpR0LpE7jgzqRAuhXNHBsB3ybo%2FuZSi%2BzjLZdSo3QXBHOipxWxgxdTc00KD8%3D&pvid=10_117.150.9.100_4070_1542101090541'),
(4, '吉他谱书籍 流行歌曲 吉他教学书 正版初学者简谱曲谱大全 零基础学吉他乐谱最易上手吉他弹唱2018教材教程 民', '', 'upload/file/file_20181113052904.jpg', 'https://s.click.taobao.com/t?e=m%3D2%26s%3DtlgSnDr52cAcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67vvAwBzqHxA8aNWmle4rCMz5IPQuTmfCPLDzyhiA9urFrW6EKd0Lp95fQNGrpR0LpBQkpfncQv6gi8iCa9969uk1KaHz2K%2BdtGAZRX5%2FHYf4xgxdTc00KD8%3D&pvid=10_117.150.9.100_601_1542101288292'),
(5, '汉服女古装仙女裙齐胸襦裙古装汉服夏装日常改良古风清新淡雅唐装', '', 'upload/file/file_20181113053209.jpg', 'https://s.click.taobao.com/t?e=m%3D2%26s%3DUXi7xZ1W%2FFQcQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XLjf2vlNIV67t2CRcbYwbopNq%2BDna%2F8eQf5IPQuTmfCPLDzyhiA9urFrW6EKd0Lp95fQNGrpR0LpE7jgzqRAuhXbwwWxoeBJTMdVhHjR7mSAxe%2FU3LTsKg7xgxdTc00KD8%3D&pvid=10_117.150.9.100_22720_1542101466151');

-- --------------------------------------------------------

--
-- 表的结构 `back_muscles`
--

CREATE TABLE `back_muscles` (
  `Id` int(11) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `back_muscles`
--

INSERT INTO `back_muscles` (`Id`, `title`, `content`) VALUES
(1, '锻炼背部肌肉最有效的9个动作', '<p>									</p><p>									</p><p>									</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\">1.宽握引体向上 （Pull-up）</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180602072526.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180602072526.gif\" style=\"font-family: sans-serif; color: inherit;\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><br></p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\">2.横杠缆绳下拉</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180602072929.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180602072929.gif\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\">3.杠铃划船（Bent-Over Row）</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180602073002.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180602073002.gif\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\">4.杠铃硬拉 （Deadlift）</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180602073018.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180602073018.gif\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\">5.哑铃硬拉</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180602073048.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180602073048.gif\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\">6.坐姿划船（Seated Row）</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180602073106.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180602073106.gif\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\">7.单臂哑铃划船（Single-Arm DB Row）</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180602073128.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180602073128.gif\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\">8.杠铃反斜拉 （Reverse Row）</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180602073142.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180602073142.gif\"></p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\">9.弹力绳背拉 （Rubber Band Pull）</p><p style=\"margin-top: 20px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180602073157.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180602073157.gif\"></p><p><br></p><p>								</p><p>								</p><p>								</p>'),
(2, '心得体会', '<p>									</p><ul><li>不断提高强度</li><li>提高负荷量，提高每组次数，提高组数，提高频率</li><li>提高锻炼的总体时间</li><li>补充足够的营养，每天一到两个鸡蛋</li><li>锻炼过后补充蛋白质，比如优质蛋白粉</li><li>每天补充维生素，至少一个橙子</li><li>主食以低脂食物为主，比如素包子，馒头，全麦面包</li><li>每天坚持，无氧运动为主，有氧运动为辅，傍晚进行半个小时到一个小时的慢跑和徒步</li><li>长期不运动的部位更容易囤积脂肪</li><li>局部减脂需要锻炼相应部位的肌肉，然后增加频率，将无氧做成有氧，使该部位的肌肉变强，同时加速其脂肪消耗，比如肚子脂肪多，就锻炼腹肌，不断增加频率使该部位的释放快速得到消耗</li><li>平时有氧主要是跑步、跳绳等腿部运动，所以腿部肌肉就更紧实，线条也更明显，要想让上肢的线条一样明显就应该让练腹的频率达到跑步的频率</li></ul><p>									</p><p>																	</p><p>								</p><p>								</p>'),
(3, '减脂', '<p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p></p><h1><span style=\"color: rgb(51, 51, 51); font-family: arial, tahoma, \'Microsoft Yahei\', 宋体, sans-serif; white-space: normal;\"><font size=\"4\"></font></span></h1><h1 style=\"font-family: sans-serif; color: rgb(103, 106, 108); white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif;\"><font size=\"6\">运动</font></span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif;\">每次一个小时，前面20分钟无氧，后面40分钟有氧。<span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; white-space: normal;\">每天早晚各一次。</span></span></p><h1><span style=\"color: rgb(51, 51, 51); font-family: arial, tahoma, \'Microsoft Yahei\', 宋体, sans-serif; white-space: normal;\"><font size=\"4\"></font></span></h1><p style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; line-height: inherit; font-size: 14px; vertical-align: baseline; color: rgb(51, 51, 51); white-space: normal;\">先无氧气后有氧没有问题，无氧消耗糖原，这样有氧减脂消耗更明显，对增肌没影响。</p><p style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; line-height: inherit; font-size: 14px; vertical-align: baseline; color: rgb(51, 51, 51); white-space: normal;\">蛋白质的消耗就算在马拉松的这样的比赛也不会超过15%。只要不节食，蛋白质的流逝可以忽略。所以增加肌肉和有氧运动，以我们这样的运动量几乎没有什么必然联系。反而脂肪的减少，会让肌肉线条更好。而增肌，关键是保证蛋白质摄入，还有足够强度的肌肉刺激。</p><h1><span style=\"color: rgb(51, 51, 51); font-family: arial, tahoma, \'Microsoft Yahei\', 宋体, sans-serif; white-space: normal;\"><font size=\"4\"><br></font></span><br></h1><p><span style=\"color: rgb(51, 51, 51); font-family: arial, tahoma, \'Microsoft Yahei\', 宋体, sans-serif; white-space: normal;\"><font size=\"4\"><br></font></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, tahoma, \'Microsoft Yahei\', 宋体, sans-serif; white-space: normal;\"><font size=\"4\"><br></font></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, tahoma, \'Microsoft Yahei\', 宋体, sans-serif; white-space: normal;\"><font size=\"4\"><br></font></span></p><h1><font color=\"#333333\" face=\"arial, tahoma, Microsoft Yahei, 宋体, sans-serif\" size=\"6\">饮食</font></h1><h1><span style=\"color: rgb(51, 51, 51); font-family: arial, tahoma, \'Microsoft Yahei\', 宋体, sans-serif; white-space: normal;\"><font size=\"4\">左旋肉碱茶多酚</font></span></h1><p><span style=\"color: rgb(51, 51, 51); font-family: arial, tahoma, \'Microsoft Yahei\', 宋体, sans-serif; font-size: 34px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">脂肪燃烧只能在细胞线粒体内进行，而脂肪分解的脂肪酸大分子很难穿透线粒体膜，所以脂肪无法持续大量燃烧。要想让脂肪顺利进入线粒体，就必须有一种辅酶的参与，那就是肉碱，脂肪如果不进入线粒体，不管你如何锻炼，如何节食，都不能消耗它。而肉碱正好充当了脂肪酸到线粒体的搬运工。 左旋肉碱是一种促使脂肪转换为能量的类氨基酸。特别适合人们配合做有氧运动来减肥。因为肌肉的运动依赖于你的身体把脂肪酸转换成能量的能力。左旋肉碱是实现这种转换的类氨基酸。所以说左旋肉碱是一种理想的不用节食、不厌食、不乏力、不腹泻的减肥产品。要想达到理想的脂肪燃烧程度，体内需要一个理想的肉碱含量平衡，然而人体自身的肉碱合成量及从食物中摄入的量远远满足不了需求。所以必须从外部补充肉碱。</span></span></p><p><span style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; text-indent: 28px;\"><br></span></p><p><span style=\"font-size: 14px; color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; text-indent: 28px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; text-indent: 28px;\"><font size=\"4\">蛋白粉、低脂食物、水果</font></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; text-indent: 28px;\"><font size=\"4\"><br></font></span></p><p><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft Yahei\'; font-size: 14px; text-indent: 28px;\">在所有的减脂计划中，最主要的就是要管住嘴，减少热量的摄入，因为这在热量缺口里面占据了最大的部分。 减少每餐食物量，少吃一点，每餐吃到七分饱就好。七分饱的感觉是胃里没满，吃东西的欲望减少，速度下降，只是会习惯性地继续吃。 食物营养比例：每餐中脂肪少一点，膳食纤维、碳水化合物和蛋白质多一点。比如多吃水果蔬菜、米饭以及牛奶牛肉等，肥肉、巧克力、奶油等不要食用。&nbsp;</span><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; text-indent: 28px;\"><font size=\"4\"><br></font></span></p><h1><br></h1><p><br></p><p></p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p>'),
(4, '健身理念', '<p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\">健身理念：</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">1</span><span style=\"font-kerning: none\">、减肥首先需要增肌，增加全身的肌肉，从而提高基础代谢率，肌肉足够了之后减脂会事半功倍。减肥注重的不应该是体重，而应该是肌肉与脂肪的比例，我们的目标是更多的肌肉和更少的脂肪。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\">通过挨饿的方式减肥是最不可取的，饥饿状态下身体会自动进入节能模式，优先分解身体的肌肉，同时疯狂储存脂肪。这样减肥的效率很低，即便瘦下来了，由于身体的肌肉更少，基础代谢率变低，以后会更容易胖，导致适得其反的效果。这种方式减肥还容易伤胃，产生胃病。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\">一味通过有氧运动（比如跑步）减肥比挨饿减肥好一些，但也不可取，有氧运动时身体会同时消耗掉肌肉和脂肪，长期坚持，体重会下降，但这是以牺牲肌肉为代价的，若是陡然间不再运动，身体由于肌肉含量减少，基础代谢率变低，会很容易胖。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\">先增肌提高基础代谢率再进行有氧运动减脂是最可取的，本身在增肌的过程中身体就会消耗掉脂肪来为身体提供能量，等身体有了足够的肌肉比例再进行适当的有氧运动，这时减脂的效率是最高的（在有了足够高的基础代谢率之后进行有氧运动更容易消耗掉身体的脂肪），很容易看到效果，而且脱脂之后身体的肌肉线条会很明显。这时，给人的感觉是瘦了，但身体的重量会增加，增加的是肌肉的重量，对身体健康是很有好处的，减肥注重的不应该是体重，而应该是肌肉与脂肪的比例，我们的目标是更多的肌肉和更少的脂肪。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">2</span><span style=\"font-kerning: none\">、健身之后肌肉会正常损伤，身体会感到酸痛，肌肉在修复的过程中会增加维度，这是增肌的关键阶段，需要补充足够的蛋白质（鸡蛋、牛肉、牛奶），从而达到增肌的目的。正常情况下健身每周应该休息两天，给身体充分的恢复时间，使身体达到最佳状态，从而更好地进行后续的健身。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">3</span><span style=\"font-kerning: none\">、减脂应该先无氧，后有氧，身体需要先消耗</span><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">ATP</span><span style=\"font-kerning: none\">（给肌肉提供运动能力的物质），然后消耗碳水化合物，最后才能消耗掉脂肪，一开始就去跑步是达不到减肥效果的，我们应该先练肌肉，最后跑步，这样减肥效果是最好的，但是可以在一开始进行短时间的跑步用来热身。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'Helvetica Neue\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial; min-height: 14px;\"><span style=\"font-kerning: none\"></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">4</span><span style=\"font-kerning: none\">、最有效率的减脂流程是，十分钟跑步（热身）</span><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">——</span><span style=\"font-kerning: none\">一个小时练肌肉（无氧运动，促进肌肉生长）</span><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">——</span><span style=\"font-kerning: none\">三十分钟跑步（有氧运动，减脂的主要阶段）</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'Helvetica Neue\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial; min-height: 14px;\"><span style=\"font-kerning: none\"></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'Helvetica Neue\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial; min-height: 14px;\"><span style=\"font-kerning: none\"></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'Helvetica Neue\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial; min-height: 14px;\"><span style=\"font-kerning: none\"></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\">要想短期内，最有效的塑形，就应该每天抽出两个小时进行科学的锻炼，刺激肌肉，消耗肥肉，并且控制饮食，补充足够的蛋白质，尽量避免摄入脂肪（油脂里含有大量脂肪，要避免食用油类，尤其是动物油）。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'Helvetica Neue\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial; min-height: 14px;\"><span style=\"font-kerning: none\"></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">1</span><span style=\"font-kerning: none\">、要想让肌肉变得更发达，就应该在身体适应某种重量之后及时增加重量，使肌肉得到充分的刺激。健身时，使用不同的器械，动作一定要标准，这样才能使锻炼达到很好的效果。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(0, 0, 0); -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">2</span><span style=\"font-kerning: none\">、健身期间的饮食很重要，任何一次过量的脂肪摄入都会转化为肥肉留在身体里，需要几天甚至更久的时间通过锻炼将其消耗掉，对于需要减脂的人就要尽可能避免摄入脂肪，使脂肪只减不增，否则就会使锻炼的减脂效果大打折扣。每天健身前煮几个鸡蛋，健身之后吃，可以吃一个蛋黄（蛋黄里含有蛋白质、脂肪、胆固醇和许多微量元素，摄入胆固醇是不能过量的，而其中的大量脂肪是应该尽量避免的），其余的全部吃蛋清（蛋清的主要成分是蛋白质，不含脂肪），同时喝低脂高蛋白的牛奶或者冲泡的奶粉，这是比较廉价的补充蛋白的方式，可以给肌肉生长提供足够的蛋白质，避免食用含油的食物，这就要尽可能在家自己做饭吃（外面餐馆的食物总会使用大量的油，这些油大部分都是不健康的，有些黑心商贩甚至会使用地沟油，长期在外面吃，不健康，还会增加经济开销）。在家做饭，早、晚餐以切片面包为主（面包能补充足够的能量，将面包烤一下，沾点果酱或者番茄酱，美味、简单、低脂，够健康），午餐可以煮个面条（撒点盐，放点香菇、枸杞，可以加点酱油调个味）。</span></p><p><br></p>');
INSERT INTO `back_muscles` (`Id`, `title`, `content`) VALUES
(5, '健身饮食作息安排', '<p>									</p><p>									</p><p>									</p><p>									</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><font color=\"#000000\"><span style=\"-webkit-font-kerning: none;\">为了调整作息规律，午睡必须控制在一个小时之内，早起和晚睡严格按照</span><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">Rasp</span><span style=\"-webkit-font-kerning: none;\">的设定时间来。</span></font></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><font color=\"#000000\"><span style=\"font-kerning: none\">健身时间要保证在</span><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">2</span><span style=\"font-kerning: none\">个小时之内，要在</span><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">9</span><span style=\"font-kerning: none\">点左右结束。这就应该在</span><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">6</span><span style=\"font-kerning: none\">点钟结束一天的工作，打理一下准备去健身房，</span><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">7</span><span style=\"font-kerning: none\">点到健身房。这就要保证一天之中工作上要做的事情在</span><span style=\"line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none;\">6</span><span style=\"font-kerning: none\">点前完成，需要将下午六点前除去午休的时间充分利用起来进行高效率的工作。</span></font></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\"><font color=\"#000000\">一日三餐要遵循宁少勿缺的原则，不饿就少吃点，但是一定要吃。可以少吃多餐，切记不能饿着，饿会影响健身效果。食物要储备充足，食物要健康，以低脂为基本原则。</font></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\"><font color=\"#000000\">工作时要将背挺直，有意的去收缩背部肌肉，这样能够锻炼到背部肌肉，可以作为健身之余对背部肌肉的辅助练习，对肩颈的康复大有好处。</font></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\"><font color=\"#000000\">要修生养性，就要以健康的身体为基础，要健康的身体，就要以正确的饮食作息规律为基础。</font></span></p><p><font color=\"#000000\"><br></font></p><p><font color=\"#000000\"><br></font></p><p style=\"margin-top: 0px; margin-bottom: 6px; text-align: center; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; -webkit-text-stroke-color: rgb(65, 65, 65); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\"><font color=\"#000000\">饮食表</font></span></p><p style=\"margin-top: 0px; margin-bottom: 6px; text-align: center; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; -webkit-text-stroke-color: rgb(65, 65, 65); -webkit-text-stroke-width: initial;\"><font color=\"#000000\"><span style=\"font-kerning: none\"></span></font></p><p></p><table cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td valign=\"top\" style=\"width: 89px; height: 14px; border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) rgb(161, 156, 149); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(227, 36, 0);\"><font color=\"#000000\">早餐</font></span></p></td><td valign=\"top\" style=\"width: 221px; height: 14px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(0, 0, 0);\"><font color=\"#000000\">低脂牛奶</font></span></p></td><td valign=\"top\" style=\"width: 211px; height: 14px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(0, 0, 0);\"><font color=\"#000000\">烤面包</font></span></p></td><td valign=\"top\" style=\"width: 123px; height: 14px; border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(0, 0, 0);\"><font color=\"#000000\">枸杞（可以泡在牛奶里）</font></span></p></td></tr><tr><td valign=\"top\" style=\"width: 89px; height: 11px; background-color: rgb(245, 245, 245); border-left-width: 0px; border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) transparent; padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 221px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 211px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 123px; height: 11px; background-color: rgb(245, 245, 245); border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"top\" style=\"width: 89px; height: 27px; border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) rgb(161, 156, 149); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(227, 36, 0);\"><font color=\"#000000\">午餐</font></span></p></td><td valign=\"top\" style=\"width: 221px; height: 27px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(0, 0, 0);\"><font color=\"#000000\">外卖（少油的肉类或者青菜），可以多点一碗饭，吃不完可以放冰箱</font></span></p></td><td valign=\"top\" style=\"width: 211px; height: 27px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(0, 0, 0);\"><font color=\"#000000\">水果</font></span></p></td><td valign=\"top\" style=\"width: 123px; height: 27px; border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"top\" style=\"width: 89px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) rgb(161, 156, 149); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 221px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 211px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 123px; height: 11px; background-color: rgb(245, 245, 245); border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"top\" style=\"width: 89px; height: 14px; border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) rgb(161, 156, 149); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(227, 36, 0);\"><font color=\"#000000\">晚餐</font></span></p></td><td valign=\"top\" style=\"width: 221px; height: 14px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(0, 0, 0);\"><font color=\"#000000\">微波炉热一下冰箱里剩余的食物</font></span></p></td><td valign=\"top\" style=\"width: 211px; height: 14px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 123px; height: 14px; border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"top\" style=\"width: 89px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) rgb(161, 156, 149); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 221px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 211px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 123px; height: 11px; background-color: rgb(245, 245, 245); border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"top\" style=\"width: 89px; height: 14px; border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) rgb(161, 156, 149); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(227, 36, 0);\"><font color=\"#000000\">健身完后</font></span></p></td><td valign=\"top\" style=\"width: 221px; height: 14px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(0, 0, 0);\"><font color=\"#000000\">低脂牛奶</font></span></p></td><td valign=\"top\" style=\"width: 211px; height: 14px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(0, 0, 0);\"><font color=\"#000000\">烤面包</font></span></p></td><td valign=\"top\" style=\"width: 123px; height: 14px; border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"top\" style=\"width: 89px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) rgb(161, 156, 149); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 221px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 211px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 123px; height: 11px; background-color: rgb(245, 245, 245); border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"top\" style=\"width: 89px; height: 11px; border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) rgb(161, 156, 149); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 221px; height: 11px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 211px; height: 11px; border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 123px; height: 11px; border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"top\" style=\"width: 89px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1) rgb(161, 156, 149) rgb(161, 156, 149); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 221px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 211px; height: 11px; background-color: rgb(245, 245, 245); border-color: rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"top\" style=\"width: 123px; height: 11px; background-color: rgb(245, 245, 245); border-right-width: 0px; border-color: rgb(161, 156, 149) transparent rgb(161, 156, 149) rgb(1, 1, 1); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr></tbody></table><p><font color=\"#000000\"><br></font></p><p></p><p style=\"margin-top: 0px; margin-bottom: 0px; text-align: center; font-size: 23px; line-height: normal; font-family: \'PingFang SC Semibold\'; -webkit-text-stroke-color: rgb(255, 255, 255); -webkit-text-stroke-width: initial;\"><b style=\"-webkit-text-stroke-width: initial; color: inherit; font-family: \'PingFang SC\';\"><font color=\"#000000\"><br></font></b></p><p style=\"margin-top: 0px; margin-bottom: 0px; text-align: center; font-size: 23px; line-height: normal; font-family: \'PingFang SC Semibold\'; -webkit-text-stroke-color: rgb(255, 255, 255); -webkit-text-stroke-width: initial;\"><b style=\"-webkit-text-stroke-width: initial; color: inherit; font-family: \'PingFang SC\';\"><font color=\"#000000\"><br></font></b></p><p style=\"margin-top: 0px; margin-bottom: 0px; text-align: center; font-size: 23px; line-height: normal; font-family: \'PingFang SC Semibold\'; -webkit-text-stroke-color: rgb(255, 255, 255); -webkit-text-stroke-width: initial;\"><b style=\"-webkit-text-stroke-width: initial; color: inherit; font-family: \'PingFang SC\';\"><font color=\"#000000\"><br></font></b></p><p style=\"margin-top: 0px; margin-bottom: 0px; text-align: center; font-size: 23px; line-height: normal; font-family: \'PingFang SC Semibold\'; -webkit-text-stroke-color: rgb(255, 255, 255); -webkit-text-stroke-width: initial;\"><b style=\"-webkit-text-stroke-width: initial; color: inherit; font-family: \'PingFang SC\';\"><font color=\"#000000\">健身计划</font></b><br></p><p><font color=\"#000000\"><br></font></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 14px; line-height: normal; font-family: \'Helvetica Neue\'; -webkit-text-stroke-color: rgb(96, 96, 96); -webkit-text-stroke-width: initial;\"><font color=\"#000000\"><span style=\"font-kerning: none\">2017 </span><span style=\"line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none;\">年</span><span style=\"font-kerning: none\"> 4 </span><span style=\"line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none;\">月</span><span style=\"font-kerning: none\"> 19</span><span style=\"line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none;\">日至</span><span style=\"font-kerning: none\">5</span><span style=\"line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none;\">月</span><span style=\"font-kerning: none\">19</span><span style=\"line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none;\">日</span></font></p><table cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td colspan=\"4\" valign=\"middle\" style=\"width: 784px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><strong>当前时间</strong></span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><strong>:18/6/10</strong></span></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 134px; height: 14px; border-right-width: 0px; border-color: rgb(122, 122, 122) transparent rgb(122, 122, 122) rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><strong>月</strong></span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><strong>-</strong></span><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><strong>日</strong></span></font></p></td><td valign=\"middle\" style=\"width: 134px; height: 14px; border-right-width: 0px; border-left-width: 0px; border-color: rgb(122, 122, 122) transparent; padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><strong><font color=\"#000000\">星期</font></strong></span></p></td><td valign=\"middle\" style=\"width: 88px; height: 14px; border-right-width: 0px; border-left-width: 0px; border-color: rgb(122, 122, 122) transparent; padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><strong><font color=\"#000000\">状态</font></strong></span></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; border-left-width: 0px; border-color: rgb(122, 122, 122) rgb(122, 122, 122) rgb(122, 122, 122) transparent; padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang SC\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><strong><font color=\"#000000\">备注</font></strong></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">4-24</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">1</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">休息</font></span></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">腿部肌肉极其酸痛，无法正常活动，需要休息</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">4-25</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">2</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">练胸肌为主</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">4-26</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">3</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">4-27</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">4</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">4-28</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">5</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">4-29</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">6</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">4-30</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">7</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-1</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">1</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-2</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">2</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-3</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">3</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-4</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">4</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-5</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">5</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">练腿</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-6</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">6</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-7</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">7</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">练肩</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-8</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">1</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">练胸</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-9</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">2</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">休息</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-10</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">3</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">练背</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-11</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">4</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-12</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">5</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">练腿</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-13</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">6</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-14</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">7</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">练肩</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-15</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">1</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-16</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">2</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">练背</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-17</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">3</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">练肩</font></span></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-18</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">4</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 13px; border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr><tr><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\"><font color=\"#000000\">5-19</font></span></p></td><td valign=\"middle\" style=\"width: 133px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p align=\"center\" style=\"margin-top: 0px; margin-bottom: 0px; text-align: center;\"><font color=\"#000000\"><span style=\"font-size: 10px; line-height: normal; font-family: \'PingFang TC Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">星期</span><span style=\"font-size: 10px; line-height: normal; font-family: \'Helvetica Neue Light\'; -webkit-font-kerning: none; font-variant-ligatures: common-ligatures; -webkit-text-stroke-color: rgb(81, 81, 81);\">5</span></font></p></td><td valign=\"middle\" style=\"width: 87px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td><td valign=\"middle\" style=\"width: 404px; height: 14px; background-color: rgb(241, 241, 241); border-color: rgb(122, 122, 122); padding: 4px;\"><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica; min-height: 14px;\"><font color=\"#000000\"><br></font></p></td></tr></tbody></table><p><font color=\"#000000\"><br></font></p><p><font color=\"#000000\"><br></font></p><p><font color=\"#000000\"><br></font></p><p style=\"margin-top: 0px; margin-bottom: 6px; text-align: center; font-size: 12px; line-height: normal; font-family: \'PingFang SC\'; color: rgb(65, 65, 65); -webkit-text-stroke-color: rgb(65, 65, 65); -webkit-text-stroke-width: initial;\"><span style=\"font-kerning: none\"></span><br></p><p>								</p><p>								</p><p>								</p><p>								</p>');
INSERT INTO `back_muscles` (`Id`, `title`, `content`) VALUES
(6, '关于饮料', '<ul><li>不喝碳酸饮料，只喝功能性饮料和白开水，或者果汁类饮料，即便天气再热，也顶多冰一下，对于碳酸饮料一定要敬而远之</li><li>社会在表面的和平之下隐藏着巨大的波澜，在外面喝东西，如果觉得不舒服，一定要深刻反省，然后严格杜绝，宁可不喝，也不要喝错</li><li><br></li></ul><p>																	</p>'),
(7, '关于食物', '<p>									</p><p>									</p><p>									</p><ul><li>在外面吃东西一定要注意，如果吃一次之后觉得不舒服，一定不要再去了，而且尽量不要在外面吃，外面的食物多多少少会有问题，毕竟别人做的是生意，赚钱是第一位，你的健康永远排在第二<br></li><li>如果实在不愿在家里开伙，就选择那些相对简单的，不容易出问题的食物，比如馒头，全麦面包，素包子，素菜类的食物。平时以素菜为主，清淡的荤菜为辅</li><li>肚子不舒服之后，要仔细反省食物来源，杜绝那些可疑的食物，用水果、绿茶、决明子清洗肠胃</li></ul><p>																	</p><p>								</p><p>								</p><p>								</p>'),
(8, '减脂期间禁止喝雪碧等碳酸饮料的原因', '<p>									</p><p><font color=\"#555555\" face=\"arial, Microsoft YaHei, 微软雅黑\">雪碧、可乐的主要成分：碳水化合物（糖类化合物）、水</font></p><p><font color=\"#555555\" face=\"arial, Microsoft YaHei, 微软雅黑\">碳水化合物的主要类别：葡萄糖、蔗糖、淀粉和纤维素等</font></p><p><font color=\"#555555\" face=\"arial, Microsoft YaHei, 微软雅黑\">糖类摄入过量：<span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">如果细胞中储存的葡萄糖已饱和，多余的葡萄糖就会以高能的脂肪形式储存起来，多吃碳水化合物发胖就是这个道理！</span></span></font></p><p><font color=\"#555555\" face=\"arial, Microsoft YaHei, 微软雅黑\"><br></font></p><p><font color=\"#555555\" face=\"arial, Microsoft YaHei, 微软雅黑\"><br></font></p><p><span style=\"color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">喝雪碧会产生脂肪：</span></p><p><span style=\"color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">雪碧中除了含有大量的碳酸之外，也含有大量的糖分，并且多以葡萄糖等容易被吸收的糖类为主，在大量的饮用之后会导致血液中糖分过高，不能被完全的消耗掉，会转化为脂肪囤积在体内引起肥胖。</span></p><p><span style=\"color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\"><br></span></p><p><font color=\"#555555\" face=\"arial, Microsoft YaHei, 微软雅黑\">总结：饮料中含有大量碳水化合物，而碳水化合物就是糖，而糖摄入过量就会变成脂肪，不要以为喝饮料就不会胖。如果你光喝饮料，不吃饭，会比你正常吃饭胖得更快。如果体脂过高，而你正在减脂，应该禁止喝饮料，否则减脂付出的汗水就白费了</font></p><p><span style=\"color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\"><br></span></p><h3 style=\"margin: 0px 0px 20px -28px; padding: 0px 20px; height: 50px; line-height: 50px; background-color: rgb(84, 207, 119); color: rgb(255, 255, 255); display: inline-block; font-size: 18px; position: relative; font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">雪碧喝多了的危害<span style=\"width: 8px; height: 6px; background-image: url(https://www.qqtn.com/skin/new2017/images/h3tit.jpg); position: absolute; left: 0px; top: -6px; background-position: initial initial; background-repeat: initial initial;\"></span></h3><h4 style=\"margin: 0px 0px 20px; padding: 0px; font-size: 18px; color: rgb(63, 174, 95); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">降低性功能</h4><p style=\"margin-top: 0px; margin-bottom: 28px; line-height: 30px; color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">雪碧中含有很多的碳酸成分，这些物质对男性的前列腺和肾功能有所影响，也会抑制男性性激素的分泌，也有人说雪碧喝太多甚至有杀精的可能，因此，在备孕阶段，男性最好是不要喝雪碧。</p><h4 style=\"margin: 0px 0px 20px; padding: 0px; font-size: 18px; color: rgb(63, 174, 95); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">肥胖</h4><p style=\"margin-top: 0px; margin-bottom: 28px; line-height: 30px; color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">雪碧中除了含有大量的碳酸之外，也含有大量的糖分，并且多以葡萄糖等容易被吸收的糖类为主，在大量的饮用之后会导致血液中糖分过高，不能被完全的消耗掉，会转化为脂肪囤积在体内引起肥胖。</p><h4 style=\"margin: 0px 0px 20px; padding: 0px; font-size: 18px; color: rgb(63, 174, 95); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">失眠</h4><p style=\"margin-top: 0px; margin-bottom: 28px; line-height: 30px; color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">雪碧中含有很多的咖啡因成分，在长期饮用之后会出现上瘾的现象，而在晚上饮用更是会刺激大脑神经，使人兴奋，饮用过多便会出现失眠之症。</p><h4 style=\"margin: 0px 0px 20px; padding: 0px; font-size: 18px; color: rgb(63, 174, 95); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">损伤牙齿</h4><p style=\"margin-top: 0px; margin-bottom: 28px; line-height: 30px; color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">雪碧中含有大量的碳酸成分，在饮用时会对口腔内的牙齿有严重损伤，尤其是分解牙齿内的钙质，侵蚀牙齿的珐琅质，经常大量的饮用有可能出现龋齿，牙龈炎等症。</p><h4 style=\"margin: 0px 0px 20px; padding: 0px; font-size: 18px; color: rgb(63, 174, 95); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">胃胀</h4><p style=\"margin-top: 0px; margin-bottom: 28px; line-height: 30px; color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">雪碧中含有大量的碳酸成分，在饮用之后会在胃内被胃酸分解产生大量的二氧化碳，引起胃胀，对胃炎、胃溃疡等患者的危害最大。</p><h4 style=\"margin: 0px 0px 20px; padding: 0px; font-size: 18px; color: rgb(63, 174, 95); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">缺钙</h4><p style=\"margin-top: 0px; margin-bottom: 28px; line-height: 30px; color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">雪碧中的碳酸成分和食物中的钙质会发生反应，生成碳酸钙，在胃内很难溶解，降低钙质消化吸收，长久饮用可能引起缺钙，容易导致骨质疏松。</p><h4 style=\"margin: 0px 0px 20px; padding: 0px; font-size: 18px; color: rgb(63, 174, 95); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">致癌</h4><p style=\"margin-top: 0px; margin-bottom: 28px; line-height: 30px; color: rgb(85, 85, 85); font-family: arial, \'Microsoft YaHei\', 微软雅黑; white-space: normal;\">雪碧中还含有一种叫做苯甲酸钠的食品添加剂，也是一种酸性的防腐剂。用量过多，会对人体的肝脏产生危害，影响肝功能。同时，苯甲酸钠易与维生素C产生化学反应，生成苯，而苯又是一种致癌物质，因此我们饮用过多的雪碧后，极易与我们体内的维生素C产生化学反应，容易致癌。</p><p><br></p><p>								</p>'),
(9, '脂肪与运动', '<p>									</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><br></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\"><br></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\"><br></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\"><br></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\">一般来说1公斤脂肪的热量基本上等于7700卡路里，也就是说当你的运动量大于7700卡时，才有可能“融化掉”这堆脂肪。</span><span style=\"font-family: inherit;\"><br></span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\">以35岁的成年人（男性175cm，68kg；女性160cm，52kg）为参考：</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\">以5分钟每公里的速度跑步，30分钟，男女的热量消耗分别为110和96卡路里；</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\">以一般的速度骑单车，30分钟，男女的热量消耗分别为294和257卡路里；</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\">以平常强度踢足球，30分钟，男女的热量消耗分别为367和321卡路里；</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\">以平常速度散步，30分钟，男女的热量消耗分别为90和80卡路里；</p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\">正常来说，每天坚持跑步1小时，需要13-14天才能减少7700卡的热量，如果是女生的话，大概需要18—19天才能减肥达到同样的健身效果。</span><span style=\"font-family: inherit;\"><br></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\"><br></span></p><hr><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\">​<span style=\"color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\"><br></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\"><br></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\"><br></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\">要减掉内脏脂肪，首先要将皮下脂肪减掉。<span style=\"font-family: inherit;\">可以说，运动是先减内脏脂肪，再减皮下脂肪。</span></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><br></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\">内脏脂肪一般容易堆积，我们每天吃的油脂、糖等都会转化成脂肪。这其中有一部分是身体自身需要的，附着在内脏的表面，在人体饿了或是运动时给各个组织器官提供能量。</span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><br></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><strong>我们可以形象的把内脏脂肪比喻成银行的活期存款，可以随用随取。当身体需要脂肪来供能时，最先调动的就是内脏脂肪，然后是皮下脂肪。</strong></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><strong><br></strong></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\">皮下脂肪就相当于银行的定期存款，是依靠我们每日的饮食一点一点储存起来的。它的主要功能是保护内脏和抵御寒冷，相当于一个保护层。所以，它是不会轻易被消耗掉。</span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><br></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\">当我们进行长时间的运动是，只靠“活期存款”是很难完成下去的。这时，就会刺激皮下脂肪分解给身体供能。</span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><br></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\">现在应该明白为什么需要长时间（30分钟以上）的有氧运动，才能更多的调动脂肪给身体供能这个道理。</span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\"><span style=\"font-family: inherit;\"><br></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47);\">每天坚持至少30分钟以上的有氧运动。比如慢跑、快走、跳绳、骑车等。<span style=\"font-family: inherit;\"><br></span></p><div><span style=\"font-family: inherit;\"><br></span></div><p>																	</p><p>								</p>'),
(10, '食物', '<p>									</p><p>									</p><h1><span style=\"color: rgb(47, 47, 47); font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; white-space: normal;\">薯片</span></h1><p><span style=\"color: rgb(47, 47, 47); font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; white-space: normal;\">我们往常吃的薯片100g，约莫能够开释250大卡的热量，这100g薯片能攫取你跑步30分钟所耗费的热量。<span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\">薯片的热量很高，100克</span><span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\">就有555卡的热量，300克就是1600多卡的热量。</span></span><br style=\"content: \'\'; display: block; width: 700px; height: 0px; margin: 15px 0px; color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"></p><p><span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\">人每多吃3600卡的热量就会长一斤的脂肪。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><br></span></p><h2><font color=\"#333333\" face=\"PingFang SC, Lantinghei SC, Microsoft YaHei, arial, 宋体, sans-serif, tahoma\" size=\"6\">饭量</font></h2><p><font size=\"3\"><font color=\"#333333\" face=\"PingFang SC, Lantinghei SC, Microsoft YaHei, arial, 宋体, sans-serif, tahoma\"></font><font color=\"#333333\" face=\"PingFang SC, Lantinghei SC, Microsoft YaHei, arial, 宋体, sans-serif, tahoma\">保持少吃多餐的原则，饿的时候每次只吃个五分饱，从而保证每次摄入的热量不会超过身体的需求。</font></font></p><p><font color=\"#333333\" face=\"PingFang SC, Lantinghei SC, Microsoft YaHei, arial, 宋体, sans-serif, tahoma\"><font size=\"3\">已经感觉不那么饿了，<span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft Yahei\'; text-align: center; text-indent: 28px; white-space: normal;\">吃东西的欲望减少，就不要</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft Yahei\'; text-align: center; text-indent: 28px; white-space: normal;\">习惯性地继续吃</span></font><br></font></p><p><span style=\"color: rgb(47, 47, 47); font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; white-space: normal;\"></span>																	</p><p></p><p>								</p><p>								</p>'),
(11, '健身误区', '<p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><h1 style=\"text-align: left; color: rgb(0, 0, 0); font-family: -webkit-standard; white-space: normal;\"><span style=\"font-size: 24px;\">运动减肥有全身或局部的选择</span><br></h1><p style=\"color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\">　　第一，局部运动消耗的总能量少，易疲劳，且不能持久;</span></p><p style=\"color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\">　　第二，脂肪供能是由神经和内泌系统调节控制，但这种调节是全身性的，并非练哪个部位就可以减哪个部位的多余脂肪，而是哪里供血条件好，有利于脂肪消耗，哪里就能减肥。</span></p><p style=\"color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\">　　例如，减肥者运动一段时间后，腰围不见小多少，可脸颊却消瘦了，原因即在于此。运动消耗的热量大于摄入的热量，就会导致全身脂肪的减少，而不会只减一个部位，其它部位不变。</span></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"><br></span></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"><br></span></p><hr><h2 style=\"text-align: left; color: rgb(0, 0, 0); font-family: -webkit-standard; white-space: normal;\"></h2><h2 style=\"text-align: left; color: rgb(0, 0, 0); font-family: -webkit-standard; white-space: normal;\"><span style=\"color:#000000\">运动强度越大，运动越剧烈，减肥效果越好</span></h2><p style=\"color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\">　　只有持久的小强度有氧运动才能消耗多余的脂肪，这是由于小强度运动时肌肉主要利用氧化脂肪酸获取能量，因此脂肪消耗得快。运动强度增大，脂肪消耗的比例只占15%。因此，轻松和缓、长时间的低强度运动或心率维持在100-124次/分钟的长时间运动是最有利于减肥。</span></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"></span></p><p><br></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"></span></p><hr style=\"white-space: normal;\"><h2 style=\"font-family: -webkit-standard; color: rgb(0, 0, 0); white-space: normal;\"></h2><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"><br></span></p><h2 style=\"text-align: left; color: rgb(0, 0, 0); font-family: -webkit-standard; white-space: normal;\"><span style=\"color:#000000\">每天坚持30分钟慢跑即可减肥</span></h2><p style=\"color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\">　　30分钟的慢跑虽可达到有氧锻炼之目的，但减肥成效却甚微，实践证明，只有运动持续时间超过大约40分钟，人体内的脂肪才能被调动起来与糖原一起供能。</span></p><p style=\"color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\">　　随着运动时间的延长，脂肪供能的比例可达总消耗量的85%。可见，少于大约40分钟的运动无论强度大小，脂肪消耗均不明显。</span></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"><br></span></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"></span></p><hr style=\"white-space: normal;\"><h2 style=\"font-family: -webkit-standard; color: rgb(0, 0, 0); white-space: normal;\"></h2><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"><br></span><br></p><h2 style=\"text-align: left; color: rgb(0, 0, 0); font-family: -webkit-standard; white-space: normal;\"><span style=\"color:#000000\">有氧运动时间越长越好</span></h2><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\"><span style=\"color:#000000\">一般健康者每次有氧运动时间不应少于20分钟，不超过1小时，因为太长时间的有氧，不仅仅是消耗脂肪，还消耗肌肉。</span></p><p style=\"text-align: left; color: rgb(0, 0, 0); white-space: normal; border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif;\"><span style=\"color:#000000\">超过2小时的有氧锻炼，会耗尽体内的白氨酸，阻止肌肉生长。肌肉缺少，会降低身体的代谢，反而不利于减肥。</span></p><h2 style=\"color: rgb(0, 0, 0); font-family: -webkit-standard; text-align: center; white-space: normal;\"><ol class=\"exp-conent-orderlist\" style=\"text-align: left; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; clear: both; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"></span></ol></h2><hr style=\"white-space: normal;\"><h2 style=\"font-family: -webkit-standard; color: rgb(0, 0, 0); white-space: normal;\"></h2><h2 style=\"color: rgb(0, 0, 0); font-family: -webkit-standard; text-align: center; white-space: normal;\"><br></h2><h2 style=\"font-family: -webkit-standard; color: rgb(0, 0, 0); white-space: normal;\"></h2><ol class=\"exp-conent-orderlist\" style=\"text-align: left; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; clear: both; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\"><br></span><br></ol><h2><ol class=\"exp-conent-orderlist\" style=\"text-align: left; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; clear: both; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif;\"><span style=\"color:#000000\">减脂就是单一的有氧运动</span></ol></h2><ol class=\"exp-conent-orderlist\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; clear: both; font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify;\"><span style=\"color:#000000\"><span style=\"font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px;\"></span></span></ol><p style=\"text-align: left; margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px;\"><span style=\"color:#000000\">只靠节食和大量的有氧来减肥无疑是非常愚蠢的做法，也非常容易遇到瓶颈期。最<a href=\"https://www.baidu.com/s?wd=%E7%AE%80%E5%8D%95%E7%B2%97%E6%9A%B4&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao\" target=\"_blank\" class=\"baidu-highlight\" _href=\"https://www.baidu.com/s?wd=%E7%AE%80%E5%8D%95%E7%B2%97%E6%9A%B4&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao\"><span style=\"color:#000000color:#000000\">简单粗暴</span></a>的办法就是有氧无氧间歇性训练。像HIIT训练法就是很好的减脂方法。</span></p><p style=\"text-align: left; margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px;\"><span style=\"color:#000000\">理论上来讲，无氧促进代谢，有氧让身体应激，增进食欲和促进脂肪储备。两者结合才是最有效的减脂方法。</span></p><p style=\"text-align: left; margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px;\"><span style=\"color:#000000\">总的来说，减脂并不等于无脑的<a href=\"https://www.baidu.com/s?wd=%E6%9C%89%E6%B0%A7%E8%AE%AD%E7%BB%83&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao\" target=\"_blank\" class=\"baidu-highlight\" _href=\"https://www.baidu.com/s?wd=%E6%9C%89%E6%B0%A7%E8%AE%AD%E7%BB%83&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao\"><span style=\"color:#000000color:#000000\">有氧训练</span></a>。加上<a href=\"https://www.baidu.com/s?wd=%E6%97%A0%E6%B0%A7%E8%AE%AD%E7%BB%83&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao\" target=\"_blank\" class=\"baidu-highlight\" _href=\"https://www.baidu.com/s?wd=%E6%97%A0%E6%B0%A7%E8%AE%AD%E7%BB%83&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao\"><span style=\"color:#000000color:#000000\">无氧训练</span></a>不仅能提高减脂效率，而且能帮身体塑形，等脂肪剪下来之后你就会发现自己拥有一身不错的肌肉了。</span></p><p style=\"text-align: left; margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px;\"><span style=\"color:#000000\"><br></span></p><p style=\"text-align: left; margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px;\"><br></p><hr style=\"white-space: normal;\"><h2 style=\"font-family: -webkit-standard; color: rgb(0, 0, 0); white-space: normal;\"></h2><p style=\"text-align: left; margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px;\"><br></p><p><br></p><h2>有氧运动不间断更有效</h2><p style=\"text-align: left; margin-top: 20px; margin-bottom: 20px; padding: 0px; font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; font-size: 14px;\"><br></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47); font-size: 16px; text-align: left;\">同样是持续50分钟的有氧运动，只分一次做50分钟和分两次每次25分钟，中间有休息间隔，后者的效果要高于前者，原因就是：</p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47); font-size: 16px; text-align: left;\">在有间歇的训练中，人体交感—肾上腺系统的反应较大，分泌的肾上腺素等也较多。肾上腺系统分泌的激素都有比较强的刺激机体分解脂肪，所以间歇训练的燃脂效果更好。</p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47); font-size: 16px; text-align: left;\"><br></p><ol style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; list-style: none; color: rgb(47, 47, 47); font-size: 16px; text-align: left;\"><li style=\"padding: 0px; margin: 0px; list-style: none;\"><p style=\"font-family: inherit;\">对于普通的长时间有氧训练，当身体适应了一定的强度之后，身体就会偷懒，努力的减少卡路里的消耗，而对于HIIT因为你的动作以及强度是不断变化的，所以你的身体根本没办法偷懒，从而会消耗更多的卡路里以及脂肪。</p></li><li style=\"padding: 0px; margin: 0px; list-style: none;\"><p style=\"font-family: inherit;\">高强度可以刺激乳酸的分泌，而乳酸的量和<span style=\"font-family: inherit;\">生长激素</span>的分泌量之间又是呈正相关，而<span style=\"font-family: inherit;\">生长激素</span>可以促进蛋白质的合成，以及促进脂肪的分解。</p></li><li style=\"padding: 0px; margin: 0px; list-style: none;\"><p style=\"font-family: inherit;\">高强度有氧之后你的身体仍然会消耗大量的热量，但是普通的长时间<span style=\"font-family: inherit;\">有氧运动</span>就不会。美国Chris Scott博士曾经做过这样一个实验：一组人匀速低速骑单车3.5分钟，另一组用最快的速度冲刺15秒X3次，运动结束后立马计算耗能，结果低强度组耗能29卡，高强度只有4卡，但是！计算到运动后消耗的时候，事情发生了惊天逆转，39卡VS65卡！也就是说高强度间歇训练95%的耗能发生在训练后，而且几乎全部是脂肪！</p></li></ol><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47); font-size: 16px; text-align: left;\">此外，相比较于传统的有氧训练而言，HIIT具有时间较短，而且能最大程度的保留肌肉的效果，所以很值得去做。但是，这并不代表着它就没有任何缺点，经过本人的尝试，HIIT强度均较大，对身体机能要求较高，过程艰难且训练后可能会有头晕恶心呕吐的症状，所以各位可以根据自己自身的情况选择进行！</p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif; color: rgb(47, 47, 47); font-size: 16px; text-align: left;\"><br></p><p></p><hr style=\"white-space: normal;\"><p><br></p><p></p><h2>有氧运动只会减脂</h2><p><br></p><p>如果你要消耗掉脂肪，你必须面对你会损失一点肌肉的这个事实。但是你能够以增加饮食中的蛋白质，避 免身体严重缺乏热量，来将肌肉的损失减到最少。所以每个星期约减少一磅的体重是最好的。</p><p><br></p><p>运动时所造成身体的缺能状态最能帮助身体消耗掉脂肪。这种渐进的减重方法，藉由运动消耗掉你吃进的多余热量，而不靠特别的饮食配方。</p><p>有氧运动可以造成身体里面最适于燃烧脂肪的环境，所以要减肥的话就一定要开始做运动，而且不要停止重量训练，这样才能把肌肉的损失减到最小</p><p><br></p><p><br></p><hr><h2>敲打肌肉能让肌肉更发达</h2><p><span style=\"white-space: normal;\">敲打肌肉并不能让肌肉更发达，促使肌肉发达的途径依然是无氧运动。</span></p><p>在训练之后适当敲打肌肉可以帮助肌肉放松，活血化淤，促进乳酸的排出，除此之外适当的敲打可以增强抗击打能力，但是过度的敲打是会损伤肌肉的。</p><p><br></p><p><br></p><hr><h1>出汗越多就代表减脂效果越好</h1><p>出汗只是身体散热的方式，气温高的时候，即使不运动也会出很多汗，但这并不代表身体在燃脂。</p><p>恰恰是极冷的时候，身体需要调用能量来维持热量，这个时候，感觉到冷，但实际上身体是处于消耗糖分的状态，有利于减脂。</p><p>衡量燃脂效果的标准应该是运动量的多少，当有氧运动达到一定时间，身体就会燃脂。</p><p><br></p><h2 style=\"font-family: -webkit-standard; color: rgb(0, 0, 0); white-space: normal;\"></h2><p></p><p></p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p>'),
(12, '有氧和无氧', '<h2><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">有氧运动</span></h2><p><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">就是在氧气充足的状态下进行的体育运动，你可以这么简单的理解，任何持续时间较长，韵律性较强，心率维持在最大心率的60%~80%下的运动都可以称为有氧运动。（差不多刚刚好喘不过气的程度，关于心率的问题，后面会提到）比如跑步，单车，舞蹈，各种健身操之类的。有氧运动的心率一般都在每分钟130次左右为最佳，也就是我们说的“黄金心率”。</span>																	</p><p><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">常见的有氧运动：步行、快走、慢跑、竞走、滑冰、长距离游泳、骑自行车、打太极拳、跳健身舞、跳绳/做韵律操、球类运动如篮球、足球等等。</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"></span></p><div class=\"content-list-text\" style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><h2>无氧运动</h2><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">是相对于有氧运动的，没有明显的界限，比如跑步，如果是短跑，那基本上就属于无氧运动。因为这是短时的，爆发性的，在这么短的时间里氧气几乎来不及参与供能。如果心率达到每分钟150次时，这时的锻炼就开始为有氧与无氧的混合代谢了，如果心率达到了每分钟160次，甚至180次以上，这时的运动就已经属于无氧运动了。真正发展肌肉的运动是无氧运动，这个你对比下长跑运动员和短跑运动员的体型就知道了，短跑运动要强壮的多，长跑运动员体型较消瘦。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">常见的无氧运动：短跑、举重、投掷、跳高、跳远、拔河、俯卧撑、潜水、肌力训练（长时间的肌肉收缩）等。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><br></span></p><h2>无氧配合有氧</h2><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"></span></p><div class=\"content-list-text\" style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><strong>把力量训练放在有氧之前，无论是对于减脂还是增肌的效率都要更高</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">如果你在力量训练前做有氧，你就不会有充足的能量来完成你的力量训练。先做有氧会消耗大量的糖原、到真正要做负重运动，重训的时候便会比较吃力，没有足够的能量让你支撑。会让你疲惫、发挥不到应有的状态了，所以，最後所训练出来的强度就会较平时低，对肌肉的刺激减少。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">如果你想减脂的话，前面的无氧运动已经消耗了大部分的糖原，接下来再做有氧运动，就更容易消耗脂肪。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">所以，如果你一开始便做带氧运动，最初的 20-30 分钟会消耗了我们的肌糖 ( 当然，再之後都是会消耗脂肪 )当你在做力量训练时，通常情况下你都是在用糖原作为然料。你先做力量训练的话，可以燃烧掉你体内储存的大部分糖原。在力量训练之后再做有氧运动，会燃烧更多的脂肪！</p></div><div class=\"last-item\" style=\"position: relative; height: 13px; margin-top: 5px; color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"></div><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><br></span><br></p></div><p><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><br></span><br></p>'),
(13, '蛋白质的摄入', '<p>									</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">在早上摄取蛋白质</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">好处1：减轻体重 有临床营养学杂誌发表的研究表明，早上摄取蛋白质能提供饱肚感，减少食欲和吃零食。早上摄取低碳水化合物蛋白质 (ANS分离蛋白的每食用份量只有 1.1g碳水化合物并提供 25.4g高蛋白质)，以减少飢饿，有助於促进新陈代谢。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">好处2：支持肌肉质量和强度 分解代谢在运动员的身上是比较常见，这是由於过度训练和摄取食物不足造成的。简而言之，分解代谢发生在你身体需要食物来源的能量时，没有任何食物可供吸收，所以开始用你的肌肉作為燃料。不用说都知道这对运动员来说是不好的事情。有大学在研究表明，与早餐中没有蛋白质的对照组相比，早上第一件事就摄取蛋白质可以增加运动员的整体肌肉质量和强度。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\"><br></span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\"></span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">训练前摄取蛋白质：</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">好处：更有效率的训练 许多蛋白质含有高水平的支链氨基酸 (BCAA’s)，有助於身体维持肌肉糖原储存。糖原為身体提供能量，更多的糖原意味著更多的能量。在运动前 45分鐘，饮用蛋白奶昔 (protein shake)加上复杂的碳水化合物，如糙米或燕麦作為训练前的小食，可以提供更多的能量。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\"><br></span><br></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">训练后摄取蛋白质</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">好处：肌肉恢复和生长 有一生理学杂誌曾发表的一项研究表明，训练后是你的肌肉最需要氨基酸的时候，所以会尽可能地吸收蛋白质。训练后摄取蛋白质对肌肉恢复和生长是有很大好处的。训练后摄取蛋白质，可给肌肉提供作恢复的燃料。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><br></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">建议：</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">运动前喝一到二勺蛋白粉，可以提供运动时的能量，提高运动效率，补充运动时的能量消耗，减少训练时的肌肉损失。如果训练之后肌肉酸痛特别明显，可以适当补充蛋白质</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><br></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><br></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0; color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\"><br></p><p>								</p>'),
(14, '关于放松', '<p></p><p>健身之后一定要放松。<br></p><p>高强度锻炼会使身体产生大量乳酸，尤其是那些平时很少锻炼到的部位。</p><p>乳酸主要是高强度无氧运动产生。</p><p>这些乳酸会导致肌肉酸痛，影响肌肉的正常机能，如果继续运动还有可能导致肌肉劳损。</p><pre id=\"best-content-1446598457\" accuse=\"aContent\" class=\"best-text mb-10\" style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; margin-top: 10px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; white-space: pre-wrap; font-size: 14px; line-height: 26px; caret-color: rgb(51, 51, 51); min-height: 55px;\">在一次活动量较大以后，或间隔时间较长未锻炼，刚开始锻炼之后，往往会出现肌肉酸痛。这种肌肉酸痛不是即刻发生在运动结束后，而是发生在运动结束后1－2天，因此称为延迟性疼痛。  运动后肌肉延迟性酸痛的原因是运动时肌肉活动量大引起局部肌纤维及结缔组织的细微损伤，以及部分肌纤的痉挛所致。由于这种肌肉纤维细微损伤及痉挛是局部的，因而就整块肌肉而言，仍能完成运动功能，但存在酸痛感。酸痛后，经过肌肉内局部细微损伤的修复，肌肉组织变得较前强壮，以后同样负荷将不再发生损伤(酸痛)。</pre><p><br></p><pre id=\"best-content-1781276597\" accuse=\"aContent\" class=\"best-text mb-10\" style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; margin-top: 10px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; white-space: pre-wrap; font-size: 14px; line-height: 26px; caret-color: rgb(51, 51, 51); min-height: 55px;\">乳酸过多会使本来呈弱碱性的细胞变成酸性，细胞的功能会被削弱，乳酸如果充斥于静脉中，会使得血液循环不顺畅，血液偏酸性，结果出现肩膀酸痛、腰酸、发冷、头痛及头重感等症状。如果再进一步发展的话，不仅细胞本身无法保持正常功能，引发风湿等疾病，还会造成神经痛。</pre><p>应该尽快想办法将这些乳酸排出身体</p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"><br></span></p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"><br></span></p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"><br></span></p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"><br></span></p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\">持续的有氧运动可以加速身体排出乳酸</span></p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\">​锻炼之后拉伸肌肉可以提高血液循环，从而加速乳酸的代谢</p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\">对酸痛部位进行人工或机器按摩</p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\">热敷、泡澡、蒸桑拿</p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\">多吃维生素丰富的蔬菜、水果</p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"><br></span></p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"><br></span></p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"></span></p><pre id=\"best-content-1446598457\" accuse=\"aContent\" class=\"best-text mb-10\" style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; margin-top: 10px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; white-space: pre-wrap; font-size: 14px; line-height: 26px; caret-color: rgb(51, 51, 51); min-height: 55px;\">1．对酸痛的局部肌肉进行热敷，促进血液循环及代谢过程，有助于损伤组织的修复及痉挛的缓解；2．对酸痛局部进行静力牵张练习，保持伸展状态2分钟，然后休息1分钟，重复进行，每天做几次这种伸展练习有助缓解痉挛；3．对酸痛局部进行按摩，使肌肉放松，促进肌肉血液循环，有助损伤修复及痉挛缓解；4．口服维生素C有促进结缔组织中胶元合成的作用有助加速受损组织的修复和缓解酸痛。</pre><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"></span><br></p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"><br></span></p><p style=\"color: inherit; -webkit-text-size-adjust: 100%;\"><span style=\"color: inherit;\"></span></p><pre id=\"best-content-1781276597\" accuse=\"aContent\" class=\"best-text mb-10\" style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; margin-top: 10px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; white-space: pre-wrap; font-size: 14px; line-height: 26px; caret-color: rgb(51, 51, 51); min-height: 55px;\">应该适当地做一些伸展运动，这样能够促进血液循环，加速乳酸的消除。不管做哪一种伸展运动，都应当缓缓拉伸肌肉，而不要过于猛烈用力以至感到疼痛，否则会起反作用，造成肌肉损伤。</pre><p><br></p><p></p><p></p>');
INSERT INTO `back_muscles` (`Id`, `title`, `content`) VALUES
(15, '波比运动', '<p>									</p><p>									</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em;\">​</p><ul><li>波比运动最后跳起之后，不要直着落地，应该膝盖弯曲，自然落地，否则很伤膝盖，运动过后膝盖会痛</li><li>在运动过程中尽量将每个动作的借力点分散到全身，不要集中在某一个部位，尤其是膝盖，通过全身来分担身体的重量，锻炼到全身</li><li>每天早晨起来，迷迷糊糊的，洗完脸之后，先跳绳热身，然后做三五组（<span style=\"white-space: normal;\">一组15个</span>）波比运动，一整天都会精力充沛，晚上洗澡之前做三五组，睡眠质量会好很多</li><li>如果做过之后肌肉酸痛，要留足够的休息时间，如果关节痛，要休息并调整运动时的动作</li></ul><span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 2em;\"><span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\"></span></span><p></p><p><br></p><p><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\"><br></span></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\"><br></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\"><br></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\"><br></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\">波比跳被称为是最有效率、最好的全身健身项目之一，是结合了</span><a href=\"http://www.ixiumei.com/bk/sd/\" target=\"_blank\" style=\"color: rgb(242, 30, 70); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\" _href=\"http://www.ixiumei.com/bk/sd/\">深蹲</a><span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\">、俯卧撑及跳跃一连串的动作，在短时间内会将心跳率拉升到将近人体最大值，所以一般来说波比跳每天能坚持做20分钟左右效果就很好了。</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; white-space: normal;\">波比是一个训练动作！是无氧还是有氧取决你的<a href=\"http://www.ixiumei.com/bk/yd/\" target=\"_blank\" style=\"color: rgb(242, 30, 70);\" _href=\"http://www.ixiumei.com/bk/yd/\">运动</a>强度！如果你慢悠悠的进行波比跳，连续运动30分钟，那可能强度达不到，更偏向有氧运动！</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; white-space: normal;\">如果你快速而激烈的进行波比跳，心率迅速飙升，一两分钟就坚持不了了，那就更偏向<a href=\"http://www.ixiumei.com/bk/wuyangyundong/\" target=\"_blank\" style=\"color: rgb(242, 30, 70);\" _href=\"http://www.ixiumei.com/bk/wuyangyundong/\">无氧运动</a>！</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><br></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\">-<span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\">初学者可以先从做10次波比跳，休息10秒，总共做10循环</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun; text-indent: 32px; white-space: normal;\">-在30秒内做最多下波比跳，休息30秒，总共做10循环，最重要的是保证动作的质量，在动作熟练和强度适应后，可根据自身实际情况适当增加组数</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\">-每做N次的Burpee，休息M秒，这样为一个循环，重复做C个循环。比方说，每做5次Burpee，休息30秒，持续做15个循环。</span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\">-</span><span style=\"text-indent: 2em;\">一天30个波比跳有用。</span><span style=\"text-indent: 2em;\">波比跳10分钟热量消耗115卡路里，热量消耗是跑步的2倍。波比跳可以让你在30秒内脂肪燃到飞起，大汗淋漓的感觉是很有成就感的</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\">-</span><span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; white-space: pre-wrap; background-color: rgb(245, 245, 245);\">波比动作适合大胖子，因为他能练到全身70%的肌肉群，是最适合减肥的，因为减肥的最重要的指标是心跳率，而波比只需短短十几秒就能达到减肥所需要的心跳指标,这是其他有氧运动都不能达到的</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; white-space: pre-wrap; background-color: rgb(245, 245, 245);\">-</span><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px;\">波比运动可以天天做，但是不需要每天做。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\">波比运动主要是被用来燃脂瘦身，如果体质好，想要尽快瘦身的话，可以天天做，但真正优质的波比运动锻炼是只需要保证一定锻炼次数就能有很好效果的，不需要每天都练</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; white-space: pre-wrap; background-color: rgb(245, 245, 245);\"></span>-<span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px;\">做波比运动重量不重质的话，即使天天练，锻炼效果也不大，而如果每次的锻炼都能够做到重视质量、动作标准、强度也足够的话，效果也很好，是没有必要天天练的。</span><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px;\">再加上波比运动强度大，且会锻炼到全身百分之70以上的肌肉群，如果天天练的话，身体可能会承受不住，而且肌肉也没有休息恢复的时间，那样可能会给身体带来伤害，所以不建议每天都做</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px;\">-</span><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px;\">隔1-2天做一次为好。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\">要想做波比运动能达到好的减肥或肌肉锻炼效果，就需要保持一定的锻炼频率，像两天打渔三天晒网肯定是没有什么效果的，而锻炼之后又需要给身体休息恢复的时间，高强度的天天锻炼可能会带来像肌肉拉伤等损伤，所以隔1-2天练一次为最好</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp; -<span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\">波比运动被称为是最有效率、最好的全身健身项目之一，是结合了深蹲、俯卧撑及跳跃一连串的动作，在短时间内会将心跳率拉升到将近人体最大值，所以一般来说波比运动每天能坚持做10-20分钟左右效果就很好了</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">对于0基础人群来说，每日100个是不明智的，太大的训练量只会起反作用。建议在初期，先计算自己一组能完成的最大数量，然后减掉2-3个，就是你每组该完成的量。建议一日做3-5组。</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><br></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><br></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">长期缺乏锻炼，从30岁左右起肌肉就会逐渐开始加速萎缩。完成一次波比跳，可以调动胸大肌、三头肌、大腿小腿肌群，以及其他许多细微的小肌群。帮助你保持强壮，维持健康。</span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><br></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">运动，会让你的大脑产生多巴胺，它是一种天然兴奋剂。建议把波比跳训练更多的放在早上完成，可以让你一整天都精神有活力、专注高效地完成学习、工作。</span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: none; border: 0px none; word-wrap: break-word; word-break: break-all; color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px; white-space: normal;\"><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, \'Microsoft YaHei\', 宋体, Aria, Helvetica, sans-serif; font-size: 14px;\"></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180625074039.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180625074039.gif\" style=\"width: 1034.15625px; white-space: normal;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180625074049.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180625074049.gif\" style=\"width: 1034.15625px; white-space: normal;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em; color: rgb(69, 69, 69); font-family: Arial, \'Microsoft YaHei\', SimSun;\"><span style=\"text-indent: 2em;\"><img src=\"http://www.dfer.top/upload/upfile/upfile_20180702120950.gif\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180702120950.gif\"></span></p><ul><li><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em;\"><span style=\"color:#454545;font-family:Arial, Microsoft YaHei, SimSun\"><br></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px; text-indent: 2em;\"><span style=\"color:#454545;font-family:Arial, Microsoft YaHei, SimSun\"><br></span></p></li></ul><p><br></p><p>								</p><p>								</p>'),
(16, '关于脂肪', '<p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><ul><li><span style=\"color: inherit;\">脂肪细胞在成年之后基本呈现稳定的状态，不会增加也不会减少，即使是抽脂等手段来人为减少脂肪细胞的数量，损失的细胞也会自动长回去，只是可以在短期内让细胞大量减少，如果能够控制饮食并坚持下去，新生的脂肪细胞就不会继续变大，也就起到了塑形的效果，如果没有保持健康的饮食习惯，那些新生的脂肪细胞就会变大，逐渐恢复到抽脂前的状态，那么抽脂就功亏一篑了</span><br></li><li>通常所谓的减脂就是减小脂肪的体积，专业健美的人可以在短期内将脂肪细胞的体积减小到几乎没有，肌肉的线条就会很明显</li><li>减脂需要建立一个长期的健康的生活、饮食习惯，否则，即使减到理想的效果了，以后暴饮暴食不运动了依然会导致脂肪体积变大，失去原先的好体型</li><li>如果不打算长期坚持运动，最理想的情况就是先练出一身发达的肌肉，提高基础代谢率，然后只要不是长期吃大量高卡的食物，即使平时不怎么运动，也能够保持理想的体型</li><li>减脂的过程必然要配合饮食上的调整，你的饮食习惯直接决定了你减脂的成功与否，甚至比运动更重要。如果你每天坚持有氧，但是饮食不够科学，你的减脂是不会有成效的。如果你打算减脂了，首先你得建立一套科学的饮食计划，并且长期坚持，我看过网上一些减脂很有成效的人，别人每餐的食物都是精确到克的，每顿饭搭配的食物都是用食物秤算好的，确保每顿摄入的营养充足并且脂肪低。对于减脂而言，首先要考虑的就是每份食物的脂肪含量，就目前国内大部分人的饮食结构而言，我觉得完全不用担心脂肪摄入不足，饭菜都是无油不欢，饮料大部分是卡路里极高的碳酸饮料，所以我们唯一要做的就是确保每份食物的脂肪尽可能的低，然后确保摄入足够的蛋白质来维持肌肉以及增肌。如果我们无法确定每顿饭的脂肪含量是否过量，比较省事的办法就是，少食多餐，每次吃个五分饱的样子，让身体能够保持正常运行就可以了</li><li>既然要让脂肪细胞变小，运动就是必不可少的，有氧应该与无氧配合，有氧运动可以在短期内提高脂肪代谢速度，让脂肪细胞的体积变小或者消失，而无氧增加的肌肉可以让你在长期拥有一个较高的基础代谢率，使你得到一个好的燃脂体质，在日常生活中能够比别人消耗更多的脂肪。</li><li>配合左旋肉碱等保健药物，你的身体可以在短期快速地燃烧脂肪，减小脂肪体积，更换旧的脂肪细胞。通常整个脂肪细胞更换一遍需要差不多3个月，在这期间如果能够坚持合理的运动，并且严格控制饮食，体脂率是能够明显降低的</li><li>有一种减脂误区需要严格警惕，那就是每天坚持有氧运动，也控制饮食，在短期内大量减少体重，使身体降到一个极低的代谢水平，但是之后减少运动，不再控制饮食，这个时候，身体的基础代谢已经比减脂前低多了，身体很容易就会处于供大于求的状态，这个时候，不但体重很容易恢复到减脂前的状态，而且会增加身体的脂肪细胞的总体数量，使你的身体比减脂前更胖，而对于减脂期间有节食状态的人更容易发生这种情况，<span style=\"white-space: normal;\">导致得不偿失。降低20%的热量摄入。</span></li><li>对于减脂而言，注定是任重而道远的事情。你运动，逐渐减少摄入，代谢会慢慢降低，<span style=\"white-space: normal;\">刚开始会特别明显，但这是不可持续的。<span style=\"white-space: normal;\">一旦达到效果之后，</span>你恢复之前的生活方式，你的体脂很快就会恢复，但是代谢没有恢复，再次减脂，你的体脂降低速度会慢，你增加有氧和热量缺口，体脂降低，因为热量缺口更大，导致代谢变得更低，重复这样之后，代谢越来越低。代谢太低之后，热量太低，不允许你再减脂了。你会倾向于暴饮暴食，或者欺骗餐，代谢率不会大幅提高，但是体脂会大量提高。减脂最后阶段，热量摄入低（摄入热量&lt;体重*11,体重不减）会很危险。脂肪细胞大小处于稳态，身体会觉得舒服，处于体脂定点，我的体脂定点在19%左右。体脂降低，脂肪变小，<span style=\"white-space: normal;\">瘦素分泌减少，新陈代谢就降低，饥饿感会很高</span>。人体会自我调节，让你的脂肪细胞大小回到稳态。当你减脂很长时间，热量缺口很大，代谢很低，长时间控制，你会忍不住吃欺骗餐，导致某一天突然有大量热量盈余，有可能导致脂肪细胞增生，唯一在青春期之后脂肪细胞增加的情况。本身胖，还吃的多，只会导致体积增大，基本不会导致数量增多。之后你身体会在瘦素的影响下，使脂肪细胞体积回到稳态，你就更胖，以后减下来就更难。对策：停止减脂，慢慢提高呢提高热量，恢复基础代谢，改变生活习惯，增加运动量，增加肌肉量，提高代谢率。方案：减脂期间，有成效之后，猛然一下吃的多，会造成体脂大量提高，而代谢率提升缓慢；当你体脂降下来之后，慢慢增加摄入，代谢会相应增加，人体就会渐渐适应，这时体脂会增加，但不会太快，一段时间之后，让代谢彻底恢复，有了代谢空间，你就可以进行下一轮减脂，一轮减个十斤到十五斤，然后花一段时间恢复代谢率，再减，这样反复减，需要很长时间来减到理想的效果，可能一年、三年。减的太极端，一次性减二三十斤，因为不可持续，会导致反弹。我们倡导可持续性减脂，良好生活习惯，运动习惯。如果无法持续，能成功而不反弹的概率很低。减脂期间要不断反思，自己的减脂方法是否可以持续，我们要追求持续减脂。</span></li><li>不要试图通过节食来减脂。我们要做的是提高基础代谢率，平时正常饮食，以不觉得饿为标准，多吃蛋白质丰富的食物，多吃蔬菜、水果，尽可能减少脂肪的摄入，多进行有氧和无氧相配合的运动</li><li>减脂期间可以适当减少摄入，但是每当减下十斤以上的体脂，就要渐渐增加摄入来恢复代谢率，当代谢率达到正常水平之后再进行新一轮减脂。在恢复期间会增加一部分体脂，但是你依然能减下来五斤左右的体脂，这个降低下来的体脂水平是长期有效的</li><li>做无氧可以维持和增加肌肉，而增加肌肉可以降低脂肪比例，提高基础代谢率，还能提高运动时的脂肪消耗效率</li><li>任何时候摄入过量的食物都会导致脂肪细胞变大，所以不管是减脂还是保持身材，好的饮食习惯都是很重要的</li><li>基础代谢变低的表现：最明显的感觉就是身体发冷，不想运动</li></ul><p></p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p>'),
(17, '减脂食物', '<p>									</p><p>									<span style=\"color: inherit;\"></span><br></p><p>									</p><p>									</p><h1>橙子</h1><ul class=\"basic-infor \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 140px; list-style: none; color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><li style=\"margin: 0px 0px 10px; padding: 0px 0px 10px; list-style: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);\"><strong>热量：</strong><span id=\"food-calory\"><span class=\"stress red1\">48</span>&nbsp;大卡（100克可食部分）</span></li><li style=\"margin: 0px 0px 10px; padding: 0px 0px 10px; list-style: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);\"><span><strong style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">评价：</strong><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">橙的含水量较高，热量在水果中属于中下水平，其维生素C含量并非很高，远低于猕猴桃、无花果等水果，适宜减肥期间食用。</span></span></li></ul><p><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">橙子富含维生素C，钙磷钾、胡萝卜素及柠檬酸，富含纤维素又是低卡水果，可以促进肠道排便，清理肠道宿便，另外橙子含有天然糖分，喜欢甜食的姑娘可以多吃点解下馋，橙子相对比较适合代替正餐、蛋糕或曲奇；</span></span></p><h1><br></h1><h1>苹果</h1><ul class=\"basic-infor \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 140px; list-style: none; color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><li style=\"margin: 0px 0px 10px; padding: 0px 0px 10px; list-style: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);\"><strong>热量：</strong><span id=\"food-calory\"><span class=\"stress red1\">54</span>&nbsp;大卡（100克可食部分）</span></li></ul><p><strong style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">评价：</strong><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">一种碳水化合物、水分、纤维、钾含量都较高的水果，对于缓解便秘、消除水肿均有一定帮助，适宜减肥时食用。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">作为水果之王的苹果，减肥功效是不可小觑的，苹果富含维生素，能够增加身体对各种营养物质的吸收转化，从而避免过多热量转化为脂肪堆积在体内，另外每100克苹果产生的热量只有60千卡，可谓是高效低热量的水果；</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><h1><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 14px;\"></span></span></h1><h1>木瓜</h1><p><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 14px;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">木瓜中含有一种独特的蛋白酶，能够有效的分解脂肪为脂肪酸，这样会把多余的脂肪分解掉，而木瓜中的蛋白分解酵素能够消化蛋白质，增加人体对蛋白质的吸收和消化；</span></span></span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"></span></p><h1>奇异果</h1><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">也可叫做猕猴桃，价格较贵，但是营养丰富全面，它被称为维生素C之王，奇异果是一种膳食纤维含量也很高的水果，膳食纤维含量高便能够达到刺激肠胃提高蠕动能力的作用，因此奇异果在减肥瘦身、补充体力和营养上表现优异；</span></span></p><hr><p><span style=\"color: inherit; font-family: inherit; font-size: 30px;\">全麦面包</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-weight: 700; white-space: normal; color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px;\"></span></span></span></p><ul class=\"basic-infor \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 140px; list-style: none; color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><li style=\"margin: 0px 0px 10px; padding: 0px 0px 10px; list-style: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);\"><strong>热量：</strong><span id=\"food-calory\"><span class=\"stress red1\">246</span>&nbsp;大卡（100克）</span></li></ul><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><span style=\"font-weight: 700; white-space: normal; color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px;\"></span></span></span><strong style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">评价：</strong><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">仅去掉麸皮，保留小麦大部分营养的面包，属于热量较低的面包，减肥期间可适量食用。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><h1><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\">馒头</span></h1><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"></span></p><ul class=\"basic-infor \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 140px; list-style: none; color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><li style=\"margin: 0px 0px 10px; padding: 0px 0px 10px; list-style: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);\"><strong>热量：</strong><span id=\"food-calory\"><span class=\"stress red1\">223</span>&nbsp;大卡（100克）</span></li></ul><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"></span><strong style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">评价：</strong><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">碳水化合物及水分含量较高的北方最常见的一种主食，可占全天热量的55%左右，适宜减肥期间食用。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 30px;\">鸡蛋</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"></span></p><ul class=\"basic-infor \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 140px; list-style: none; color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><li style=\"margin: 0px 0px 10px; padding: 0px 0px 10px; list-style: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);\"><strong>热量：</strong><span id=\"food-calory\"><span class=\"stress red1\">144</span>&nbsp;大卡（100克可食部分）</span></li></ul><p><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"></span><strong style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">评价：</strong><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">鸡蛋热量及营养与生鸡蛋基本相同，但熟鸡蛋中的营养物质被人体吸收利用效率更高。</span></p><p><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 14px;\">蛋清中含有优质蛋白质，蛋黄中含有大量脂肪和胆固醇，减脂期间每天吃一个蛋黄，其余只吃蛋清</span></span></p><p><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 14px;\"><br></span></span></p><p><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 14px;\"><br></span></span></p><p><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 14px;\"><br></span></span></p><p><font color=\"#333333\" face=\"-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 30px;\">水煮花生米</span></font></p><ul class=\"basic-infor \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 140px; list-style: none; color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\"><li style=\"margin: 0px 0px 10px; padding: 0px 0px 10px; list-style: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);\"><strong>​<br></strong></li><li style=\"margin: 0px 0px 10px; padding: 0px 0px 10px; list-style: none; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);\"><strong>热量：</strong><span id=\"food-calory\"><span class=\"stress red1\">402</span>&nbsp;大卡（100克）</span></li></ul><p><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 14px;\"><strong style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">卤：</strong><span style=\"color: rgb(51, 51, 51); font-family: -apple-system, \'Helvetica Neue\', Arial, \'PingFang SC\', \'Hiragino Sans GB\', STHeiti, \'Microsoft YaHei\', \'Microsoft JhengHei\', \'Source Han Sans SC\', \'Noto Sans CJK SC\', \'Source Han Sans CN\', \'Noto Sans SC\', \'Source Han Sans TC\', \'Noto Sans CJK TC\', \'WenQuanYi Micro Hei\', SimSun, sans-serif; font-size: 14px; white-space: normal;\">卤制菜肴通常不会额外添加大量油脂，因此菜肴大多热量适中，减肥期间可以适量食用。</span></span></span></p><p><span style=\"color:#333333;font-family:-apple-system, Helvetica Neue, Arial, PingFang SC, Hiragino Sans GB, STHeiti, Microsoft YaHei, Microsoft JhengHei, Source Han Sans SC, Noto Sans CJK SC, Source Han Sans CN, Noto Sans SC, Source Han Sans TC, Noto Sans CJK TC, WenQuanYi Micro Hei, SimSun, sans-serif\"><span style=\"font-size: 14px;\"><br></span></span></p><hr><ul><li>每个星期可以专门花一天时间，将水果作为主食，进行排毒减脂</li><li><span style=\"color: inherit;\">平时的饮食要多配合水果来补充维生素，减少热量摄入</span></li><li>饮食习惯要保持才会对减脂有效果</li></ul><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p>');
INSERT INTO `back_muscles` (`Id`, `title`, `content`) VALUES
(18, '低脂餐', '<p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p><br></p><p><br></p><hr><h1><span style=\"color: inherit; font-family: inherit;\">过低摄入水平</span><br></h1><ol><li>早晨，橙子*1，香蕉*1<br></li><li>中午，馒头*2，低脂酱料，鸡蛋*1，蛋清*1</li><li>下午，<span style=\"white-space: normal;\">奇异果*1，苹果*1，熟花生*9</span></li><li>晚上，馒头*2，低脂酱料</li></ol><hr><p><br></p><ul style=\"white-space: normal;\"><li><span style=\"color: inherit;\">大致试了一下最低摄入水平，如果低于这个水平，就无法集中注意力，无法正常工作学习</span></li><li><span style=\"color: inherit;\">期间尽量克制食欲，尽可能降低摄入，并努力保持正常身体状态，后来发现，如果摄入过低，根本无法集中注意力，而且浑身难受，无法进行正常生活学习<br></span></li><li>早晨进行了有氧运动，之后感觉不太饿，就吃了个水果、香蕉，以及一点牛肉干，几个小时后发现无法集中注意力，到中午的时候实在撑不住，吃了两个馒头，感觉好多了，持续了大约2个小时之后，又开始无法集中注意力，吃了一个鸡蛋，以及一个蛋清，后来去买了点水果，吃了一个奇异果，一个苹果，几个熟花生，仍然无法集中注意力，大约6点的时候实在难受，吃了两个馒头，得到了有效缓解，2小时后开始处于半饥饿状态</li><li>只是限制摄入就已经够难受了，如果通过节食来减脂，那就千万不要尝试了，因为弊大于利，不仅影响了正常生活，还容易损害身体，从长远而言减脂效果不理想，还容易导致脂肪增生</li><li><span style=\"white-space: normal;\">我不可能因为减脂而停止正常的工作学习，所以必须保证最基本的摄入，以不影响生活为标准，</span>整理之后得出了一个大致的低脂食谱，不要低于这个摄入水平就可以了</li><li>折合下来差不多1500卡，足够基础代谢了</li><li>照着这个食谱每减下五斤之后，记得调整饮食来恢复一下代谢率（<span style=\"white-space: normal;\">切记，</span>恢复代谢率的正确方式是逐渐提高摄入，而不是突然间吃得比平时多）</li></ul><hr><p><br></p><h1>低脂食谱</h1><div><ol><li>早晨8:00，低脂牛奶*1，全麦面包*2，熟鸡蛋*1，<span style=\"white-space: normal;\">低脂酱料</span></li><li>中午12:00，原味馒头*2，低脂酱料，熟蛋清*1，橙子*1</li><li>下午13:00——15:00，苹果*1，奇异果*1，熟花生*9，枸杞*9</li><li>晚上18:00，<span style=\"white-space: normal;\">原味馒头</span>*2，低脂酱料</li><li>睡前22:00，蜂蜜*1</li><li>每次运动之后，喝一杯蛋白补剂</li><li>全麦面包可以和馒头进行替换</li></ol></div><hr><div><p>最好的减脂方法：顺其自然，正常作息，正常饮食，既不要吃的太多，也不要吃的太少，营养均衡，尽可能减少脂肪摄入，对油腻的食物和甜食要敬而远之，多吃蔬菜水果，坚持有规律的运动。将食物来源控制在自己放心的范围内，不要吃垃圾食品，尽量在家自己做饭，尽可能避免在外面吃<span style=\"color: inherit; -webkit-text-size-adjust: 100%;\">。</span></p><p><br></p></div><p>																	</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p>'),
(19, '离心收缩', '<ul><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">离心收缩就是指肌肉在被拉长的动作。肌肉被拉长就会造成肌肉的良性撕裂与破坏。</span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">通俗来讲就是在自己做器械练习的时候把器械放下的阶段</span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">杠铃卧推时把杠铃推起来到最高点后慢慢放置胸前的过程，还有像俯卧撑的下降过程都是离心收缩</span></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">大部分肌肉的良性损伤都发生在离心收缩过程中，也就是说在肌肉被拉长的过程中才能造成良性损伤。不仅如此，还有一个条件，就是时间。离心收缩的时间一定要长于向心收缩（相对于离心收缩的过程，用力举起或推起至最高点的过程）。</span></span></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">在做杠铃卧推的时候，我们要尽快的将杠铃推至最高点，然再慢慢的放下至离胸部的最低点。大概就是推起需要1-2秒，然后放下需要4-6秒。</span></span></span></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">我们在将杠铃蹲起的时候应该尽量快一点，蹲下的时候就应该慢一点，去感受自己腿部肌肉被拉伸，甚至于被拉断的一种感觉。那么这种训练所带来的效果就会比一般训练的效果要好得多。</span></span></span></span></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">充分并且慢慢的进行离心收缩可以尽最大可能的撕扯肌肉，进而修补成维度更大的肌肉，但这种训练方法会给肌肉带来相当大的酸痛与无力感。<span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">如果你能克服这些，无惧于肌肉的酸痛于无力，并且享受这种感觉。那就在以后的日子里对自己狠一点吧！</span></span></span></span></span></span></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal;\">肌肉在阻力下逐渐被</span><a class=\"innerlink\" title=\"拉长\" href=\"http://www.baike.com/sowiki/%E6%8B%89%E9%95%BF?prd=content_doc_search\" style=\"color: rgb(2, 104, 205); font-family: 宋体; font-size: 14px; white-space: normal;\" _href=\"http://www.baike.com/sowiki/%E6%8B%89%E9%95%BF?prd=content_doc_search\">拉长</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal;\">，使运动环节向肌肉</span><a href=\"http://www.baike.com/sowiki/%E6%8B%89%E5%8A%9B?prd=content_doc_search\" class=\"innerlink\" title=\"拉力\" target=\"_blank\" style=\"color: rgb(2, 104, 205); font-family: 宋体; font-size: 14px; white-space: normal;\" _href=\"http://www.baike.com/sowiki/%E6%8B%89%E5%8A%9B?prd=content_doc_search\">拉力</a><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal;\">相反的方向运动的收缩方式。是动力性收缩的一种，又称作退让性收缩，其产生的最大肌肉力量比向心收缩要大。</span></span></span></span></span></span></span></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">离心运动掌控的重量更大，对肌肉产生更大的负荷，会产生极强的酸痛感。</span></span></span></span></span></span></span></span></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify;\">离心运动可以提高肌肉爆发力。</span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">离心运动能强化肌腱，增加关节活动范围，增加人体柔软度。</span></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\">离心收缩动作在所有的健身动作中都可以使用，离心训练的重量需要根据自己的能力加以安排。</span></span></span></li><li><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; white-space: normal;\"><span style=\"color: rgb(25, 25, 25); font-family: \'PingFang SC\', Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal;\">掌握好离心阶段的收缩就意味着能够达到事半功倍的效果</span></span></span></span></li></ul><p style=\"color: inherit;\"><br></p>'),
(20, '减腹', '<p>									</p><p>									</p><p>									</p><p>									</p><ul><li>不存在局部减脂，身体的减脂模式是全身的脂肪同时代谢</li><li>因为全身各部位的代谢效率和脂肪量不同，所以有的部位减的快，有的部位减的慢</li><li>碳水化合物循环，低碳的时候让脂肪更快代谢，但长时间低碳会导致激素水平下降，身体不适，所以每三天安排一天高碳，把低糖量补充回来，恢复一下激素水平，这是种有效的减脂方法</li><li>间歇进食，16——18小时禁食，<span style=\"white-space: normal;\">身体用更多脂肪来供给，</span>剩下的6——8小时把目标热量补充回来，据了解这个方法非常有效</li><li>顽固脂肪堆积，有可能是因为部分区域的血流量不好，会导致这部分区域燃脂效率降低。比如，有氧运动完之后，下腹部是冰凉的，不是温热。可以使用束腰提高这部分区域的温度，使血流量通畅，从而使这部分区域的燃脂效率恢复正常。因为这部分血流量不好，所以导致燃脂效率降低，使用塑腰可以使其恢复正常的血流量，达到跟其余部位同样的燃脂效率</li><li>减脂的时候，身体会先消耗糖分，然后消耗蛋白质和脂肪，因为减脂的时候蛋白质消耗是无法避免的，就需要结合无氧来保持肌肉</li></ul><p>																	</p><p>								</p><p>								</p><p>								</p><p>								</p>');

-- --------------------------------------------------------

--
-- 表的结构 `cache`
--

CREATE TABLE `cache` (
  `key` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `column`
--

CREATE TABLE `column` (
  `Id` int(11) NOT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `title` varchar(55) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `column`
--

INSERT INTO `column` (`Id`, `menu`, `title`, `pic`, `content`) VALUES
(1, NULL, '在街上、在桥下、在田野中，写着那无人问津的代码1', NULL, '<p><br></p><p>一缕香魂一旖梦</p><p>半生癫狂半生缘</p>');

-- --------------------------------------------------------

--
-- 表的结构 `data_air_tem`
--

CREATE TABLE `data_air_tem` (
  `Id` int(11) NOT NULL,
  `tem` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `data_air_tem`
--

INSERT INTO `data_air_tem` (`Id`, `tem`, `type`, `time`) VALUES
(1, 20, 1, '2018-04-16 12:00:03'),
(2, 19, 0, '2018-04-17 00:00:00'),
(3, 22, 1, '2018-04-17 12:00:03'),
(4, 19, 0, '2018-04-18 00:00:03'),
(8, 24, 1, '2018-04-18 12:00:03'),
(9, 21, 0, '2018-04-19 00:00:02'),
(10, 25, 1, '2018-04-19 12:00:03'),
(11, 22, 0, '2018-04-20 00:00:02'),
(12, 19, 1, '2018-04-20 12:00:03'),
(13, 19, 0, '2018-04-21 00:00:02'),
(14, 21, 1, '2018-04-21 12:00:04'),
(15, 23, 0, '2018-04-22 00:00:02'),
(16, 23, 1, '2018-04-22 12:00:03'),
(17, 15, 0, '2018-04-23 00:00:02'),
(18, 20, 1, '2018-04-23 12:00:03'),
(19, 16, 0, '2018-04-24 00:00:03'),
(20, 18, 1, '2018-04-24 12:00:04'),
(21, 15, 0, '2018-04-25 00:00:03'),
(22, 17, 1, '2018-04-25 12:00:04'),
(23, 15, 0, '2018-04-26 00:00:03'),
(24, 20, 1, '2018-04-26 12:00:03'),
(25, 17, 0, '2018-04-27 00:00:03'),
(26, 25, 1, '2018-04-27 12:00:03'),
(27, 19, 0, '2018-04-28 00:00:03'),
(28, 23, 1, '2018-04-28 12:00:03'),
(29, 19, 0, '2018-04-29 00:00:04'),
(30, 25, 1, '2018-04-29 12:00:02'),
(31, 21, 0, '2018-04-30 00:00:02'),
(32, 26, 1, '2018-04-30 12:00:03'),
(33, 21, 0, '2018-05-01 00:00:03'),
(34, 26, 1, '2018-05-01 12:00:03'),
(35, 18, 0, '2018-05-02 00:00:02'),
(36, 24, 1, '2018-05-02 12:00:02'),
(37, 20, 0, '2018-05-03 00:00:03'),
(38, 25, 1, '2018-05-03 12:00:02'),
(39, 19, 0, '2018-05-04 00:00:03'),
(40, 19, 1, '2018-05-04 12:00:03'),
(41, 17, 0, '2018-05-05 00:00:03'),
(42, 18, 1, '2018-05-05 12:00:03'),
(43, 20, 0, '2018-05-06 00:00:04'),
(44, 20, 1, '2018-05-06 12:00:04'),
(45, 17, 0, '2018-05-07 00:00:03'),
(46, 22, 1, '2018-05-07 12:00:04'),
(47, 18, 0, '2018-05-08 00:00:03'),
(48, 23, 1, '2018-05-08 12:00:03'),
(49, 25, 1, '2018-05-09 12:00:03'),
(50, 22, 0, '2018-05-10 00:00:03'),
(51, 22, 1, '2018-05-10 12:00:03'),
(52, 20, 0, '2018-05-11 00:00:03'),
(53, 18, 1, '2018-05-11 12:00:04'),
(54, 20, 0, '2018-05-12 00:00:02'),
(55, 23, 1, '2018-05-12 12:00:03'),
(56, 21, 0, '2018-05-13 00:00:03'),
(57, 28, 1, '2018-05-13 12:00:03'),
(58, 23, 0, '2018-05-14 00:00:03'),
(59, 23, 0, '2018-05-09 00:00:03'),
(60, 29, 1, '2018-05-14 12:00:03'),
(61, 26, 0, '2018-05-15 00:00:03'),
(62, 30, 1, '2018-05-15 12:00:04'),
(63, 22, 0, '2018-05-16 00:00:05'),
(64, 31, 1, '2018-05-16 12:00:03'),
(65, 27, 0, '2018-05-17 00:00:02'),
(66, 32, 1, '2018-05-17 12:00:06'),
(67, 26, 0, '2018-05-18 00:00:03'),
(68, 26, 1, '2018-05-18 12:00:08'),
(69, 22, 0, '2018-05-19 00:00:03'),
(70, 26, 1, '2018-05-19 12:00:02'),
(71, 23, 0, '2018-05-20 00:00:03'),
(72, 21, 1, '2018-05-20 12:00:03'),
(73, 18, 0, '2018-05-21 00:00:03'),
(74, 20, 1, '2018-05-21 12:00:04'),
(75, 17, 0, '2018-05-22 00:00:03'),
(76, 18, 1, '2018-05-22 12:00:03'),
(77, 15, 0, '2018-05-23 00:00:04'),
(78, 23, 1, '2018-05-23 12:00:03'),
(79, 20, 0, '2018-05-24 00:00:04'),
(80, 24, 1, '2018-05-24 12:00:22'),
(81, 22, 0, '2018-05-25 00:00:03'),
(82, 26, 1, '2018-05-25 12:00:03'),
(83, 21, 0, '2018-05-26 00:00:03'),
(84, 24, 1, '2018-05-26 12:00:08'),
(85, 20, 0, '2018-05-27 00:00:04'),
(86, 24, 1, '2018-05-27 12:00:03'),
(87, 21, 0, '2018-05-28 00:00:04'),
(88, 25, 1, '2018-05-28 12:00:02'),
(89, 21, 0, '2018-05-29 00:00:02'),
(90, 26, 1, '2018-05-29 12:00:03'),
(91, 22, 0, '2018-05-30 00:00:02'),
(92, 18, 1, '2018-05-30 12:00:03'),
(93, 15, 0, '2018-05-31 00:00:02'),
(94, 17, 1, '2018-05-31 12:00:03'),
(95, 18, 0, '2018-06-01 00:00:02'),
(96, 24, 1, '2018-06-01 12:00:03'),
(97, 18, 0, '2018-06-02 00:00:02'),
(98, 22, 1, '2018-06-02 12:00:04'),
(99, 20, 0, '2018-06-03 00:00:03'),
(100, 25, 1, '2018-06-03 12:00:02'),
(101, 20, 0, '2018-06-04 00:00:02'),
(102, 24, 1, '2018-06-04 12:00:03'),
(103, 22, 0, '2018-06-05 00:00:03'),
(104, 26, 1, '2018-06-05 12:00:02'),
(105, 22, 0, '2018-06-06 00:00:02'),
(106, 26, 1, '2018-06-06 12:00:03'),
(107, 24, 0, '2018-06-07 00:00:03'),
(108, 29, 1, '2018-06-07 12:00:02'),
(109, 25, 0, '2018-06-08 00:00:02'),
(110, 29, 1, '2018-06-08 12:00:02'),
(111, 24, 0, '2018-06-09 00:00:03'),
(112, 27, 1, '2018-06-09 12:00:02'),
(113, 23, 0, '2018-06-10 00:00:03'),
(114, 28, 1, '2018-06-10 12:00:03'),
(115, 24, 0, '2018-06-11 00:00:03'),
(116, 30, 1, '2018-06-11 12:00:02'),
(117, 23, 0, '2018-06-12 00:00:03'),
(118, 31, 1, '2018-06-12 12:00:03'),
(119, 24, 0, '2018-06-13 00:00:02'),
(120, 27, 1, '2018-06-13 12:00:02'),
(121, 23, 0, '2018-06-14 00:00:02'),
(122, 26, 1, '2018-06-14 12:00:04'),
(123, 29, 0, '2018-06-15 00:00:03'),
(124, 31, 1, '2018-06-15 12:00:03'),
(125, 27, 0, '2018-06-16 00:00:03'),
(126, 30, 1, '2018-06-16 12:00:03'),
(127, 27, 0, '2018-06-17 00:00:03'),
(128, 28, 1, '2018-06-17 12:00:03'),
(129, 25, 0, '2018-06-18 00:00:02'),
(130, 28, 1, '2018-06-18 12:00:03'),
(131, 24, 0, '2018-06-19 00:00:02'),
(132, 23, 1, '2018-06-19 12:00:03'),
(133, 23, 0, '2018-06-20 00:00:03'),
(134, 25, 1, '2018-06-20 12:00:03'),
(135, 24, 0, '2018-06-21 00:00:03'),
(136, 23, 1, '2018-06-21 12:00:03'),
(137, 21, 0, '2018-06-22 00:00:02'),
(138, 26, 1, '2018-06-22 12:00:03'),
(139, 22, 0, '2018-06-23 00:00:02'),
(140, 26, 1, '2018-06-23 12:00:03'),
(141, 24, 0, '2018-06-24 00:00:02'),
(142, 27, 1, '2018-06-24 12:00:02'),
(143, 25, 0, '2018-06-25 00:00:03'),
(144, 31, 1, '2018-06-25 12:00:03'),
(145, 28, 0, '2018-06-26 00:00:02'),
(146, 32, 1, '2018-06-26 12:00:03'),
(147, 28, 0, '2018-06-27 00:00:02'),
(148, 33, 1, '2018-06-27 12:00:03'),
(149, 29, 0, '2018-06-28 00:00:02'),
(150, 33, 1, '2018-06-28 12:00:03'),
(151, 24, 0, '2018-06-29 00:00:03'),
(152, 30, 1, '2018-06-29 12:00:03'),
(153, 28, 0, '2018-06-30 00:00:02'),
(154, 25, 1, '2018-06-30 12:00:02'),
(155, 21, 0, '2018-07-01 00:00:03'),
(156, 25, 1, '2018-07-01 12:00:03'),
(157, 24, 0, '2018-07-02 00:00:03'),
(158, 28, 1, '2018-07-02 12:00:04'),
(159, 23, 0, '2018-07-03 00:00:03'),
(160, 24, 0, '2018-07-04 00:00:03'),
(161, 29, 1, '2018-07-04 12:09:04'),
(162, 23, 0, '2018-07-09 00:00:03'),
(163, 26, 1, '2018-07-09 12:00:03'),
(164, 26, 1, '2018-07-10 12:00:03'),
(165, 27, 1, '2018-07-10 20:49:56'),
(166, 27, 1, '2018-07-10 20:51:02'),
(167, 27, 1, '2018-07-10 20:51:30'),
(168, 27, 1, '2018-07-10 20:53:31'),
(169, 26, 0, '2018-07-11 00:00:02'),
(170, 30, 1, '2018-07-11 12:00:04'),
(171, 28, 0, '2018-07-12 00:00:02'),
(172, 32, 1, '2018-07-12 12:00:03'),
(173, 25, 0, '2018-07-13 00:00:02'),
(174, 24, 1, '2018-07-13 12:00:03'),
(175, 24, 0, '2018-07-14 00:00:02'),
(176, 30, 1, '2018-07-14 12:00:03'),
(177, 27, 0, '2018-07-15 00:00:02'),
(178, 31, 1, '2018-07-15 12:00:03'),
(196, 30, 0, '2018-07-16 20:59:13'),
(197, 30, 0, '2018-07-16 20:59:15'),
(198, 30, 0, '2018-07-16 20:59:17'),
(199, 30, 0, '2018-07-16 20:59:24'),
(200, 30, 0, '2018-07-16 20:59:30'),
(202, 30, 1, '2018-07-16 20:59:59'),
(203, 28, 0, '2018-07-17 00:00:03'),
(206, 30, 1, '2018-07-17 12:00:03'),
(207, 28, 0, '2018-07-18 00:00:03'),
(208, 32, 1, '2018-07-18 12:00:03'),
(209, 28, 0, '2018-07-19 00:00:03'),
(210, 32, 1, '2018-07-19 12:00:03'),
(211, 29, 0, '2018-07-20 00:00:02'),
(212, 33, 1, '2018-07-20 12:00:03'),
(213, 30, 0, '2018-07-21 00:00:06'),
(214, 33, 1, '2018-07-21 12:00:03'),
(215, 28, 0, '2018-07-22 00:00:02'),
(216, 33, 1, '2018-07-22 12:00:03'),
(217, 28, 0, '2018-07-23 00:00:02'),
(218, 32, 1, '2018-07-23 12:00:03'),
(219, 29, 0, '2018-07-24 00:00:02'),
(220, 33, 1, '2018-07-24 12:00:03'),
(221, 29, 0, '2018-07-25 00:00:03'),
(222, 34, 1, '2018-07-25 12:00:04'),
(223, 29, 0, '2018-07-26 00:00:02'),
(224, 32, 1, '2018-07-26 12:00:03'),
(225, 26, 0, '2018-07-27 00:00:03'),
(226, 30, 1, '2018-07-27 12:00:03'),
(227, 23, 0, '2018-07-28 00:00:02'),
(228, 28, 1, '2018-07-28 12:00:03'),
(229, 22, 0, '2018-07-29 00:00:02'),
(230, 24, 1, '2018-07-29 12:00:04'),
(231, 25, 0, '2018-07-30 00:00:02'),
(232, 29, 1, '2018-07-30 12:00:03'),
(233, 25, 0, '2018-07-31 00:00:03'),
(234, 31, 1, '2018-07-31 12:00:02'),
(235, 24, 0, '2018-08-01 00:00:03'),
(236, 25, 1, '2018-08-01 12:00:03'),
(237, 25, 0, '2018-08-02 00:00:02'),
(238, 28, 1, '2018-08-02 12:00:03'),
(239, 26, 0, '2018-08-03 00:00:03'),
(240, 31, 1, '2018-08-03 12:00:03'),
(241, 27, 0, '2018-08-04 00:00:02'),
(242, 33, 1, '2018-08-04 12:00:02'),
(243, 26, 0, '2018-08-05 00:00:04'),
(244, 31, 1, '2018-08-05 12:00:03'),
(245, 26, 0, '2018-08-06 00:00:02'),
(246, 31, 1, '2018-08-06 12:00:02'),
(247, 27, 0, '2018-08-07 00:00:03'),
(248, 32, 1, '2018-08-07 12:00:03'),
(249, 27, 0, '2018-08-08 00:00:03'),
(250, 34, 1, '2018-08-08 12:00:05'),
(251, 28, 0, '2018-08-09 00:00:03'),
(252, 33, 1, '2018-08-09 12:00:03'),
(253, 28, 0, '2018-08-10 00:00:03'),
(254, 33, 1, '2018-08-10 12:00:02'),
(255, 27, 0, '2018-08-11 00:00:02'),
(256, 34, 1, '2018-08-11 12:00:03'),
(257, 27, 0, '2018-08-12 00:00:02'),
(258, 34, 1, '2018-08-12 12:00:03'),
(259, 28, 0, '2018-08-13 00:00:02'),
(260, 34, 1, '2018-08-13 12:00:03'),
(261, 27, 0, '2018-08-14 00:00:02'),
(262, 33, 1, '2018-08-14 12:00:02'),
(263, 28, 0, '2018-08-15 00:00:02'),
(264, 32, 1, '2018-08-15 12:00:02'),
(265, 28, 0, '2018-08-16 00:00:02'),
(266, 32, 1, '2018-08-16 12:00:06'),
(267, 26, 0, '2018-08-17 00:00:03'),
(268, 28, 1, '2018-08-17 12:00:04'),
(269, 23, 0, '2018-08-18 00:00:03'),
(270, 29, 1, '2018-08-18 12:00:03'),
(271, 27, 0, '2018-08-19 00:00:03'),
(272, 33, 1, '2018-08-19 12:00:03'),
(273, 27, 0, '2018-08-20 00:00:02'),
(274, 31, 1, '2018-08-20 12:00:02'),
(275, 27, 0, '2018-08-21 00:00:03'),
(276, 32, 1, '2018-08-21 12:00:06'),
(277, 28, 0, '2018-08-22 00:00:03'),
(278, 29, 1, '2018-08-22 12:00:03'),
(279, 26, 0, '2018-08-23 00:00:03'),
(280, 25, 1, '2018-08-23 12:00:03'),
(281, 25, 0, '2018-08-24 00:00:02'),
(282, 30, 1, '2018-08-24 12:00:02'),
(283, 26, 0, '2018-08-25 00:00:03'),
(284, 31, 1, '2018-08-25 12:00:03'),
(285, 27, 0, '2018-08-26 00:00:03'),
(286, 31, 1, '2018-08-26 12:00:03'),
(287, 26, 0, '2018-08-27 00:00:03'),
(288, 31, 1, '2018-08-27 12:00:03'),
(289, 27, 0, '2018-08-28 00:00:02'),
(290, 32, 1, '2018-08-28 12:00:03'),
(291, 28, 0, '2018-08-29 00:00:03'),
(292, 32, 1, '2018-08-29 12:00:03'),
(293, 28, 0, '2018-08-30 00:00:05'),
(294, 30, 1, '2018-08-30 12:00:03'),
(295, 26, 0, '2018-08-31 00:00:02'),
(296, 24, 1, '2018-08-31 12:00:05'),
(297, 24, 0, '2018-09-01 00:00:02'),
(298, 25, 1, '2018-09-01 12:00:05'),
(299, 25, 0, '2018-09-02 00:00:02'),
(300, 27, 1, '2018-09-02 12:00:05'),
(301, 26, 0, '2018-09-03 00:00:03'),
(302, 32, 1, '2018-09-03 12:00:03'),
(303, 26, 0, '2018-09-04 00:00:02'),
(304, 27, 1, '2018-09-04 12:00:03'),
(305, 25, 0, '2018-09-05 00:00:03'),
(306, 28, 1, '2018-09-05 12:00:04'),
(307, 24, 0, '2018-09-06 00:00:03'),
(308, 24, 1, '2018-09-06 12:00:03'),
(309, 23, 0, '2018-09-07 00:00:02'),
(310, 23, 1, '2018-09-07 12:00:03'),
(311, 19, 0, '2018-09-08 00:00:02'),
(312, 26, 1, '2018-09-08 12:00:03'),
(313, 19, 0, '2018-09-09 00:00:03'),
(314, 26, 1, '2018-09-09 12:00:02'),
(315, 23, 0, '2018-09-10 00:00:02'),
(316, 21, 1, '2018-09-10 12:00:03'),
(317, 20, 0, '2018-09-11 00:00:03'),
(318, 25, 1, '2018-09-11 12:00:03'),
(319, 21, 0, '2018-09-12 00:00:03'),
(320, 25, 1, '2018-09-12 12:00:03'),
(321, 20, 0, '2018-09-13 00:00:03'),
(322, 22, 1, '2018-09-13 12:00:04'),
(323, 21, 0, '2018-09-14 00:00:03'),
(324, 27, 1, '2018-09-14 12:00:03'),
(325, 24, 0, '2018-09-15 00:00:02'),
(326, 25, 1, '2018-09-15 12:00:03'),
(327, 25, 0, '2018-09-16 00:00:02'),
(328, 25, 1, '2018-09-16 12:00:03'),
(329, 25, 0, '2018-09-17 00:00:02'),
(330, 20, 1, '2018-09-17 12:00:03'),
(331, 21, 0, '2018-09-18 00:00:04'),
(332, 22, 1, '2018-09-18 12:00:03'),
(333, 23, 0, '2018-09-19 00:00:03'),
(334, 26, 1, '2018-09-19 12:00:03'),
(335, 26, 0, '2018-09-20 00:00:03'),
(336, 22, 1, '2018-09-20 12:00:03'),
(337, 21, 0, '2018-09-21 00:00:03'),
(338, 21, 1, '2018-09-21 12:00:03'),
(339, 20, 0, '2018-09-22 00:00:02'),
(340, 26, 1, '2018-09-22 12:00:03'),
(341, 21, 0, '2018-09-23 00:00:03'),
(342, 26, 1, '2018-09-23 12:00:05'),
(343, 21, 0, '2018-09-24 00:00:02'),
(344, 24, 1, '2018-09-24 12:00:04'),
(345, 18, 0, '2018-09-25 00:00:02'),
(346, 16, 1, '2018-09-25 12:00:04'),
(347, 16, 0, '2018-09-26 00:00:02'),
(348, 15, 1, '2018-09-26 12:00:03'),
(349, 16, 0, '2018-09-27 00:00:02'),
(350, 20, 1, '2018-09-27 12:00:03'),
(351, 19, 0, '2018-09-28 00:00:02'),
(352, 23, 1, '2018-09-28 12:00:06'),
(353, 19, 0, '2018-09-29 00:00:04'),
(354, 25, 1, '2018-09-29 12:00:03'),
(355, 19, 0, '2018-09-30 00:00:04'),
(356, 22, 1, '2018-09-30 12:00:03'),
(357, 21, 0, '2018-10-01 00:00:03'),
(358, 20, 1, '2018-10-01 12:00:03'),
(359, 18, 0, '2018-10-02 00:00:02'),
(360, 23, 1, '2018-10-02 12:00:03'),
(361, 18, 0, '2018-10-03 00:00:03'),
(362, 21, 1, '2018-10-03 12:00:03'),
(363, 16, 0, '2018-10-04 00:00:02'),
(364, 23, 1, '2018-10-04 12:00:03'),
(365, 17, 0, '2018-10-05 00:00:02'),
(366, 24, 1, '2018-10-05 12:00:03'),
(367, 17, 0, '2018-10-06 00:00:02'),
(368, 24, 1, '2018-10-06 12:00:03'),
(369, 17, 0, '2018-10-07 00:00:02'),
(370, 25, 1, '2018-10-07 12:00:03'),
(371, 17, 0, '2018-10-08 00:00:02'),
(372, 18, 1, '2018-10-08 12:00:03'),
(373, 19, 0, '2018-10-09 00:00:02'),
(374, 19, 1, '2018-10-09 12:00:03'),
(375, 17, 0, '2018-10-10 00:00:02'),
(376, 20, 1, '2018-10-10 12:00:03'),
(377, 16, 0, '2018-10-11 00:00:02'),
(378, 20, 1, '2018-10-11 12:00:04'),
(379, 17, 0, '2018-10-12 00:00:02'),
(380, 20, 1, '2018-10-12 12:00:03'),
(381, 16, 0, '2018-10-13 00:00:03'),
(382, 16, 1, '2018-10-13 12:00:02'),
(383, 12, 0, '2018-10-14 00:00:03'),
(384, 15, 1, '2018-10-14 12:00:03'),
(385, 13, 0, '2018-10-15 00:00:02'),
(386, 17, 1, '2018-10-15 12:00:03'),
(387, 14, 0, '2018-10-16 00:00:02'),
(388, 18, 1, '2018-10-16 12:00:04'),
(389, 15, 0, '2018-10-17 00:00:02'),
(390, 20, 1, '2018-10-17 12:00:06'),
(391, 15, 0, '2018-10-18 00:00:02'),
(392, 19, 1, '2018-10-18 12:00:03'),
(393, 16, 0, '2018-10-19 00:00:03'),
(394, 13, 1, '2018-10-19 12:00:04'),
(395, 11, 0, '2018-10-20 00:00:02'),
(396, 12, 1, '2018-10-20 12:00:03'),
(397, 11, 0, '2018-10-21 00:00:02'),
(398, 12, 1, '2018-10-21 12:00:03'),
(399, 13, 0, '2018-10-22 00:00:02'),
(400, 19, 1, '2018-10-22 12:00:03'),
(401, 15, 0, '2018-10-23 00:00:02'),
(402, 20, 1, '2018-10-23 12:00:03'),
(403, 17, 0, '2018-10-24 00:00:03'),
(404, 19, 1, '2018-10-24 12:00:03'),
(405, 16, 0, '2018-10-25 00:00:03'),
(406, 19, 1, '2018-10-25 12:00:03'),
(407, 17, 0, '2018-10-26 00:00:04'),
(408, 21, 1, '2018-10-26 12:00:03'),
(409, 10, 1, '2018-11-10 20:53:09'),
(410, 10, 1, '2018-11-10 20:53:30'),
(411, 10, 1, '2018-11-10 20:54:35'),
(412, 10, 0, '2018-11-10 20:54:57'),
(413, 10, 0, '2018-11-10 20:55:36'),
(414, 10, 0, '2018-11-10 20:57:02'),
(415, 11, 0, '2018-11-11 00:00:02'),
(416, 12, 1, '2018-11-11 12:00:02'),
(417, 11, 0, '2018-11-12 00:00:02'),
(418, 15, 1, '2018-11-12 12:00:05'),
(419, 12, 0, '2018-11-13 00:00:03'),
(420, 12, 1, '2018-11-13 12:00:02'),
(421, 11, 0, '2018-11-14 00:00:02'),
(422, 11, 1, '2018-11-14 12:00:03'),
(423, 11, 0, '2018-11-15 00:00:02'),
(424, 12, 1, '2018-11-15 12:00:03');

-- --------------------------------------------------------

--
-- 表的结构 `data_cpu`
--

CREATE TABLE `data_cpu` (
  `Id` int(11) NOT NULL,
  `tem` int(11) DEFAULT '0',
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `data_cpu`
--

INSERT INTO `data_cpu` (`Id`, `tem`, `time`) VALUES
(1, 40, '2018-04-16 12:00:02'),
(2, 34, '2018-04-17 12:00:02'),
(3, 39, '2018-04-18 12:00:02'),
(4, 43, '2018-04-19 12:00:02'),
(5, 38, '2018-04-20 12:00:02'),
(6, 38, '2018-04-21 12:00:04'),
(7, 39, '2018-04-22 12:00:02'),
(8, 37, '2018-04-23 12:00:02'),
(9, 40, '2018-04-24 12:00:03'),
(10, 37, '2018-04-25 12:00:03'),
(11, 36, '2018-04-26 12:00:02'),
(12, 37, '2018-04-27 12:00:02'),
(13, 40, '2018-04-28 12:00:02'),
(14, 39, '2018-04-29 12:00:02'),
(15, 39, '2018-04-30 12:00:02'),
(16, 43, '2018-05-01 12:00:02'),
(17, 41, '2018-05-02 12:00:02'),
(18, 39, '2018-05-03 12:00:02'),
(19, 40, '2018-05-04 12:00:02'),
(20, 41, '2018-05-05 12:00:03'),
(21, 42, '2018-05-06 12:00:03'),
(22, 39, '2018-05-07 12:00:03'),
(23, 42, '2018-05-08 12:00:02'),
(24, 42, '2018-05-09 12:00:03'),
(25, 40, '2018-05-10 12:00:03'),
(26, 42, '2018-05-11 12:00:03'),
(27, 40, '2018-05-12 12:00:02'),
(28, 44, '2018-05-13 12:00:03'),
(29, 43, '2018-05-14 12:00:02'),
(30, 46, '2018-05-15 12:00:04'),
(31, 44, '2018-05-16 12:00:02'),
(32, 44, '2018-05-17 12:00:02'),
(33, 11, '2018-05-18 03:05:10'),
(34, 46, '2018-05-18 12:00:04'),
(35, 11, '2018-05-19 10:50:34'),
(36, 42, '2018-05-19 12:00:02'),
(37, 41, '2018-05-20 12:00:03'),
(38, 40, '2018-05-21 12:00:03'),
(39, 39, '2018-05-22 12:00:03'),
(40, 39, '2018-05-23 12:00:03'),
(41, 39, '2018-05-24 12:00:14'),
(42, 40, '2018-05-25 12:00:03'),
(43, 41, '2018-05-26 12:00:03'),
(44, 41, '2018-05-27 12:00:02'),
(45, 40, '2018-05-28 12:00:02'),
(46, 40, '2018-05-29 12:00:03'),
(47, 11, '2018-05-30 05:54:05'),
(48, 40, '2018-05-30 12:00:02'),
(49, 39, '2018-05-31 12:00:02'),
(50, 40, '2018-06-01 12:00:03'),
(51, 38, '2018-06-02 12:00:03'),
(52, 40, '2018-06-03 12:00:02'),
(53, 40, '2018-06-04 12:00:03'),
(54, 40, '2018-06-05 12:00:02'),
(55, 42, '2018-06-06 12:00:02'),
(56, 43, '2018-06-07 12:00:02'),
(57, 44, '2018-06-08 12:00:02'),
(58, 46, '2018-06-09 12:00:02'),
(59, 49, '2018-06-10 12:00:03'),
(60, 46, '2018-06-11 12:00:02'),
(61, 49, '2018-06-12 12:00:02'),
(62, 46, '2018-06-13 12:00:02'),
(63, 49, '2018-06-14 12:00:03'),
(64, 48, '2018-06-15 12:00:03'),
(65, 48, '2018-06-16 12:00:02'),
(66, 47, '2018-06-17 12:00:02'),
(67, 47, '2018-06-18 12:00:03'),
(68, 46, '2018-06-19 12:00:02'),
(69, 46, '2018-06-20 12:00:03'),
(70, 45, '2018-06-21 12:00:03'),
(71, 44, '2018-06-22 12:00:02'),
(72, 43, '2018-06-23 12:00:02'),
(73, 44, '2018-06-24 12:00:02'),
(74, 45, '2018-06-25 12:00:03'),
(75, 46, '2018-06-26 12:00:02'),
(76, 46, '2018-06-27 12:00:02'),
(77, 47, '2018-06-28 12:00:02'),
(78, 47, '2018-06-29 12:00:02'),
(79, 46, '2018-06-30 12:00:02'),
(80, 44, '2018-07-01 12:00:02'),
(81, 46, '2018-07-02 12:00:03'),
(82, 43, '2018-07-04 12:08:58'),
(83, 45, '2018-07-09 12:00:02'),
(84, 45, '2018-07-10 12:00:02'),
(85, 46, '2018-07-10 20:49:55'),
(86, 46, '2018-07-10 20:51:01'),
(87, 46, '2018-07-10 20:51:30'),
(88, 46, '2018-07-10 20:53:30'),
(89, 46, '2018-07-10 20:53:50'),
(90, 46, '2018-07-11 12:00:04'),
(91, 46, '2018-07-12 12:00:02'),
(92, 45, '2018-07-13 12:00:02'),
(93, 46, '2018-07-14 12:00:02'),
(94, 46, '2018-07-15 12:00:02'),
(95, 46, '2018-07-16 12:00:03'),
(96, 49, '2018-07-16 14:18:29'),
(97, 49, '2018-07-16 14:22:33'),
(98, 49, '2018-07-16 14:22:44'),
(99, 49, '2018-07-16 14:26:01'),
(100, 49, '2018-07-16 14:26:05'),
(101, 50, '2018-07-16 14:44:33'),
(102, 46, '2018-07-16 17:52:39'),
(103, 47, '2018-07-16 18:01:39'),
(104, 46, '2018-07-16 20:37:16'),
(105, 47, '2018-07-16 20:38:58'),
(106, 47, '2018-07-16 20:39:01'),
(107, 46, '2018-07-16 20:40:16'),
(108, 47, '2018-07-16 20:47:39'),
(109, 47, '2018-07-16 20:59:59'),
(110, 46, '2018-07-17 07:57:47'),
(111, 47, '2018-07-17 12:00:02'),
(112, 47, '2018-07-18 12:00:02'),
(113, 47, '2018-07-19 12:00:02'),
(114, 48, '2018-07-20 12:00:02'),
(115, 51, '2018-07-21 12:00:02'),
(116, 48, '2018-07-22 12:00:03'),
(117, 48, '2018-07-23 12:00:02'),
(118, 48, '2018-07-24 12:00:02'),
(119, 48, '2018-07-25 12:00:02'),
(120, 49, '2018-07-26 12:00:02'),
(121, 48, '2018-07-27 12:00:02'),
(122, 46, '2018-07-28 12:00:02'),
(123, 46, '2018-07-29 12:00:03'),
(124, 46, '2018-07-30 12:00:02'),
(125, 47, '2018-07-31 12:00:02'),
(126, 47, '2018-08-01 12:00:02'),
(127, 47, '2018-08-02 12:00:02'),
(128, 47, '2018-08-03 12:00:02'),
(129, 47, '2018-08-04 12:00:02'),
(130, 45, '2018-08-05 12:00:02'),
(131, 45, '2018-08-06 12:00:02'),
(132, 45, '2018-08-07 12:00:02'),
(133, 48, '2018-08-08 12:00:02'),
(134, 47, '2018-08-09 12:00:03'),
(135, 48, '2018-08-10 12:00:02'),
(136, 47, '2018-08-11 12:00:02'),
(137, 48, '2018-08-12 12:00:02'),
(138, 47, '2018-08-13 12:00:02'),
(139, 48, '2018-08-14 12:00:02'),
(140, 48, '2018-08-15 12:00:02'),
(141, 48, '2018-08-16 12:00:05'),
(142, 47, '2018-08-17 12:00:02'),
(143, 46, '2018-08-18 12:00:02'),
(144, 46, '2018-08-19 12:00:03'),
(145, 46, '2018-08-20 12:00:02'),
(146, 47, '2018-08-21 12:00:04'),
(147, 47, '2018-08-22 12:00:02'),
(148, 46, '2018-08-23 12:00:02'),
(149, 45, '2018-08-24 12:00:02'),
(150, 46, '2018-08-25 12:00:03'),
(151, 45, '2018-08-26 12:00:03'),
(152, 46, '2018-08-27 12:00:02'),
(153, 46, '2018-08-28 12:00:03'),
(154, 48, '2018-08-29 12:00:03'),
(155, 47, '2018-08-30 12:00:02'),
(156, 46, '2018-08-31 12:00:02'),
(157, 45, '2018-09-01 12:00:03'),
(158, 45, '2018-09-02 12:00:05'),
(159, 46, '2018-09-03 12:00:02'),
(160, 46, '2018-09-04 12:00:02'),
(161, 48, '2018-09-05 12:00:03'),
(162, 47, '2018-09-06 12:00:02'),
(163, 45, '2018-09-07 12:00:02'),
(164, 45, '2018-09-08 12:00:02'),
(165, 45, '2018-09-09 12:00:02'),
(166, 44, '2018-09-10 12:00:02'),
(167, 45, '2018-09-11 12:00:02'),
(168, 44, '2018-09-12 12:00:02'),
(169, 43, '2018-09-13 12:00:02'),
(170, 44, '2018-09-14 12:00:02'),
(171, 44, '2018-09-15 12:00:03'),
(172, 44, '2018-09-16 12:00:03'),
(173, 44, '2018-09-17 12:00:02'),
(174, 43, '2018-09-18 12:00:02'),
(175, 44, '2018-09-19 12:00:02'),
(176, 45, '2018-09-20 12:00:02'),
(177, 43, '2018-09-21 12:00:03'),
(178, 43, '2018-09-22 12:00:02'),
(179, 41, '2018-09-23 12:00:02'),
(180, 43, '2018-09-24 12:00:03'),
(181, 43, '2018-09-25 12:00:03'),
(182, 40, '2018-09-26 12:00:03'),
(183, 39, '2018-09-27 12:00:02'),
(184, 40, '2018-09-28 12:00:05'),
(185, 40, '2018-09-29 12:00:02'),
(186, 40, '2018-09-30 12:00:02'),
(187, 41, '2018-10-01 12:00:02'),
(188, 41, '2018-10-02 12:00:02'),
(189, 41, '2018-10-03 12:00:02'),
(190, 41, '2018-10-04 12:00:02'),
(191, 41, '2018-10-05 12:00:02'),
(192, 40, '2018-10-06 12:00:02'),
(193, 41, '2018-10-07 12:00:03'),
(194, 41, '2018-10-08 12:00:03'),
(195, 40, '2018-10-09 12:00:02'),
(196, 39, '2018-10-10 12:00:03'),
(197, 39, '2018-10-11 12:00:03'),
(198, 39, '2018-10-12 12:00:02'),
(199, 39, '2018-10-13 12:00:02'),
(200, 38, '2018-10-14 12:00:03'),
(201, 38, '2018-10-15 12:00:03'),
(202, 38, '2018-10-16 12:00:03'),
(203, 38, '2018-10-17 12:00:03'),
(204, 39, '2018-10-18 12:00:02'),
(205, 38, '2018-10-19 12:00:03'),
(206, 38, '2018-10-20 12:00:02'),
(207, 37, '2018-10-21 12:00:03'),
(208, 37, '2018-10-22 12:00:03'),
(209, 37, '2018-10-23 12:00:02'),
(210, 38, '2018-10-24 12:00:02'),
(211, 39, '2018-10-25 12:00:02'),
(212, 40, '2018-10-26 12:00:02'),
(213, 39, '2018-11-10 20:53:08'),
(214, 39, '2018-11-10 20:53:30'),
(215, 39, '2018-11-10 20:54:35'),
(216, 33, '2018-11-11 12:00:02'),
(217, 33, '2018-11-12 12:00:02'),
(218, 34, '2018-11-13 12:00:02'),
(219, 35, '2018-11-14 12:00:02'),
(220, 35, '2018-11-15 12:00:02');

-- --------------------------------------------------------

--
-- 表的结构 `df`
--

CREATE TABLE `df` (
  `Id` int(11) NOT NULL,
  `nm` varchar(50) DEFAULT 'df' COMMENT '账号名',
  `pw` varchar(50) DEFAULT 'df',
  `pic` varchar(100) DEFAULT 'http://www.df315.top/upload/AdminPic/AdminPic_1706011702301411011.jpg',
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `df`
--

INSERT INTO `df` (`Id`, `nm`, `pw`, `pic`, `hits`) VALUES
(1, 'df', '666', 'img/logo.png?1531199694', 4044);

-- --------------------------------------------------------

--
-- 表的结构 `dt`
--

CREATE TABLE `dt` (
  `Id` int(11) NOT NULL,
  `hits` int(11) DEFAULT '0' COMMENT '用户访问量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dt`
--

INSERT INTO `dt` (`Id`, `hits`) VALUES
(1, 358);

-- --------------------------------------------------------

--
-- 表的结构 `home_column`
--

CREATE TABLE `home_column` (
  `Id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT '',
  `title` varchar(100) DEFAULT '',
  `describe` varchar(100) DEFAULT '',
  `content` longtext COMMENT '内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home_column`
--

INSERT INTO `home_column` (`Id`, `menu`, `title`, `describe`, `content`) VALUES
(1, '简介', '关于Df', '闲云野鹤醉溪月，一壶浊酒敬平生', '<p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p>									</p><p><br></p><p>天涯漂泊，何问归期，愿你的故事如茶，清幽淡雅，悠远绵长，不问缘起</p><p><br></p><p><br></p><p><a title=\"查看本句\" class=\"xlistju\" style=\"color: rgb(51, 51, 51); font-size: 14px; white-space: normal; font-family: ft !important;\">最温柔的月光&nbsp;<br>也敌不过&nbsp;<br>你转瞬的回眸</a></p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><br></p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p><p>								</p>'),
(2, '笔记', '记事本', '你已到达彼岸，水草丰美，桃花怒放，便是落雨，也有一番风细柳斜的心事。我只能做到起身离席，却仍无法与你同步。其实，又何曾与你同步过？一盏茶的爱，终我一生，也只有这一盏茶的温度，由暖而凉，片刻而已。', '<p>									</p><p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\">护眼色</p><div class=\"df\" style=\"box-sizing: inherit; background-color: rgb(199, 237, 204); color: rgb(55, 58, 60); font-size: 18px; white-space: normal; font-family: ft !important;\"><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem;\"></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem;\">ESL ：85 123 205</p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem;\">RGB ：199 237 204</p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 0px;\">#C7EDCC</p></div><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><br style=\"box-sizing: inherit;\"></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\">国内大部分银行的营业时间段 &nbsp;&nbsp;</p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><span style=\"box-sizing: inherit; background-color: rgb(199, 237, 204);\"></span></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><span style=\"box-sizing: inherit; background-color: rgb(199, 237, 204);\"></span></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><span style=\"box-sizing: inherit; background-color: rgb(199, 237, 204);\"></span></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><span style=\"box-sizing: inherit; background-color: rgb(199, 237, 204);\"></span></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><span style=\"box-sizing: inherit; background-color: rgb(199, 237, 204);\"></span></p><div class=\"df\" style=\"box-sizing: inherit; background-color: rgb(199, 237, 204); color: rgb(55, 58, 60); font-size: 18px; white-space: normal; font-family: ft !important;\"><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem;\"><span style=\"box-sizing: inherit;\">8：00-18:00</span></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 0px;\"><span style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\"></span></p></div><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><span style=\"box-sizing: inherit; background-color: rgb(199, 237, 204);\"></span></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><span style=\"box-sizing: inherit; background-color: rgb(199, 237, 204);\"></span></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><br style=\"box-sizing: inherit;\"></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\"><br style=\"box-sizing: inherit;\"></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\">win10开始文件夹</p><p class=\"df\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 1rem; background-color: rgb(199, 237, 204); color: rgb(55, 58, 60); font-family: ft; font-size: 18px; white-space: normal;\">C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs</p><a title=\"查看本句\" class=\"xlistju\" style=\"outline: none medium; color: rgb(0, 0, 0); line-height: 24px; font-family: 宋体; display: block; font-size: 13px; overflow: hidden; white-space: normal;\" href=\"javascript:\" _href=\"javascript:\"><br></a></p><p>								</p>'),
(3, '联系我', '风过而竹不留声', '雁渡寒潭，雁去而潭不留影', '<p>									</p><p>123123</p><p>								</p>'),
(4, '音乐', '播放器', '每个人是每个人的过客，每个人是每个人的思念', '<p>									</p><p>									</p><p>124124</p><p>								</p><p>								</p>'),
(5, '链接', '跳转', '点击下面的文字', '<p>									</p><p>123</p><p>								</p>');

-- --------------------------------------------------------

--
-- 表的结构 `home_layout`
--

CREATE TABLE `home_layout` (
  `Id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT '',
  `Inscribe` varchar(100) DEFAULT '',
  `img1` varchar(100) DEFAULT '' COMMENT '背景图像',
  `keywords` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `musicPlay` tinyint(4) DEFAULT '0' COMMENT '音乐自动播放',
  `color` varchar(10) DEFAULT '' COMMENT '主体字体颜色'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home_layout`
--

INSERT INTO `home_layout` (`Id`, `title`, `Inscribe`, `img1`, `keywords`, `description`, `musicPlay`, `color`) VALUES
(1, ' Df', 'Copyright © 2017 Df', 'upload/file/file_20180729060848.jpg', 'dfer,df,df个人主页,df主页,df的主页,谷雨,谷雨陈,谷雨霖,谷雨柏霖,谷雨霖霖,琥珀茶,茶儿,黑客,黑客Df,黑客df,Df黑客,df黑客', '依稀谷雨满城花', 0, '#d9ead3');

-- --------------------------------------------------------

--
-- 表的结构 `home_layout_img`
--

CREATE TABLE `home_layout_img` (
  `Id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT '',
  `img` varchar(100) DEFAULT '' COMMENT '背景图像'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home_layout_img`
--

INSERT INTO `home_layout_img` (`Id`, `title`, `img`) VALUES
(13, '', 'upload/file/file_20180726063159.jpg'),
(14, '', 'upload/file/file_20180729060831.jpg'),
(15, '', 'upload/file/file_20180729060848.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `home_link`
--

CREATE TABLE `home_link` (
  `Id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT '',
  `src` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home_link`
--

INSERT INTO `home_link` (`Id`, `title`, `src`) VALUES
(2, '鸣翠谷', 'http://Tourism.dfer.top'),
(3, '图片站', 'http://pic.dfer.top'),
(4, '微信公众号管理', 'http://wx.dfer.top'),
(5, '视频站', 'http://v.dfer.top'),
(6, '传奇手游', 'http://legend.dfer.top'),
(7, '公司网站', 'http://www.grain-rain.com'),
(8, '健身', 'http://fit.dfer.top/'),
(9, '游戏', ' http://game.dfer.top'),
(10, '全景展示', 'http://h5.dfer.top'),
(11, '三行情诗', 'http://jz.dfer.top'),
(12, '户外', 'http://walker.dfer.top'),
(13, '打赏', 'http://df.dfer.top/index.php?A=zfb&c=pay&a=dsV&para=0');

-- --------------------------------------------------------

--
-- 表的结构 `home_music`
--

CREATE TABLE `home_music` (
  `Id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT '',
  `src` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home_music`
--

INSERT INTO `home_music` (`Id`, `title`, `src`) VALUES
(4, '嘿，抬头', 'upload/file_20181020060346.mp3'),
(5, '往后余生', 'upload/file_20181020062922.mp3'),
(6, '醒着醉', 'upload/file_20181020062936.mp3'),
(7, '那些年很冒险的梦', 'upload/file_20181020062953.mp3'),
(8, '可不可以', 'upload/file_20181020063005.mp3');

-- --------------------------------------------------------

--
-- 表的结构 `html`
--

CREATE TABLE `html` (
  `Id` int(11) NOT NULL,
  `fileN` varchar(50) DEFAULT NULL COMMENT 'htm文件名',
  `src` varchar(100) DEFAULT NULL COMMENT '动态路径',
  `comment` varchar(30) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `html`
--

INSERT INTO `html` (`Id`, `fileN`, `src`, `comment`) VALUES
(2, 'index', 'homepage/home/', ''),
(3, 'fit', 'Fitness/home/', ''),
(4, 'x', 'ad/home/index', '广告');

-- --------------------------------------------------------

--
-- 表的结构 `iFrame_link`
--

CREATE TABLE `iFrame_link` (
  `Id` int(11) NOT NULL,
  `title` varchar(55) DEFAULT NULL COMMENT '标题',
  `url` varchar(100) DEFAULT NULL COMMENT '链接',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iFrame_link`
--

INSERT INTO `iFrame_link` (`Id`, `title`, `url`, `type`) VALUES
(1, '谷雨网络	', 'http://www.grain-rain.com', 1),
(2, 'love', 'http://h5.dfer.top/love/3.html', 0),
(3, '漩涡', 'http://h5.dfer.top/cool/1.html', 0),
(4, 'd', 'http://h5.dfer.top/index.php?A=homepage&c=love&a=index&para=0#', 0);

-- --------------------------------------------------------

--
-- 表的结构 `logs`
--

CREATE TABLE `logs` (
  `Id` int(11) NOT NULL,
  `str` longtext COMMENT '记录内容',
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `logs`
--

INSERT INTO `logs` (`Id`, `str`, `time`) VALUES
(963, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 12:55:34'),
(964, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:55:36'),
(965, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:55:38'),
(966, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 12:55:39'),
(967, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:56:20'),
(968, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:56:21'),
(969, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 12:56:23'),
(970, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 12:56:44'),
(971, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 12:56:47'),
(972, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:56:49'),
(973, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:57:06'),
(974, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:57:20'),
(975, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 12:57:34'),
(976, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:57:42'),
(977, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:57:47'),
(978, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 12:58:38'),
(979, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 12:58:44'),
(980, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 12:58:54'),
(981, 'select * from `home_layout` where `id`=\'1\' ', '2018-10-31 13:01:03'),
(982, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:01:03'),
(983, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:01:10'),
(984, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:03:42'),
(985, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:03:42'),
(986, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:03:42'),
(987, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:04:50'),
(988, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:04:50'),
(989, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:04:53'),
(990, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:04:53'),
(991, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:04:53'),
(992, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:06:08'),
(993, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:06:08'),
(994, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:06:08'),
(995, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:06:14'),
(996, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:06:14'),
(997, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:06:14'),
(998, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:06:41'),
(999, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:06:41'),
(1000, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:06:41'),
(1001, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:07:13'),
(1002, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`time`=\'2018-10-31 13:07:13\' where id=2', '2018-10-31 13:07:13'),
(1003, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:07:14'),
(1004, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:07:14'),
(1005, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:07:14'),
(1006, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:07:14'),
(1007, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:07:17'),
(1008, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:07:17'),
(1009, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:07:19'),
(1010, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:07:19'),
(1011, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:07:19'),
(1012, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:08:12'),
(1013, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:08:12'),
(1014, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:08:12'),
(1015, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:08:40'),
(1016, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:08:40'),
(1017, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:08:40'),
(1018, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:08:49'),
(1019, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:08:49'),
(1020, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:08:49'),
(1021, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:09:06'),
(1022, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:09:06'),
(1023, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:09:06'),
(1024, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:09:20'),
(1025, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:09:20'),
(1026, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:09:20'),
(1027, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:09:48'),
(1028, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:09:48'),
(1029, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:09:48'),
(1030, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:10:01'),
(1031, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:10:01'),
(1032, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:10:01'),
(1033, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:10:09'),
(1034, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:10:09'),
(1035, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:10:09'),
(1036, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:10:15'),
(1037, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:10:15'),
(1038, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:10:15'),
(1039, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:10:27'),
(1040, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:10:27'),
(1041, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:10:27'),
(1042, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:11:57'),
(1043, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:11:57'),
(1044, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:11:57'),
(1045, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:13:28'),
(1046, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`time`=\'2018-10-31 13:13:28\' where id=2', '2018-10-31 13:13:28'),
(1047, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:13:29'),
(1048, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:13:29'),
(1049, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:13:33'),
(1050, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:13:33'),
(1051, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:13:33'),
(1052, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:13:39'),
(1053, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`time`=\'2018-10-31 13:13:39\' where id=2', '2018-10-31 13:13:39'),
(1054, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:13:40'),
(1055, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:13:40'),
(1056, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:13:43'),
(1057, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:13:43'),
(1058, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:13:43'),
(1059, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:14:39'),
(1060, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`time`=\'2018-10-31 13:14:39\' where id=2', '2018-10-31 13:14:39'),
(1061, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:14:41'),
(1062, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:14:41'),
(1063, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:14:43'),
(1064, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:14:43'),
(1065, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:14:43'),
(1066, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:15:00'),
(1067, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:15:00'),
(1068, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:15:00'),
(1069, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:15:05'),
(1070, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`type`=\'1\',`time`=\'2018-10-31 13:15:05\' where id=2', '2018-10-31 13:15:05'),
(1071, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:15:07'),
(1072, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:15:07'),
(1073, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:15:10'),
(1074, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:15:10'),
(1075, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:15:10'),
(1076, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:16:00'),
(1077, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:16:00'),
(1078, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:16:00'),
(1079, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:16:05'),
(1080, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`type`=\'1\',`time`=\'2018-10-31 13:16:05\' where id=2', '2018-10-31 13:16:05'),
(1081, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:16:07'),
(1082, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:16:07'),
(1083, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:16:17'),
(1084, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:16:17'),
(1085, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:16:17'),
(1086, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:16:23'),
(1087, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`type`=\'1\',`time`=\'2018-10-31 13:16:23\' where id=2', '2018-10-31 13:16:23'),
(1088, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:16:25'),
(1089, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:16:25'),
(1090, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:16:28'),
(1091, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:16:28'),
(1092, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:16:28'),
(1093, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:17:51'),
(1094, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:17:51'),
(1095, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:17:51'),
(1096, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:17:59'),
(1097, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`type`=\'1\',`time`=\'2018-10-31 13:17:59\' where id=2', '2018-10-31 13:17:59'),
(1098, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:01'),
(1099, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:18:01'),
(1100, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:04'),
(1101, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:18:04'),
(1102, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:18:04'),
(1103, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:09'),
(1104, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`type`=\'0\',`time`=\'2018-10-31 13:18:09\' where id=2', '2018-10-31 13:18:09'),
(1105, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:11'),
(1106, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:18:11'),
(1107, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:14'),
(1108, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:18:14'),
(1109, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:18:14'),
(1110, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:38'),
(1111, 'update `wx` set `title`=\'谷雨霖霖\',`appid`=\'wx6a03a8c0fa5ca1fb\',`apps`=\'39b62d7cc91cd9f6be599a0aa4b26ce5\',`type`=\'1\',`time`=\'2018-10-31 13:18:38\' where id=2', '2018-10-31 13:18:38'),
(1112, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:40'),
(1113, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:18:40'),
(1114, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:42'),
(1115, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:42'),
(1116, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:18:42'),
(1117, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:44'),
(1118, 'update `wx` set `title`=\'谷雨网络科技\',`appid`=\'wx84f87e32a762212a\',`apps`=\'a56d72faf30aafb3fba3c3e4d42359df\',`type`=\'0\',`time`=\'2018-10-31 13:18:44\' where id=1', '2018-10-31 13:18:44'),
(1119, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:18:45'),
(1120, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:18:45'),
(1121, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:18:51'),
(1122, 'select * from `df` where `id`=\'1\' ', '2018-10-31 13:18:51'),
(1123, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:18:52'),
(1124, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:19:05'),
(1125, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:19:05'),
(1126, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:19:09'),
(1127, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:19:09'),
(1128, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:19:10'),
(1129, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:19:10'),
(1130, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 13:19:11'),
(1131, 'select * from `wx` where `id`=\'{$_df[ \'wxId\']}\' ', '2018-10-31 13:19:16'),
(1132, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 13:19:43'),
(1133, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:19:43'),
(1134, 'select * from `menu` where `parent`=\'27\' order by orderNum asc', '2018-10-31 13:19:47'),
(1135, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:19:47'),
(1136, 'select * from `menu` where `id`=\'27\' ', '2018-10-31 13:19:47'),
(1137, 'select * from `menu` where `id`=\'32\' ', '2018-10-31 13:19:52'),
(1138, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:19:52'),
(1139, 'select * from `menu` where `id`=\'27\' ', '2018-10-31 13:19:52'),
(1140, 'update `menu` set `parent`=\'27\',`title`=\'微信分享测试\',`src`=\'wx%2Fhome%2Fwxshare%2F%3FWxId%3D%21%21%24_df%5B+%27wxId%27%5D%21%21\',`orderNum`=\'0\',`type`=\'home\' where id=32', '2018-10-31 13:20:01'),
(1141, 'select * from `menu` where `parent`=\'27\' order by orderNum asc', '2018-10-31 13:20:01'),
(1142, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:20:01'),
(1143, 'select * from `menu` where `id`=\'27\' ', '2018-10-31 13:20:01'),
(1144, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:20:02'),
(1145, 'select * from `df` where `id`=\'1\' ', '2018-10-31 13:20:02'),
(1146, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:20:03'),
(1147, 'select * from `wx` where `id`=\'!!$_df[ \'wxId\']!!\' ', '2018-10-31 13:20:08'),
(1148, 'select * from `wx` where `id`=\'!!$_df[ \'wxId\']!!\' ', '2018-10-31 13:20:11'),
(1149, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 13:20:35'),
(1150, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:20:35'),
(1151, 'select * from `menu` where `parent`=\'27\' order by orderNum asc', '2018-10-31 13:20:45'),
(1152, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:20:45'),
(1153, 'select * from `menu` where `id`=\'27\' ', '2018-10-31 13:20:45'),
(1154, 'select * from `menu` where `id`=\'32\' ', '2018-10-31 13:20:47'),
(1155, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:20:47'),
(1156, 'select * from `menu` where `id`=\'27\' ', '2018-10-31 13:20:47'),
(1157, 'update `menu` set `parent`=\'27\',`title`=\'微信分享测试\',`src`=\'wx%2Fhome%2Fwxshare%2F\',`orderNum`=\'0\',`type`=\'home\' where id=32', '2018-10-31 13:21:00'),
(1158, 'select * from `menu` where `parent`=\'27\' order by orderNum asc', '2018-10-31 13:21:00'),
(1159, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:21:00'),
(1160, 'select * from `menu` where `id`=\'27\' ', '2018-10-31 13:21:00'),
(1161, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:21:05'),
(1162, 'select * from `df` where `id`=\'1\' ', '2018-10-31 13:21:05'),
(1163, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 13:21:05'),
(1164, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:21:10'),
(1165, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:21:13'),
(1166, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:23:52'),
(1167, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:24:05'),
(1168, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:24:28'),
(1169, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:24:49'),
(1170, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:24:52'),
(1171, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:24:57'),
(1172, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:25:19'),
(1173, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:25:32'),
(1174, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:25:55'),
(1175, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:25:57'),
(1176, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:26:46'),
(1177, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:27:06'),
(1178, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:27:08'),
(1179, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:27:47'),
(1180, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:27:50'),
(1181, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:27:58'),
(1182, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:28:04'),
(1183, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:28:24'),
(1184, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:28:26'),
(1185, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:28:35'),
(1186, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:29:07'),
(1187, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:29:17'),
(1188, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:30:11'),
(1189, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:30:34'),
(1190, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:31:04'),
(1191, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:31:21'),
(1192, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:32:15'),
(1193, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:32:55'),
(1194, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:32:55'),
(1195, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:33:18'),
(1196, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:33:18'),
(1197, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:33:22'),
(1198, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:33:22'),
(1199, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:33:49'),
(1200, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:33:53'),
(1201, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:33:53'),
(1202, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:33:53'),
(1203, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:33:54'),
(1204, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:34:14'),
(1205, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:34:15'),
(1206, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:34:24'),
(1207, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:34:35'),
(1208, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:34:35'),
(1209, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:34:48'),
(1210, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:34:49'),
(1211, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:38:11'),
(1212, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:38:15'),
(1213, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:38:17'),
(1214, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:38:18'),
(1215, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:38:18'),
(1216, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:38:22'),
(1217, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:41:23'),
(1218, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:43:32'),
(1219, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:47:01'),
(1220, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:47:03'),
(1221, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:48:06'),
(1222, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:48:06'),
(1223, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:48:19'),
(1224, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:48:19'),
(1225, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:48:50'),
(1226, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:48:50'),
(1227, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:48:54'),
(1228, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:48:54'),
(1229, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:48:54'),
(1230, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:48:54'),
(1231, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:48:56'),
(1232, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:48:56'),
(1233, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:49:13'),
(1234, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:49:13'),
(1235, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:16'),
(1236, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:16'),
(1237, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:17'),
(1238, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:17'),
(1239, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:26'),
(1240, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:26'),
(1241, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:29'),
(1242, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:29'),
(1243, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:44'),
(1244, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:44'),
(1245, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:59'),
(1246, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:49:59'),
(1247, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:11'),
(1248, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:11'),
(1249, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:16'),
(1250, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:16'),
(1251, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:33'),
(1252, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:33'),
(1253, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:50:36'),
(1254, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:50:36'),
(1255, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:50:36'),
(1256, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:50:36'),
(1257, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:50:51'),
(1258, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:50:51'),
(1259, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:55'),
(1260, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:55'),
(1261, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:55'),
(1262, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:50:55'),
(1263, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:51:33'),
(1264, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 13:51:33'),
(1265, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:51:37'),
(1266, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:51:37'),
(1267, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:51:38'),
(1268, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:51:38'),
(1269, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:52:05'),
(1270, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:52:05'),
(1271, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:58:56'),
(1272, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 13:59:41'),
(1273, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:00:59'),
(1274, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:02:07'),
(1275, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 14:02:08'),
(1276, 'select * from `df` where `id`=\'1\' ', '2018-10-31 14:02:08'),
(1277, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 14:02:09'),
(1278, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:02:13'),
(1279, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 14:02:37'),
(1280, 'select * from `df` where `id`=\'1\' ', '2018-10-31 14:02:37'),
(1281, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 14:02:37'),
(1282, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:02:41'),
(1283, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:02:41'),
(1284, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:03:58'),
(1285, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:04:16'),
(1286, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:04:19'),
(1287, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:04:23'),
(1288, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:04:23'),
(1289, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:05:03'),
(1290, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:05:03'),
(1291, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:05:07'),
(1292, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:05:07'),
(1293, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:05:25'),
(1294, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:05:25'),
(1295, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:05:57'),
(1296, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:05:57'),
(1297, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:06:10'),
(1298, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:06:10'),
(1299, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:06:13'),
(1300, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:06:13'),
(1301, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:06:23'),
(1302, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:06:23'),
(1303, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:07:08'),
(1304, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:07:08'),
(1305, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:07:51'),
(1306, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:07:51'),
(1307, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:10:38'),
(1308, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:11:07'),
(1309, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:11:07'),
(1310, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:11:41'),
(1311, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:11:41'),
(1312, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:11:43'),
(1313, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:11:43'),
(1314, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:12:13'),
(1315, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:12:45'),
(1316, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:12:45'),
(1317, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:12:59'),
(1318, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:13:11'),
(1319, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:13:29'),
(1320, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:14:12'),
(1321, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:15:31'),
(1322, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:18:28'),
(1323, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:19:20'),
(1324, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:19:22'),
(1325, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:22:43'),
(1326, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:23:44'),
(1327, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:24:10'),
(1328, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:24:23'),
(1329, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:24:43'),
(1330, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:27:15'),
(1331, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:27:59'),
(1332, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:28:14'),
(1333, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:29:23'),
(1334, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:29:33'),
(1335, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:29:47'),
(1336, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:30:07'),
(1337, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:30:08'),
(1338, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:30:19'),
(1339, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:30:28'),
(1340, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:31:53'),
(1341, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:32:07'),
(1342, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:32:09'),
(1343, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:32:27'),
(1344, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:33:08'),
(1345, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:33:25'),
(1346, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:33:28'),
(1347, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:33:49'),
(1348, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:33:51'),
(1349, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:34:19'),
(1350, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:34:20'),
(1351, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:35:39'),
(1352, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:35:39'),
(1353, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:36:15'),
(1354, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:36:15'),
(1355, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:36:50'),
(1356, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:36:50'),
(1357, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:36:53'),
(1358, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:36:53'),
(1359, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:36:55'),
(1360, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:36:55'),
(1361, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:01'),
(1362, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:01'),
(1363, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:08'),
(1364, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:08'),
(1365, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:10'),
(1366, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:10'),
(1367, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:31'),
(1368, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:31'),
(1369, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:54'),
(1370, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:54'),
(1371, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:37:57'),
(1372, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:40:45'),
(1373, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:41:14'),
(1374, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:41:56'),
(1375, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:42:00'),
(1376, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:42:16'),
(1377, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:42:27'),
(1378, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:45:31'),
(1379, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:46:56'),
(1380, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:47:26'),
(1381, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:47:28'),
(1382, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:47:28'),
(1383, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:47:41'),
(1384, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:47:41'),
(1385, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:48:00'),
(1386, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:48:00'),
(1387, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:48:15'),
(1388, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:48:15'),
(1389, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:48:16'),
(1390, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:48:16'),
(1391, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:48:46'),
(1392, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:48:46'),
(1393, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:48:59'),
(1394, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 14:48:59'),
(1395, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:49:01'),
(1396, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 14:49:01'),
(1397, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:49:03'),
(1398, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 14:49:03'),
(1399, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:49:06'),
(1400, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 14:49:06'),
(1401, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:49:08'),
(1402, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:49:09'),
(1403, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:49:09'),
(1404, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:49:11'),
(1405, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 14:49:11'),
(1406, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 14:49:54'),
(1407, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 14:49:54'),
(1408, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 14:50:02'),
(1409, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 14:50:02'),
(1410, 'select * from `df` where `id`=\'\' ', '2018-10-31 14:50:50'),
(1411, 'select * from `roles` where `id`=\'\' ', '2018-10-31 14:50:50'),
(1412, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 14:50:53'),
(1413, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 14:50:53'),
(1414, 'select * from `df` where `id`=\'\' ', '2018-10-31 14:50:56'),
(1415, 'select * from `roles` where `id`=\'\' ', '2018-10-31 14:50:56'),
(1416, 'select * from `df` where `id`=\'\' ', '2018-10-31 14:51:48'),
(1417, 'select * from `roles` where `id`=\'\' ', '2018-10-31 14:51:48'),
(1418, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:51:54'),
(1419, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 14:51:54'),
(1420, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:52:00'),
(1421, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:52:00'),
(1422, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:52:00'),
(1423, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:52:13'),
(1424, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:52:13'),
(1425, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:52:13'),
(1426, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:53:18'),
(1427, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:53:19'),
(1428, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:53:19'),
(1429, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:53:23'),
(1430, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:53:24'),
(1431, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:53:24'),
(1432, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:56:01'),
(1433, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:56:01'),
(1434, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:56:01'),
(1435, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:56:31'),
(1436, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:56:31'),
(1437, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:56:48'),
(1438, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:56:48'),
(1439, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:57:13'),
(1440, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:57:13'),
(1441, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:57:43'),
(1442, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:57:43'),
(1443, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:57:48'),
(1444, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:57:48'),
(1445, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:58:10'),
(1446, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:58:10'),
(1447, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:58:29'),
(1448, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:58:29'),
(1449, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:58:51'),
(1450, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:58:51'),
(1451, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:59:23'),
(1452, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:59:23'),
(1453, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:59:33'),
(1454, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 14:59:33'),
(1455, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:01:28'),
(1456, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:01:28'),
(1457, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:01:51'),
(1458, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:01:51'),
(1459, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:02:08'),
(1460, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:02:08'),
(1461, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:02:16'),
(1462, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:02:16'),
(1463, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:02:49'),
(1464, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:02:49'),
(1465, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:03:10'),
(1466, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:03:10'),
(1467, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:03:36'),
(1468, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:03:36'),
(1469, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:03:44'),
(1470, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:03:44'),
(1471, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:04:11'),
(1472, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:04:11'),
(1473, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:04:15'),
(1474, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:04:15'),
(1475, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:04:38'),
(1476, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:04:38'),
(1477, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:04:45'),
(1478, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:04:45'),
(1479, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:04:48'),
(1480, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:04:48'),
(1481, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:06:08'),
(1482, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:06:08'),
(1483, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:06:15'),
(1484, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:06:15'),
(1485, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:06:22'),
(1486, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:06:22'),
(1487, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:08:33'),
(1488, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:08:33'),
(1489, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:09:38'),
(1490, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:09:38'),
(1491, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:10:15'),
(1492, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:10:15'),
(1493, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:10:38'),
(1494, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:10:38'),
(1495, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:11:37'),
(1496, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:11:37'),
(1497, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:11:50'),
(1498, 'select * from `df` where `id`=\'1\' ', '2018-10-31 15:11:50'),
(1499, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:11:51'),
(1500, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:11:58'),
(1501, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:11:58'),
(1502, 'select * from `menu` where `parent`=\'51\' order by orderNum asc', '2018-10-31 15:12:00'),
(1503, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:12:00'),
(1504, 'select * from `menu` where `id`=\'51\' ', '2018-10-31 15:12:00'),
(1505, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:12:03'),
(1506, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:12:03'),
(1507, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:12:05'),
(1508, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:12:05'),
(1509, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:12:05'),
(1510, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:13:35'),
(1511, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:13:35'),
(1512, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:13:54'),
(1513, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:13:54'),
(1514, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:14:00'),
(1515, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:14:00'),
(1516, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:14:28'),
(1517, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:14:28'),
(1518, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:15:59'),
(1519, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:15:59'),
(1520, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:16:11'),
(1521, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:16:11'),
(1522, 'select * from `menu` where `id`=\'\' ', '2018-10-31 15:17:25'),
(1523, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:17:25'),
(1524, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:17:25'),
(1525, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:17:35'),
(1526, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:17:35'),
(1527, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:17:35'),
(1528, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:17:36'),
(1529, 'select * from `df` where `id`=\'1\' ', '2018-10-31 15:17:36'),
(1530, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:17:36'),
(1531, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:18:34'),
(1532, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:18:34'),
(1533, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:18:37'),
(1534, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:18:37'),
(1535, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:18:37'),
(1536, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:18:51'),
(1537, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181031123411.JPG\',`title`=\'爱\',`description`=\'\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=Love&para=0\' where id=2', '2018-10-31 15:18:51'),
(1538, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:18:53'),
(1539, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:18:53'),
(1540, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:18:56'),
(1541, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:18:56'),
(1542, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:26:30'),
(1543, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:26:30'),
(1544, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:32:48'),
(1545, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:32:48'),
(1546, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:32:51'),
(1547, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:32:51'),
(1548, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:32:51'),
(1549, 'select * from `menu` where `id`=\'\' ', '2018-10-31 15:32:53'),
(1550, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:32:53'),
(1551, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:32:53'),
(1552, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:33:33'),
(1553, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:33:33'),
(1554, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:33:33'),
(1555, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:33:38'),
(1556, 'select * from `df` where `id`=\'1\' ', '2018-10-31 15:33:38'),
(1557, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:33:38'),
(1558, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:35:37'),
(1559, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:35:39'),
(1560, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:35:39'),
(1561, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:36:50'),
(1562, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:36:52'),
(1563, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:36:52'),
(1564, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:04'),
(1565, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:37:05'),
(1566, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:05'),
(1567, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:08'),
(1568, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:37:09'),
(1569, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:09'),
(1570, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:13'),
(1571, 'select * from `df` where `id`=\'1\' ', '2018-10-31 15:37:13'),
(1572, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:13'),
(1573, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:20'),
(1574, 'select * from `df` where `id`=\'1\' ', '2018-10-31 15:37:20'),
(1575, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:20'),
(1576, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:22'),
(1577, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:37:23'),
(1578, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:23'),
(1579, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:52'),
(1580, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:37:53'),
(1581, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:37:53'),
(1582, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:38:24'),
(1583, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:38:26'),
(1584, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:38:26'),
(1585, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:38:32'),
(1586, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:38:32'),
(1587, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:38:35'),
(1588, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:38:35'),
(1589, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:38:35'),
(1590, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:39:24'),
(1591, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:39:25'),
(1592, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:39:25'),
(1593, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:39:36'),
(1594, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:40:02'),
(1595, 'select * from `iFrame_link` where `id`=\'1\' ', '2018-10-31 15:40:04'),
(1596, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:40:04'),
(1597, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:40:06'),
(1598, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:40:13'),
(1599, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:40:13'),
(1600, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:40:20'),
(1601, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 15:40:23'),
(1602, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:40:23'),
(1603, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:40:25'),
(1604, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 15:41:45'),
(1605, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:41:45'),
(1606, 'update `iFrame_link` set `title`=\'love\',`url`=\'http://h5.dfer.top/love/3.html\',`type`=\'0\' where id=2', '2018-10-31 15:41:49'),
(1607, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:41:50'),
(1608, 'select * from `iFrame_link` where `id`=\'1\' ', '2018-10-31 15:41:55'),
(1609, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:41:55'),
(1610, 'update `iFrame_link` set `title`=\'谷雨网络	\',`url`=\'http://www.grain-rain.com\',`type`=\'0\' where id=1', '2018-10-31 15:41:57'),
(1611, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:41:58'),
(1612, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:43:16'),
(1613, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:45:11'),
(1614, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 15:45:13'),
(1615, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:45:16'),
(1616, 'select * from `iFrame_link` where `id`=\'1\' ', '2018-10-31 15:45:17'),
(1617, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:45:20'),
(1618, 'select * from `iFrame_link` where `id`=\'1\' ', '2018-10-31 15:45:21'),
(1619, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:45:21'),
(1620, 'update `iFrame_link` set `title`=\'谷雨网络	\',`url`=\'http://www.grain-rain.com\',`type`=\'1\' where id=1', '2018-10-31 15:45:23'),
(1621, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:45:24'),
(1622, 'select * from `iFrame_link` where `id`=\'1\' ', '2018-10-31 15:45:26'),
(1623, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:45:28'),
(1624, 'select * from `iFrame_link` where `id`=\'1\' ', '2018-10-31 15:45:30'),
(1625, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:47:46'),
(1626, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:47:46'),
(1627, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:47:50'),
(1628, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:47:50'),
(1629, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:47:52'),
(1630, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:47:52'),
(1631, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:47:58'),
(1632, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:47:58'),
(1633, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:48:02'),
(1634, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:02'),
(1635, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:48:02'),
(1636, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:08'),
(1637, 'select * from `df` where `id`=\'1\' ', '2018-10-31 15:48:08'),
(1638, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:09'),
(1639, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:48:16');
INSERT INTO `logs` (`Id`, `str`, `time`) VALUES
(1640, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:16'),
(1641, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:48:18'),
(1642, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:18'),
(1643, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:48:18'),
(1644, 'select * from `menu` where `id`=\'75\' ', '2018-10-31 15:48:21'),
(1645, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:21'),
(1646, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:48:21'),
(1647, 'update `menu` set `parent`=\'74\',`title`=\'url管理\',`src`=\'iframe%2Fhome%2F\',`orderNum`=\'0\',`type`=\'home\' where id=75', '2018-10-31 15:48:30'),
(1648, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:48:30'),
(1649, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:30'),
(1650, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:48:30'),
(1651, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:31'),
(1652, 'select * from `df` where `id`=\'1\' ', '2018-10-31 15:48:31'),
(1653, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:32'),
(1654, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 15:48:33'),
(1655, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-10-31 15:48:39'),
(1656, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:39'),
(1657, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:48:42'),
(1658, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:42'),
(1659, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:48:42'),
(1660, 'select * from `menu` where `id`=\'75\' ', '2018-10-31 15:48:50'),
(1661, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:50'),
(1662, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:48:50'),
(1663, 'update `menu` set `parent`=\'74\',`title`=\'url管理\',`src`=\'iframe%2Fhome%2FiFrame_link\',`orderNum`=\'0\',`type`=\'home\' where id=75', '2018-10-31 15:48:52'),
(1664, 'select * from `menu` where `parent`=\'74\' order by orderNum asc', '2018-10-31 15:48:53'),
(1665, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:53'),
(1666, 'select * from `menu` where `id`=\'74\' ', '2018-10-31 15:48:53'),
(1667, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:53'),
(1668, 'select * from `df` where `id`=\'1\' ', '2018-10-31 15:48:53'),
(1669, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:54'),
(1670, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:48:56'),
(1671, 'select * from `iFrame_link` where `id`=\'1\' ', '2018-10-31 15:48:57'),
(1672, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:49:00'),
(1673, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 15:49:01'),
(1674, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:49:04'),
(1675, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:49:29'),
(1676, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:53:17'),
(1677, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:54:44'),
(1678, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 15:54:58'),
(1679, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 15:55:16'),
(1680, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:55:22'),
(1681, 'update `df` set `lastlogintime`=\'2018-10-31 15:55:22\' where id=1', '2018-10-31 15:55:22'),
(1682, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:55:22'),
(1683, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:55:36'),
(1684, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:55:51'),
(1685, 'select * from `df` where `id`=\'1\' ', '2018-10-31 15:55:51'),
(1686, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:55:53'),
(1687, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:56:06'),
(1688, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:56:06'),
(1689, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:56:08'),
(1690, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:56:08'),
(1691, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:56:08'),
(1692, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:56:16'),
(1693, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181031123411.JPG\',`title`=\'爱\',`description`=\'\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=2\' where id=2', '2018-10-31 15:56:16'),
(1694, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:56:18'),
(1695, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:56:18'),
(1696, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:56:20'),
(1697, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:56:20'),
(1698, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:58:04'),
(1699, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:58:04'),
(1700, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:58:26'),
(1701, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:58:26'),
(1702, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 15:58:49'),
(1703, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:59:26'),
(1704, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 15:59:26'),
(1705, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:59:30'),
(1706, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:59:30'),
(1707, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 15:59:34'),
(1708, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 15:59:34'),
(1709, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 15:59:43'),
(1710, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 15:59:43'),
(1711, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 15:59:48'),
(1712, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 15:59:57'),
(1713, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:00:17'),
(1714, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:00:17'),
(1715, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:01:00'),
(1716, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:01:00'),
(1717, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:01:19'),
(1718, 'select * from `df` where `id`=\'1\' ', '2018-10-31 16:01:19'),
(1719, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:01:20'),
(1720, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:01:36'),
(1721, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:01:36'),
(1722, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:01:44'),
(1723, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:01:44'),
(1724, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:01:46'),
(1725, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:01:46'),
(1726, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:01:54'),
(1727, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:01:54'),
(1728, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:02:17'),
(1729, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:02:17'),
(1730, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:02:27'),
(1731, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:02:27'),
(1732, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:02:29'),
(1733, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:02:29'),
(1734, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:02:29'),
(1735, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:03:01'),
(1736, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:03:01'),
(1737, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:03:08'),
(1738, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:03:08'),
(1739, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:03:08'),
(1740, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:03:23'),
(1741, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181031123411.JPG\',`title`=\'爱\',`description`=\'Love\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=2\' where id=2', '2018-10-31 16:03:23'),
(1742, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:03:26'),
(1743, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:03:26'),
(1744, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:03:29'),
(1745, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:03:29'),
(1746, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:03:42'),
(1747, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:03:42'),
(1748, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:03:54'),
(1749, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:03:54'),
(1750, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:04:16'),
(1751, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:04:16'),
(1752, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:04:25'),
(1753, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:04:25'),
(1754, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:04:25'),
(1755, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:04:32'),
(1756, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181031123411.JPG\',`title`=\'爱\',`description`=\'Love\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=2\' where id=2', '2018-10-31 16:04:32'),
(1757, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:04:34'),
(1758, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:04:34'),
(1759, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:04:34'),
(1760, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:04:34'),
(1761, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:04:34'),
(1762, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:04:34'),
(1763, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:04:35'),
(1764, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:04:35'),
(1765, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:04:43'),
(1766, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:04:43'),
(1767, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:04:48'),
(1768, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:04:48'),
(1769, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:04:55'),
(1770, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:04:55'),
(1771, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:05:14'),
(1772, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:05:14'),
(1773, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:05:47'),
(1774, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:05:47'),
(1775, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:05:47'),
(1776, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:07:13'),
(1777, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:07:13'),
(1778, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:07:23'),
(1779, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:07:23'),
(1780, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:07:26'),
(1781, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 16:07:26'),
(1782, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:07:26'),
(1783, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:07:29'),
(1784, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:07:29'),
(1785, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:07:45'),
(1786, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 16:07:45'),
(1787, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:07:54'),
(1788, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:08:11'),
(1789, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 16:08:11'),
(1790, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:08:11'),
(1791, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:08:15'),
(1792, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:08:15'),
(1793, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:08:18'),
(1794, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 16:08:18'),
(1795, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:08:18'),
(1796, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:08:33'),
(1797, 'update `wx_share` set `imgUrl`=\'upload/file/file_20180318032733.jpg\',`title`=\'谷雨网络	\',`description`=\'公司\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=1\' where id=1', '2018-10-31 16:08:33'),
(1798, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:08:34'),
(1799, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:08:34'),
(1800, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:08:42'),
(1801, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 16:08:42'),
(1802, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:08:45'),
(1803, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 16:08:45'),
(1804, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:09:02'),
(1805, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:09:02'),
(1806, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:09:20'),
(1807, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:09:32'),
(1808, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:09:42'),
(1809, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:09:50'),
(1810, 'select * from `iFrame_link` where `id`=\'1\' ', '2018-10-31 16:09:57'),
(1811, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:10:04'),
(1812, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:10:04'),
(1813, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:10:04'),
(1814, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:10:09'),
(1815, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181031123411.JPG\',`title`=\'❤️\',`description`=\'Love\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=2\' where id=2', '2018-10-31 16:10:09'),
(1816, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:10:11'),
(1817, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:10:11'),
(1818, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:10:13'),
(1819, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 16:10:13'),
(1820, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:10:16'),
(1821, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:10:16'),
(1822, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:11:00'),
(1823, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:11:00'),
(1824, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:11:11'),
(1825, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:11:14'),
(1826, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 16:11:14'),
(1827, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:11:21'),
(1828, 'select * from `wx_share` where `id`=\'1\' ', '2018-10-31 16:11:21'),
(1829, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:11:32'),
(1830, 'select * from `wx_share` where `id`=\'2\' ', '2018-10-31 16:11:32'),
(1831, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:11:43'),
(1832, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:11:48'),
(1833, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:12:23'),
(1834, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:12:26'),
(1835, 'select * from `iFrame_link` where `id`=\'1\' ', '2018-10-31 16:12:27'),
(1836, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:12:38'),
(1837, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:12:43'),
(1838, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:13:11'),
(1839, 'select * from `iFrame_link` where `id`=\'2\' ', '2018-10-31 16:15:58'),
(1840, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:16:35'),
(1841, 'select * from `wx_share` where `id`=\'0\' ', '2018-10-31 16:16:35'),
(1842, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:16:35'),
(1843, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:18:45'),
(1844, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-10-31 16:18:52'),
(1845, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:18:52'),
(1846, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:19:10'),
(1847, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:20:07'),
(1848, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:20:09'),
(1849, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:20:10'),
(1850, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:20:10'),
(1851, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:20:13'),
(1852, 'select * from `wx_share` where `id`=\'3\' ', '2018-10-31 16:20:13'),
(1853, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:20:13'),
(1854, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:20:18'),
(1855, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:20:21'),
(1856, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181031042019.JPG\',`title`=\'漩涡\',`description`=\'\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=3\' where id=3', '2018-10-31 16:20:21'),
(1857, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:20:22'),
(1858, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:20:22'),
(1859, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:20:42'),
(1860, 'select * from `wx_share` where `id`=\'3\' ', '2018-10-31 16:20:42'),
(1861, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:20:51'),
(1862, 'select * from `wx_share` where `id`=\'3\' ', '2018-10-31 16:20:51'),
(1863, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:21:06'),
(1864, 'select * from `wx_share` where `id`=\'3\' ', '2018-10-31 16:21:06'),
(1865, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:21:06'),
(1866, 'select * from `iFrame_link` where `id`=\'3\' ', '2018-10-31 16:21:30'),
(1867, 'select * from `wx` where `id`=\'2\' ', '2018-10-31 16:21:44'),
(1868, 'select * from `wx_share` where `id`=\'3\' ', '2018-10-31 16:21:44'),
(1869, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:21:55'),
(1870, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181031042019.JPG\',`title`=\'漩涡\',`description`=\'旋转的世界\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=3\' where id=3', '2018-10-31 16:21:55'),
(1871, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:21:56'),
(1872, 'select * from `df` where `nm`=\'df\' ', '2018-10-31 16:21:56'),
(1873, 'select * from `iFrame_link` where `id`=\'3\' ', '2018-10-31 16:21:58'),
(1874, 'select * from `wx` where `id`=\'1\' ', '2018-10-31 16:22:25'),
(1875, 'select * from `wx_share` where `id`=\'3\' ', '2018-10-31 16:22:25'),
(1876, 'select * from `iFrame_link` where `id`=\'3\' ', '2018-10-31 16:22:42'),
(1877, 'select * from `iFrame_link` where `id`=\'3\' ', '2018-10-31 16:24:37'),
(1878, 'select * from shopshow order by id desc', '2018-10-31 16:26:55'),
(1879, 'select * from `iFrame_link` where `id`=\'3\' ', '2018-10-31 16:27:31'),
(1880, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:17:23'),
(1881, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:17:28'),
(1882, 'select * from `sp_club_user` where `openid`=\'opTae4iGTcTN9jX1kU1rqc194V1A\' ', '2018-10-31 17:17:35'),
(1883, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:17:48'),
(1884, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:17:52'),
(1885, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:17:54'),
(1886, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:18:00'),
(1887, 'select * from sp_forum_about where id=\'1\'', '2018-10-31 17:18:27'),
(1888, 'select * from sp_forum_about where id=\'1\'', '2018-10-31 17:18:29'),
(1889, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:18:32'),
(1890, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=21 order by a.time desc', '2018-10-31 17:18:36'),
(1891, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:18:38'),
(1892, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:18:40'),
(1893, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:18:45'),
(1894, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:18:50'),
(1895, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=20 order by a.time desc', '2018-10-31 17:18:52'),
(1896, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=20 order by a.time desc', '2018-10-31 17:18:58'),
(1897, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:19:01'),
(1898, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:19:04'),
(1899, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:19:30'),
(1900, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:19:31'),
(1901, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:19:33'),
(1902, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:19:35'),
(1903, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:19:36'),
(1904, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:19:38'),
(1905, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:19:42'),
(1906, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:19:44'),
(1907, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:20:10'),
(1908, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=23 order by a.time desc', '2018-10-31 17:20:12'),
(1909, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:23:23'),
(1910, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:23:31'),
(1911, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=23 order by a.time desc', '2018-10-31 17:23:33'),
(1912, 'select * from sp_club_music order by id desc', '2018-10-31 17:27:20'),
(1913, 'select * from `sp_club_user` where `openid`=\'undefined\' ', '2018-10-31 17:27:24'),
(1914, 'select * from tourshow order by id desc', '2018-10-31 17:27:30'),
(1915, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:27:36'),
(1916, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=23 order by a.time desc', '2018-10-31 17:27:42'),
(1917, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=23 order by a.time desc', '2018-10-31 17:28:01'),
(1918, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=23 order by a.time desc', '2018-10-31 17:28:49'),
(1919, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:28:52'),
(1920, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:28:54'),
(1921, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:29:00'),
(1922, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:29:05'),
(1923, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=23 order by a.time desc', '2018-10-31 17:29:10'),
(1924, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:30:12'),
(1925, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:30:18'),
(1926, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=23 order by a.time desc', '2018-10-31 17:30:19'),
(1927, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:30:26'),
(1928, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=20 order by a.time desc', '2018-10-31 17:30:28'),
(1929, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:31:21'),
(1930, 'select * from sp_club_music order by id desc', '2018-10-31 17:35:29'),
(1931, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-10-31 17:36:46'),
(1932, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-10-31 17:36:57'),
(1933, 'select * from `sp_club_user` where `openid`=\'opTae4gYR2xeR0urkKS5yys4Pr3g\' ', '2018-10-31 17:37:04'),
(1934, 'select * from sp_club_music order by id desc', '2018-11-01 11:47:50'),
(1935, 'select * from sp_club_music order by id desc', '2018-11-01 11:47:59'),
(1936, 'select * from `df` where `id`=\'\' ', '2018-11-01 15:13:40'),
(1937, 'select * from `roles` where `id`=\'\' ', '2018-11-01 15:13:40'),
(1938, 'select * from shopshow order by id desc', '2018-11-01 16:10:23'),
(1939, 'select * from `df` where `id`=\'\' ', '2018-11-02 00:13:20'),
(1940, 'select * from `roles` where `id`=\'\' ', '2018-11-02 00:13:20'),
(1941, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:13:26'),
(1942, 'update `df` set `lastlogintime`=\'2018-11-02 00:13:26\' where id=1', '2018-11-02 00:13:26'),
(1943, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:13:26'),
(1944, 'select * from `df` where `id`=\'1\' ', '2018-11-02 00:13:26'),
(1945, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:13:27'),
(1946, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:13:31'),
(1947, 'select * from `notepad` where `id`=\'0\' ', '2018-11-02 00:13:33'),
(1948, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:13:33'),
(1949, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:15:37'),
(1950, 'select * from `notepad` where `id`=\'14\' ', '2018-11-02 00:15:39'),
(1951, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:15:39'),
(1952, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:15:51'),
(1953, 'select * from `notepad` where `id`=\'14\' ', '2018-11-02 00:15:53'),
(1954, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:15:53'),
(1955, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 00:16:05'),
(1956, 'select * from `df` where `id`=\'\' ', '2018-11-02 05:13:07'),
(1957, 'select * from `roles` where `id`=\'\' ', '2018-11-02 05:13:07'),
(1958, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 05:13:18'),
(1959, 'update `df` set `lastlogintime`=\'2018-11-02 05:13:18\' where id=1', '2018-11-02 05:13:18'),
(1960, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 05:13:18'),
(1961, 'select * from `df` where `id`=\'1\' ', '2018-11-02 05:13:18'),
(1962, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 05:13:20'),
(1963, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 05:13:32'),
(1964, 'select * from `notepad` where `id`=\'0\' ', '2018-11-02 05:13:36'),
(1965, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 05:13:36'),
(1966, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 05:16:17'),
(1967, 'select * from `notepad` where `id`=\'15\' ', '2018-11-02 05:16:19'),
(1968, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 05:16:19'),
(1969, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 05:16:26'),
(1970, 'select * from `df` where `id`=\'1\' ', '2018-11-02 05:16:26'),
(1971, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 05:16:26'),
(1972, 'select * from `df` where `id`=\'\' ', '2018-11-02 16:17:45'),
(1973, 'select * from `roles` where `id`=\'\' ', '2018-11-02 16:17:45'),
(1974, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:17:48'),
(1975, 'update `df` set `lastlogintime`=\'2018-11-02 16:17:48\' where id=1', '2018-11-02 16:17:48'),
(1976, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:17:48'),
(1977, 'select * from `df` where `id`=\'1\' ', '2018-11-02 16:17:48'),
(1978, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:17:49'),
(1979, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:17:53'),
(1980, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:17:54'),
(1981, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:17:54'),
(1982, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:17:56'),
(1983, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:17:56'),
(1984, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:18:02'),
(1985, 'select * from `wx_share` where `id`=\'0\' ', '2018-11-02 16:18:02'),
(1986, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:18:02'),
(1987, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:57:51'),
(1988, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:57:55'),
(1989, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:57:57'),
(1990, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:57:57'),
(1991, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:57:59'),
(1992, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 16:57:59'),
(1993, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:58:09'),
(1994, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:58:09'),
(1995, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:58:53'),
(1996, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 16:58:53'),
(1997, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:59:07'),
(1998, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:59:07'),
(1999, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:59:08'),
(2000, 'select * from `df` where `id`=\'1\' ', '2018-11-02 16:59:08'),
(2001, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:59:08'),
(2002, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 16:59:16'),
(2003, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 16:59:16'),
(2004, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:59:25'),
(2005, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 16:59:25'),
(2006, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 16:59:40'),
(2007, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 16:59:40'),
(2008, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 16:59:52'),
(2009, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 16:59:52'),
(2010, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 16:59:57'),
(2011, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 16:59:57'),
(2012, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:00:06'),
(2013, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:00:06'),
(2014, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:00:06'),
(2015, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:00:08'),
(2016, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:00:08'),
(2017, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:00:08'),
(2018, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:00:09'),
(2019, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:00:09'),
(2020, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:00:09'),
(2021, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:00:09'),
(2022, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:00:09'),
(2023, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:00:09'),
(2024, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:00:09'),
(2025, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:00:09'),
(2026, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:00:09'),
(2027, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:00:10'),
(2028, 'select * from `iFrame_link` where `id`=\'3\' ', '2018-11-02 17:00:17'),
(2029, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:00:10'),
(2030, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 17:00:24'),
(2031, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:00:24'),
(2032, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:00:39'),
(2033, 'select * from `wx_share` where `id`=\'3\' ', '2018-11-02 17:00:39'),
(2034, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:00:48'),
(2035, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:00:48'),
(2036, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:00:53'),
(2037, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:00:53'),
(2038, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:00:53'),
(2039, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:03'),
(2040, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181102045752.png\',`title`=\'碟\',`description`=\'\',`link`=\'http://h5.dfer.top/index.php?A=homepage&c=love&a=index&para=0#\' where id=4', '2018-11-02 17:01:03'),
(2041, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:06'),
(2042, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:06'),
(2043, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:07'),
(2044, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:07'),
(2045, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:08'),
(2046, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:12'),
(2047, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:08'),
(2048, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:09'),
(2049, 'select * from `iFrame_link` where `id`=\'3\' ', '2018-11-02 17:01:17'),
(2050, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:09'),
(2051, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:09'),
(2052, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:01:12'),
(2053, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:27'),
(2054, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:09'),
(2055, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:10'),
(2056, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:10'),
(2057, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:10'),
(2058, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:10'),
(2059, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:11'),
(2060, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:11'),
(2061, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:12'),
(2062, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:01:27'),
(2063, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:12'),
(2064, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:13'),
(2065, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:13'),
(2066, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:14'),
(2067, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:14'),
(2068, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:15'),
(2069, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 17:01:38'),
(2070, 'select * from `wx_share` where `id`=\'3\' ', '2018-11-02 17:01:38'),
(2071, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:15'),
(2072, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:16'),
(2073, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:16'),
(2074, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:17'),
(2075, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:17'),
(2076, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:18'),
(2077, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:18'),
(2078, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:19'),
(2079, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:19'),
(2080, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:20'),
(2081, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:20'),
(2082, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:21'),
(2083, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:21'),
(2084, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:22'),
(2085, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:22'),
(2086, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:23'),
(2087, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:23'),
(2088, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:24'),
(2089, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:24'),
(2090, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:25'),
(2091, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:25'),
(2092, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:26'),
(2093, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:26'),
(2094, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:27'),
(2095, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:27'),
(2096, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:28'),
(2097, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:28'),
(2098, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:29'),
(2099, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:29'),
(2100, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:30'),
(2101, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:30'),
(2102, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:31'),
(2103, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:31'),
(2104, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:32'),
(2105, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:32'),
(2106, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:33'),
(2107, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:33'),
(2108, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:34'),
(2109, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:34'),
(2110, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:35'),
(2111, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:35'),
(2112, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:36'),
(2113, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:36'),
(2114, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:37'),
(2115, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:37'),
(2116, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:37'),
(2117, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:37'),
(2118, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:38'),
(2119, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:38'),
(2120, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:38'),
(2121, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:38'),
(2122, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:39'),
(2123, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:39'),
(2124, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:40'),
(2125, 'select * from `df` where `id`=\'1\' ', '2018-11-02 17:01:40'),
(2126, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:40'),
(2127, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:40'),
(2128, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:42'),
(2129, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:42'),
(2130, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:43'),
(2131, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:43'),
(2132, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:43'),
(2133, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:43'),
(2134, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:45'),
(2135, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:45'),
(2136, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:47'),
(2137, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:47'),
(2138, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:49'),
(2139, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:49'),
(2140, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:51'),
(2141, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:51'),
(2142, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:01:55'),
(2143, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:55'),
(2144, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:01:59'),
(2145, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:09'),
(2146, 'select * from `df` where `id`=\'1\' ', '2018-11-02 17:02:09'),
(2147, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:10'),
(2148, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:14'),
(2149, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:14'),
(2150, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:20'),
(2151, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:20'),
(2152, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:20'),
(2153, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:23'),
(2154, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:23'),
(2155, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:23'),
(2156, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:24'),
(2157, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:24'),
(2158, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:24'),
(2159, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:25'),
(2160, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:25'),
(2161, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:25'),
(2162, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:28'),
(2163, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:28'),
(2164, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:28'),
(2165, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:28'),
(2166, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:28'),
(2167, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:28'),
(2168, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:28'),
(2169, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:28'),
(2170, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:28'),
(2171, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:29'),
(2172, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:41'),
(2173, 'select * from `wx_share` where `id`=\'3\' ', '2018-11-02 17:02:41'),
(2174, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:29'),
(2175, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:29'),
(2176, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:29'),
(2177, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:29'),
(2178, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:29'),
(2179, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:29'),
(2180, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:29'),
(2181, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:29'),
(2182, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:30'),
(2183, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:02:30'),
(2184, 'select * from `iFrame_link` where `id`=\'3\' ', '2018-11-02 17:02:51'),
(2185, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:02:52'),
(2186, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:02:52'),
(2187, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:03:00'),
(2188, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:03:00'),
(2189, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:03:00'),
(2190, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:03:12'),
(2191, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181102045752.png\',`title`=\'梦\',`description`=\'蝶\',`link`=\'http://h5.dfer.top/index.php?A=homepage&c=love&a=index&para=0#\' where id=4', '2018-11-02 17:03:12'),
(2192, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:03:14'),
(2193, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:03:14'),
(2194, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:03:19'),
(2195, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:03:19'),
(2196, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:03:28'),
(2197, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:03:28'),
(2198, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:03:35'),
(2199, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:03:35'),
(2200, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:03:44'),
(2201, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:03:44'),
(2202, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:03:55'),
(2203, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:03:55'),
(2204, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:03:55'),
(2205, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:04:30'),
(2206, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:04:32'),
(2207, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181102050431.jpg\',`title`=\'梦\',`description`=\'蝶\',`link`=\'http://h5.dfer.top/index.php?A=homepage&c=love&a=index&para=0#\' where id=4', '2018-11-02 17:04:32'),
(2208, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:04:34'),
(2209, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:04:34'),
(2210, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:04:36'),
(2211, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:04:36'),
(2212, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:04:43'),
(2213, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:04:43'),
(2214, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:04:54'),
(2215, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:04:54'),
(2216, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:04:57'),
(2217, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:04:57'),
(2218, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:04:57'),
(2219, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:05:03'),
(2220, 'select * from `iFrame_link` where `id`=\'0\' ', '2018-11-02 17:05:04'),
(2221, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:05:04'),
(2222, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:05:11'),
(2223, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:05:24'),
(2224, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181102050431.jpg\',`title`=\'梦\',`description`=\'蝶\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=4\' where id=4', '2018-11-02 17:05:24'),
(2225, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:05:25'),
(2226, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181102050431.jpg\',`title`=\'梦\',`description`=\'蝶\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=4\' where id=4', '2018-11-02 17:05:25'),
(2227, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:05:27'),
(2228, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:05:27'),
(2229, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:05:28'),
(2230, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:05:28'),
(2231, 'select * from `iFrame_link` where `id`=\'4\' ', '2018-11-02 17:05:44'),
(2232, 'select * from `iFrame_link` where `id`=\'4\' ', '2018-11-02 17:06:38'),
(2233, 'select * from `df` where `id`=\'\' ', '2018-11-02 17:18:13'),
(2234, 'select * from `roles` where `id`=\'\' ', '2018-11-02 17:18:13'),
(2235, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:18:16'),
(2236, 'update `df` set `lastlogintime`=\'2018-11-02 17:18:16\' where id=1', '2018-11-02 17:18:16'),
(2237, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:18:16'),
(2238, 'select * from `df` where `id`=\'1\' ', '2018-11-02 17:18:16'),
(2239, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:18:17'),
(2240, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 17:18:20'),
(2241, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:18:20'),
(2242, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 17:18:22'),
(2243, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:18:22'),
(2244, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:18:22'),
(2245, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 17:18:29'),
(2246, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 17:18:31'),
(2247, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181102051830.png\',`title`=\'梦\',`description`=\'蝶\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=4\' where id=4', '2018-11-02 17:18:31');
INSERT INTO `logs` (`Id`, `str`, `time`) VALUES
(2248, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 17:18:33'),
(2249, 'update `wx_share` set `imgUrl`=\'upload/file/file_20181102051830.png\',`title`=\'梦\',`description`=\'蝶\',`link`=\'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=4\' where id=4', '2018-11-02 17:18:33'),
(2250, 'select * from `wx` where `id`=\'2\' ', '2018-11-02 17:18:35'),
(2251, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:18:35'),
(2252, 'select * from `wx` where `id`=\'1\' ', '2018-11-02 17:18:38'),
(2253, 'select * from `wx_share` where `id`=\'4\' ', '2018-11-02 17:18:38'),
(2254, 'select * from `iFrame_link` where `id`=\'4\' ', '2018-11-02 17:18:54'),
(2255, 'select * from `iFrame_link` where `id`=\'4\' ', '2018-11-02 17:19:00'),
(2256, 'select * from `iFrame_link` where `id`=\'4\' ', '2018-11-02 17:19:54'),
(2257, 'select * from `menu` where `parent`=\'0\' order by orderNum asc', '2018-11-02 17:20:00'),
(2258, 'select * from `df` where `nm`=\'df\' ', '2018-11-02 17:20:00'),
(2259, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-11-03 13:00:26'),
(2260, 'select * from shopshow order by id desc', '2018-11-03 13:00:31'),
(2261, 'select * from shopshow order by id desc', '2018-11-03 13:00:43'),
(2262, 'select * from shopshow order by id desc', '2018-11-03 13:00:45'),
(2263, 'select * from tourshow order by id desc', '2018-11-03 13:01:00'),
(2264, 'select * from sp_club_music order by id desc', '2018-11-03 13:01:25'),
(2265, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-03 15:07:05'),
(2266, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-11-03 18:46:23'),
(2267, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-03 23:01:03'),
(2268, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-11-03 23:30:50'),
(2269, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-11-04 12:21:44'),
(2270, 'SELECT a.content,a.time,b.name,b.pic from sp_forum_reply a LEFT JOIN sp_club_user b ON a.userId=b.openid where Pid=22 order by a.time desc', '2018-11-04 12:23:18'),
(2271, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-04 15:45:53'),
(2272, 'select * from tourshow order by id desc', '2018-11-05 16:10:40'),
(2273, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-05 18:30:51'),
(2274, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-08 11:49:21'),
(2275, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-10 20:51:39'),
(2276, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:29:26'),
(2277, 'Table \'df_db.ads_dt\' doesn\'t exist', '2018-11-13 13:46:30'),
(2278, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:55:10'),
(2279, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:55:28'),
(2280, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:55:31'),
(2281, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:56:04'),
(2282, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:56:06'),
(2283, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:56:23'),
(2284, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:56:43'),
(2285, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:57:47'),
(2286, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:57:50'),
(2287, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:57:52'),
(2288, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:59:13'),
(2289, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:59:40'),
(2290, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 13:59:43'),
(2291, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 14:00:02'),
(2292, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 14:00:06'),
(2293, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-13 14:00:53'),
(2294, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-11-13 14:22:09'),
(2295, 'notify_url：{\"gmt_create\":\"2018-11-14 20:38:58\",\"charset\":\"UTF-8\",\"gmt_payment\":\"2018-11-14 20:40:17\",\"notify_time\":\"2018-11-14 20:40:17\",\"subject\":\"\\u6d4b\\u8bd5\",\"sign\":\"dZssWGscKO1JwlNkz1\\/siPd2iHyaQSxPNkdIiGJOc2NolpSSP9v9RC543EtPdM3Lo\\/TxZMGUlBpZySbiqACIMgk4z3hnqPGpP8BL27rqcMVfvy4WkRVz1K2VADBFVeYPRXL7DbMsjMHXX5cCxwsNqv6TdEVlm0PjfRR29lACSIwb0w12YGLLvbCb8vWTzXYNfPQsBWse2xV6vbMCteSc\\/pzgrMaDCECN47VlOCBKFbnUwOBK2h9RR24IY53FjoMsMxHYtpEOo0EaUXjCZbiOV6XdXusIXUbZaX57cR+r\\/zWX\\/IeQxMkrI2Q5l6iWAmXVAa1wf38iEhqdT93uaswkXQ==\",\"buyer_id\":\"2088102419695205\",\"body\":\"\\u5b66\\u4e60\\u5b66\\u4e60\\u5b66\\u4e60\",\"invoice_amount\":\"0.10\",\"version\":\"1.0\",\"notify_id\":\"2018111400222204017095201026847772\",\"fund_bill_list\":\"[{\\\"amount\\\":\\\"0.10\\\",\\\"fundChannel\\\":\\\"PCREDIT\\\"}]\",\"notify_type\":\"trade_status_sync\",\"out_trade_no\":\"Df-1542199117-745930338-117.150.9.100\",\"total_amount\":\"0.10\",\"trade_status\":\"TRADE_SUCCESS\",\"trade_no\":\"2018111422001495201013442068\",\"auth_app_id\":\"2018032002416648\",\"receipt_amount\":\"0.10\",\"point_amount\":\"0.00\",\"app_id\":\"2018032002416648\",\"buyer_pay_amount\":\"0.10\",\"sign_type\":\"RSA2\",\"seller_id\":\"2088031631024277\"}', '2018-11-14 20:40:17'),
(2296, 'notify_url-rt：true', '2018-11-14 20:40:17'),
(2297, 'return_url:{\"charset\":\"UTF-8\",\"out_trade_no\":\"Df-1542199117-745930338-117.150.9.100\",\"method\":\"alipay.trade.page.pay.return\",\"total_amount\":\"0.10\",\"sign\":\"xxaZR+r553I+DuEPWiG8GXxK+6UDrvHBZTZ\\/gtk4L6VMFLpX9YRU9jGHe47iA6Rb73u2v5jbh8HHQFWtqTHPUTPtZ++xj1R66wogICnYKPIcMJyRwtrwn\\/zBmpT+kgO+Tp7zQOGAouyqL0Z4DlRIevtWBjxBRu0nUqDNazgdqxQCs7xURPjvklyTuNSylVIuc\\/gPU7QfRtfbDDx2rZUAlGdG\\/Tm2ou3Sy8HQqsC10HJ4yWPLVMiR6lVu1LlWzJTtDIuI+NcqoFHGX5wyzlk0bhf9cJZ1vrX832d5QtgLBNYD8J78gQlimAKniCDuY\\/eAV6Nn\\/qvOWyiIK\\/5r+jVBfA==\",\"trade_no\":\"2018111422001495201013442068\",\"auth_app_id\":\"2018032002416648\",\"version\":\"1.0\",\"app_id\":\"2018032002416648\",\"sign_type\":\"RSA2\",\"seller_id\":\"2088031631024277\",\"timestamp\":\"2018-11-14 20:40:28\"}', '2018-11-14 20:40:34'),
(2298, 'return_url-rt:true', '2018-11-14 20:40:34'),
(2299, 'SELECT a.Id,a.content,a.time,b.name,b.pic from sp_forum a LEFT JOIN sp_club_user b ON a.userId=b.openid order by time desc', '2018-11-15 01:03:26'),
(2300, 'Unknown column \'lastlogintime\' in \'field list\'', '2018-11-15 15:50:08');

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE `menu` (
  `Id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `src` varchar(100) DEFAULT NULL COMMENT '路径',
  `type` varchar(30) DEFAULT NULL COMMENT '类型',
  `parent` int(11) DEFAULT '0' COMMENT '上级Id',
  `orderNum` int(11) DEFAULT '0' COMMENT '排序编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`Id`, `title`, `src`, `type`, `parent`, `orderNum`) VALUES
(1, '动态首页', 'homepage%2Fhome%2F', 'home', 0, 0),
(2, '网站管理', '', 'folder', 0, 2),
(3, '域名分布', 'webctl%2Fmain%2Fuser', 'cloud', 2, 0),
(13, '小程序后台', '', 'server', 0, 5),
(16, '论坛', '', 'folder', 13, 0),
(17, '首页', 'smallpro%2Fforum%2Fsp_forum', 'file', 16, 0),
(18, '谷雨光影', '', 'folder', 13, 0),
(20, '音乐', 'smallpro%2Fclub%2Fsp_club_music', 'music', 18, 0),
(22, '美图站', '', 'folder', 13, 0),
(23, '首页', 'smallpro%2Fpics%2Fsp_meinv_content', 'home', 22, 0),
(24, '视频站', '', 'folder', 13, 0),
(25, '首页', 'smallpro/video/tourshow', 'home', 24, 0),
(26, '门面展示', '', 'file', 13, 0),
(27, '微信管理', '', 'server', 0, 10),
(28, '首页', 'wx/home/index', 'home', 27, 0),
(29, '微信api', 'wx%2Fhome%2Fwx_sdk', 'file', 27, 0),
(30, '资源管理', 'wx%2Fhome%2Facmanage%2F2', 'table', 27, 0),
(31, '自定义菜单', 'wx%2Fhome%2Fmenu%2F', 'file', 27, 0),
(32, '微信分享测试', 'wx%2Fhome%2Fwxshare%2F', 'home', 27, 0),
(33, '微信分享管理', 'wx%2Fhome%2Fshare_manage', 'file', 27, 0),
(34, '支付宝', '', 'money', 0, 7),
(35, 'pc端扫码支付demo', 'zfb%2Fhome%2Findex', 'money', 34, 0),
(36, '接口调用记录', 'zfb%2Fhome%2FpayLog', 'history', 34, 0),
(37, '数据收集', '', 'cloud', 0, 3),
(38, 'cpu', 'datacol%2Fhome%2Fcpu+', 'cloud', 37, 0),
(39, '气温', 'datacol%2Fhome%2Fair_tem', 'cloud', 37, 0),
(40, '小工具', '', 'code', 0, 4),
(41, 'html编码/解码', 'tools%2Fhome%2Fhtmlencode', 'file', 40, 0),
(42, 'url编码/解码', 'tools%2Fhome%2Furlencode+', 'file', 40, 0),
(43, '高德地图获取坐标', 'tools%2Fhome%2Famap', 'file', 40, 0),
(44, '获取图片目录', 'tools%2Fhome%2FgetImg', 'file', 40, 0),
(45, 'php时间戳', 'tools%2Fhome%2FphpTimeDecode', 'file', 40, 0),
(46, '雪花效果', 'tools%2Fhome%2Fsnow', 'file', 40, 0),
(47, '屏幕自适应', 'tools%2Fhome%2FEleMax', 'file', 40, 0),
(48, '全景图', 'tools%2Fhome%2Faframe', 'file', 40, 0),
(49, 'API', '', 'flash', 0, 6),
(50, '百度地图', 'api%2Fhome%2Fbdmap', 'map', 49, 0),
(51, '主页管理', '', 'folder', 0, 1),
(52, '布局', 'homepage%2Fcolumn%2Fhome_layout%2F1', 'file', 51, 0),
(53, '栏目管理', 'homepage%2Fcolumn%2Fhome_column', 'file', 51, 0),
(54, '链接管理', 'homepage%2Fcolumn%2Fhome_link', 'link', 51, 0),
(55, '音乐管理', 'homepage%2Fcolumn%2Fhome_music', 'music', 51, 0),
(56, '留言管理', 'homepage%2Fcolumn%2Fmessage+', 'comments', 51, 0),
(57, '数学理论', '', 'book', 0, 8),
(58, '常用公式', 'math%2Fhome%2Fmath_common', 'file', 57, 0),
(59, '游戏管理', '', 'gamepad', 0, 9),
(60, '修仙页游', 'gameManage%2Fxj%2Findex', 'file', 59, 0),
(61, '充值记录', 'gameManage%2Fxj%2ForderLog', 'history', 59, 0),
(62, '记事本', 'admin%2Fhome%2Fnotepad', 'book', 0, 110),
(63, '菜单', 'admin%2Fhome%2Fmenu', 'gear', 0, 150),
(64, '关于我', 'admin%2Fhome%2Fcolumn', 'home', 0, 120),
(65, '使用说明', 'admin%2Fhome%2Freadme', 'bug', 0, 170),
(66, '日志', 'admin%2Fhome%2Flog', 'history', 0, 160),
(67, '装载数据', 'url%3A%2Fcreate.php', 'save', 0, 130),
(68, '框架信息', 'admin%2Fhome%2Finfo', 'home', 0, 140),
(69, '刷新数据', 'js%3Arefresh_data%28%29%3B', 'refresh', 0, 121),
(73, '用户', 'smallpro%2Fforum%2Fsp_user', 'users', 16, 0),
(74, 'iFrame', '', 'safari', 0, 0),
(75, 'url管理', 'iframe%2Fhome%2FiFrame_link', 'home', 74, 0),
(76, '支付成功的页面', 'zfb%2Fhome%2Freturn_url', 'file', 34, 0),
(77, '生成静态页面', '', 'folder', 0, 8888),
(78, 'SEO', '', 'folder', 0, 0),
(79, '百度推广', 'seo%2Fbaidu%2Fnote', 'file', 78, 0),
(80, '3d旋转图片', 'tools%2Fhome%2FThreeDPic', 'file', 40, 0),
(81, 'windows效果', 'tools%2Fhome%2FWindows%09', 'file', 40, 0),
(82, '页面管理', 'admin%2Fhome%2Fhtml', 'home', 77, 0),
(83, '生成', 'admin%2Fhome%2FcreateStaticPage', 'home', 77, 0),
(84, '广告管理', '', 'folder', 0, 0),
(85, '阿里妈妈', 'ad%2Fhome%2Findex', 'file', 84, 0),
(86, 'url简化', 'tools%2Fhome%2FurlToShort', 'home', 40, 0),
(87, '用户管理', '', 'home', 0, 0),
(88, '列表', 'admin%2Fhome%2Fdf', 'home', 87, 0),
(89, '权限', 'admin%2Fhome%2Froles%09', 'home', 87, 0),
(90, '插件', '', 'asterisk', 0, 0),
(91, 'layer', 'url%3A%2Fcss_js%2Flayui%2Flayer%2Ft.html', 'home', 90, 0),
(92, 'layui', 'url%3A%2Fcss_js%2Flayui%2Ft.html', 'home', 90, 0),
(93, 'layim', 'url%3A%2Fcss_js%2Flayui%2Ft1.html', 'home', 90, 0),
(94, 'jqUI', 'url%3A%2Fcss_js%2FjqUi%2Ft.html', 'home', 90, 0),
(95, 'jqTemp', 'url%3A%2Fcss_js%2FjqTemplate%2Ft.html', 'home', 90, 0),
(96, 'jqEasyui', 'url%3A%2Fcss_js%2FjqEasyui%2Ft.html', 'home', 90, 0),
(97, 'echarts', 'url%3A%2Fcss_js%2Fecharts%2Ft.html', 'home', 90, 0),
(98, 'dialog', 'url%3A%2Fcss_js%2Fdialog%2Ft.html', 'home', 90, 0),
(99, 'angular', 'url%3A%2Fcss_js%2Fangular%2Ft.html', 'home', 90, 0),
(100, 'aframe', 'url%3A%2Fcss_js%2Faframe%2Ft.html', 'home', 90, 0),
(101, '清空所有注释', 'tools%2Fhome%2FstrReplace', 'file', 40, 0),
(102, '流量查询', 'url%3Ahttps%3A%2F%2Fweb.umeng.com%2Fmain.php%3Fc%3Dsite%26a%3Dshow', 'home', 0, 0),
(103, '支付套装', '', 'home', 34, 0),
(104, 'index', 'zfb%2Fpay%2Findex', 'home', 103, 0),
(105, '支付记录', 'zfb%2Fpay%2FpayLog', 'home', 103, 0),
(106, '同步回调', 'zfb%2Fpay%2Freturn_url', 'home', 103, 0),
(107, 'mui', 'url%3A%2Fcss_js%2Fmui%2Ft.html%09', 'home', 90, 0),
(108, '用户', 'smallpro%2Fclub%2Fsp_club_user', 'home', 18, 0),
(109, '旅游笔记', '', 'home', 13, 0),
(110, '首页', 'smallpro%2Ftourshow%2Ftourshow', 'home', 109, 0),
(111, '首页', 'smallpro%2Fshopshow%2Fshopshow', 'home', 26, 0),
(112, '所有用户', 'smallpro%2Fclub%2Fsp_user', 'home', 13, 0),
(113, '查看字体', 'url%3A%2Fhtm%2Ffont.html', 'home', 77, 0),
(114, '评论', 'smallpro%2Fforum%2Fsp_forum_reply', 'home', 16, 0),
(115, '关于', 'smallpro%2Fforum%2Fsp_forum_about', 'home', 16, 0),
(116, '打赏', 'zfb%2Fpay%2FdsV', 'home', 103, 0),
(117, '列表', 'ad%2Fitem%2Fads_dt', 'home', 84, 0),
(118, '获取ip', 'api%2Fhome%2Fip', 'home', 49, 0);

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `Id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `E_mail` varchar(100) DEFAULT '',
  `content` longtext COMMENT '内容',
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`Id`, `name`, `E_mail`, `content`, `time`) VALUES
(6, '123', '321', '222', '2018-07-29 18:00:02'),
(7, '1', '1', '1', '2018-07-29 18:03:02'),
(8, 'df', 'df', 'df', '2018-08-03 11:30:34'),
(9, 'df', 'df', 'df', '2018-08-12 21:10:25'),
(10, '', '', NULL, '2018-09-09 04:40:28'),
(11, '123', '1233', '123', '2018-10-17 23:10:42'),
(12, 'ddd', 'aaa', 'fff', '2018-10-17 23:12:31'),
(13, '', '', NULL, '2018-11-15 06:47:02');

-- --------------------------------------------------------

--
-- 表的结构 `notepad`
--

CREATE TABLE `notepad` (
  `Id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '内容',
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `notepad`
--

INSERT INTO `notepad` (`Id`, `title`, `content`, `time`) VALUES
(2, '这气温忽高忽低太奇葩，一个星期内气温波动上十度', '<p>晚上</p><p>23度以内，厚被子</p><p>24度以上，毛巾毯</p><p>白天</p><p>15度以内，加秋衣裤</p><p><span style=\"color: inherit;\">26度以内，长袖体恤或衬衣，长牛仔裤</span><br></p><p>27度以上，短袖，七分裤或三分裤</p>', '2018-05-21 11:42:44 pm'),
(3, 'ABP规则', '<p>||5ifit.com/img/default/jianwangpt.jpg</p><p>||5ifit.com/img/default/img/wenzhang-AD.jpg</p><p>||5ifit.com/img/default/logo-top.png</p><p>||chinanews.com/fileftp/2017/06/2017-06-02/U194P4T47D39713F981DT20170602154950.jpg</p><p>baidu.com##.recordcode</p><p>baidu.com##.no-qrcode-layer</p><p>blog.163.com##iframe,.m-163news,.m-lofteriframe</p><p><br></p>', '2018-06-11 04:12:11 pm'),
(4, '网站优化', '<ul><li><span style=\"color: inherit;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">搜索引擎是通过蜘蛛的形式来进行抓取我们网站的内容，从而提交到搜索引擎进行展示。<span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">蜘蛛对于一个网站的友好程度是至关重要的，一般也就是说蜘蛛常常光顾的站点权重都不会差，然而对于那些蜘蛛百年都不光顾一次的网站，排名就不用说了</span></span></span><br></li><li><span style=\"color: inherit;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><br></span></span></li><li><span style=\"color: inherit;\"></span></li><li><span style=\"color: inherit;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">网站提交。手动提交、自动提交</span></span></li><li><span style=\"color: inherit;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">用外链让蜘蛛更频繁的爬行网站。<span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">大量的去一些权重较好的论坛和博客进行发布一些外链来进行吸引蜘蛛通过外链爬行到我们的网站</span></span></span></span></li><li><span style=\"color: inherit;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">用新鲜的文章喂好喂饱蜘蛛。<span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">搜索引擎对于高质量的原创内容是相当的喜爱，给予的权重也是极高的，所以我们在做外链的同时一定要给自己的网站内容也要做好。<span style=\"white-space: normal; background-color: rgb(249, 249, 249);\">搜索引擎更关注的是内容，而对于每一个个人站初期的发展来说，甚至对于某些网站存在的必要性来说，都是相当重要。<span style=\"white-space: normal; background-color: rgb(249, 249, 249);\">充实自己的网站内容，偶尔也写点原创吸引一下眼球，更主要的目的是招个蜘蛛来参观参观。虽然添加内容是相当枯燥乏味的，但是，要让我的网站具有灵魂，这些工作是必须的。</span></span></span></span></span></span></span></span></li><li><span style=\"color: inherit;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"white-space: normal; background-color: rgb(249, 249, 249);\"><span style=\"white-space: normal; background-color: rgb(249, 249, 249);\"><br></span></span></span></span></span></span></span></span></li><li><span style=\"color: inherit;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">友情链接很重要。<span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\">友链在外链当中属于最为高质量的一种，它引导着站点与站点权重的分享，所以说我们要给自己的网站增加好的友情是非常必要的，但是一定要切记要好的，网站相关的</span></span></span></span></span></span></span></span></li><li><span style=\"color: inherit;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><br></span></span></span></span></span></span></span></span></li><li><div style=\"background:#f9f9f9;\">Title，一定不要太长，一般30个字左右<br><div style=\"background:#f9f9f9;\">Description，告诉人家你网站是做什么的。<br><div style=\"background:#f9f9f9;\">Keywords，这个是给搜索引擎看的，告诉搜索引擎你网站是做什么的。<br><div style=\"background:#f9f9f9;\">Alt，对图片的描述，当你的网站长时间为打开的时候，图片可能还未显示，alt就会替代图片，避免了让读者傻呆呆等的现象，至少我如果我是一个读者，我是不希望出现这样的情况<br></div><div style=\"background:#f9f9f9;\"><br></div></div></div></div></li><li>尽量使用静态页面替代动态页面，访问htm的速度会比动态页面快很多，这样可以提高网站的访问效率，提高网站的收录率</li><li><span style=\"color: inherit;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', 微软雅黑, arial, 宋体, sans-serif; text-align: justify; white-space: normal;\"></span></span></span></span></span></span></span></span></li></ul>', '2018-07-19 07:28:36 pm'),
(5, '脚底穴位', '<p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 12px; line-height: normal; font-family: Helvetica;\"></p><p><img src=\"http://www.dfer.top/upload/upfile/upfile_20180720113308.jpg\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180720113308.jpg\"></p>', '2018-07-20 11:32:38 pm'),
(6, 'pic', '<p><img src=\"http://www.dfer.top/upload/upfile/upfile_20180721085519.png\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180721085519.png\" style=\"\"></p><p><img src=\"http://www.dfer.top/upload/upfile/upfile_20180721085524.png\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180721085524.png\" style=\"\"></p><p><img src=\"http://www.dfer.top/upload/upfile/upfile_20180721085529.png\" _src=\"http://www.dfer.top/upload/upfile/upfile_20180721085529.png\" style=\"\"></p><p><br></p>', '2018-07-21 08:48:13 pm'),
(7, '账号管理', '<p><br></p><ul><li><p><span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">DinGe摄影&nbsp;</span><span style=\"color: inherit;\">108900823@qq.com &nbsp;</span><span style=\"color: inherit;\">Dinge6977230</span><br></p></li><li><p><span style=\"color: inherit;\">1</span><br></p></li><li><p><span style=\"color: inherit;\">2</span><br></p></li></ul>', '2018-10-11 14:16:46'),
(8, '感情', '<p>跟女生处对象，如果是喜欢的，一开始难免约出来，约几次就需要更进一步接触，搂搂抱抱，再然后就是kiss。在交往过程中，达到一定程度之后，就需要升华感情。在过程中，你会有感觉到需要升华感情的时候，如果不升华，就会觉得煎熬甚至是难受。</p><p>发展的进度有时候很快，第一天搂肩，第二天就拥抱牵手，第三天就该kiss了，如果达到瓶颈期的时候不突破，就只能是彼此的煎熬，煎熬一两天还好，煎熬久了就让人想要逃离。总之，如果感情遇到瓶颈而自己无法突破，以后的约会都会变得索然无味，顶多再给三次机会，三次之后对方就会因为无趣而不愿再约。</p><p>感情是有保鲜期的，如果想感情顺利，少受挫折，自己就应该把握机会，跟着感觉走，该搂搂抱抱就搂搂抱抱，该kiss就kiss，有道是“<span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; -webkit-text-size-adjust: 100%;\">花开堪折直须折，莫待无花空折枝</span>&nbsp;”。不要等到约完了再去懊悔和煎熬，不要别人冷淡下来且不愿再约的时候独自失落。</p><p>总之，感情是脆弱的，经不起太多折腾。该抱就抱，该牵手就牵手，该kiss就kiss，不要想太多，不要想着下次来做，因为很有可能没有下次，即使有下次也很可能需要等很久，感情经不起煎熬，等太久的话感情会淡，也会让感情增加风险，这种煎熬对彼此本身就是一种无形的伤害。</p><p>很明显的就是一开始打的火热，抱着、牵着都可以，搂搂抱抱一段时间之后很想kiss她，结果后来约了好几次都没能鼓起勇气kiss她，然后就感觉她有些冷淡了，平时聊天和约的时候她也不那么积极了。</p><p>其实吧，有个很通俗的说法，成年男女之间处对象，如果你对她搂搂抱抱的，不想kiss她以及上她，而你又是喜欢她的，她会觉得你是性无能，觉得你无趣，就不想再跟你处了。</p><p>还是得随机应变，女人都是口是心非的，很多时候，就算你说对了，她也不会承认。得你自己跟着感觉走，去猜她心里的话，做出让她满意的言行。</p><p><br></p><p><br></p><hr><p>感情这种事情，不需要过于执着，也不需要过于逃避。不管你是重视，还是无视，感情就在那里，不增不减，不多不少。对于爱情，你强求不来，你也逃避不了。无非就是顺其自然，不困于情，不念过往，不畏将来，随缘随喜。当爱到来的时候好好爱，不逃避，不留遗憾；当爱离去的时候能释怀，不强求，不困于情。能接受，也能释怀；拿得起，也放得下。</p><p><a class=\"xqtitlelink\" style=\"color: rgb(51, 51, 51); font-size: 14px; white-space: normal; font-family: ft !important;\"></a></p><hr><p><br></p>', ' 2018-10-23 13:38:40 '),
(9, '情感', '<p><font color=\"#333333\" face=\"PingFang SC, Lantinghei SC, Microsoft YaHei, arial, 宋体, sans-serif, tahoma\"><span style=\"caret-color: rgb(51, 51, 51); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><br></span></span></font></p><hr><p><font color=\"#333333\" face=\"PingFang SC, Lantinghei SC, Microsoft YaHei, arial, 宋体, sans-serif, tahoma\"><span style=\"caret-color: rgb(51, 51, 51); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><br></span></span></font></p><p><font color=\"#333333\" face=\"PingFang SC, Lantinghei SC, Microsoft YaHei, arial, 宋体, sans-serif, tahoma\"><span style=\"caret-color: rgb(51, 51, 51); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><br></span></span></font></p><p><font color=\"#333333\" face=\"PingFang SC, Lantinghei SC, Microsoft YaHei, arial, 宋体, sans-serif, tahoma\"><span style=\"caret-color: rgb(51, 51, 51); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">女人天生喜欢浪漫，你必须尽情的让她们遐想</span></span></font></p><hr><p><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">走在大街上，人很多的地方。</span><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">“等等，眼睛闭上。”</span><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">“为什么？”</span><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">“哪来这么多问题嘛，闭上！”</span><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">闭了。</span><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">吻她额头。</span><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">然后转身走人，她追上来问，你不要承认，装得越真越好。说：“我只是想甩掉你，你话太多啦！”她装生气了，别理她。因为下一个暂离会让她更迷茫</span></p><p><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><br></span></p><hr><p><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">一般来说，顺利接吻后，甜言一番，就已经确立关系了，多来几次就找机会推吧，早晚是你的。</span></span><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"></p><p><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">如果接吻进展不顺利，将进入主动表白来确立关系的这个特殊阶段，这取决于之前全部动作是否有效，或是她是否有什么苦衷。</span><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">一切的答案全在最后的吻上，如果她显得非常的抗拒，你最好是调头走人，什么也别说，但要表现得有些惆怅，我的做法是在她面前深呼吸一下，然后转身离去，留她在那里思考。让她继续去猜测我到底在想什么。过不了多久短信就会来的，她会开始诉说着她的故事……意思是让你感觉</span><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><br style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; content: &quot;&quot;; display: block; width: 660px; height: 0px; margin: 20px 0px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\">到她不是一个随便的人啊之类的东西。这时就需要你的表白，你这时的表白是非常有价值的，我一般是这样说的：“我知道我喜欢你了。”然后什么也别多说。过不了多久她就会自动送上门来，常见的方式是早上或者晚上发条信息叫你傻瓜啊呆子啊什么的，怎么还不睡啊？还没起来啊懒猪之类的，女的就这几下子……</span></p><p><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"><br></span></p><hr><p></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">只是你只要知道，如果你知道了对方是喜欢你的，那你做什么他都不会拒绝的</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">就像你为刀俎，她为鱼肉，任你宰割</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">真的是这样</p><hr><p><span style=\"white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;\"></span></p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">不是要她说喜欢你，你可以通过你们交往的点点滴滴感受出来的,</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">只要感觉到这点，你就有优势了</p><hr><p>实在k不下去可以试试这种：<br></p><p><strong></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">就是你请女孩吃晚饭，你说高兴，然后喝点酒</p><p><strong></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">吃完，就带她去人少的地方散散步</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">然后找机会<span style=\"line-height: normal; font-family: \'Helvetica Neue\';\">kiss</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">第一，这时候你借着酒劲，你的胆子也大些；</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">第二，她觉得你喝了酒，也不会觉得太突然；</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">最重要的一点，即使你<span style=\"line-height: normal; font-family: \'Helvetica Neue\';\">kiss</span>之后，她不高兴，你可以找借口说，<span style=\"line-height: normal; font-family: \'Helvetica Neue\';\">sorry</span>,喝了点酒，冒失了，可以化解尴尬</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">喜欢自己的人不多，碰到了要好好珍惜</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">错过了，不知道下次碰到是什么时候呢！</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">真的，<span style=\"color: inherit;\">喜欢你的人</span><span style=\"color: inherit;\">，一天就能泡到，</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">不喜欢你的人，一辈子也不一定能追到！</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">她可能给自己限定了一个时间，在这个时间内，你如果还不表示的话，她就会考虑放弃你，选择下一个；</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">这是时间具体是多久，只有她自己知道；</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\"><span style=\"color: inherit;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">所以说，事不宜迟</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">通过牵手试探</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">如果对方没拒绝，说明可以进行下一步</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">拒绝了，就几乎没希望了</p><p><span style=\"color: rgba(0, 0, 0, 0.498039); font-family: \'.PingFang SC Light\'; font-size: 18px;\">牵手之后，就是拥抱啊</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">先是从背后抱</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">让对方先适应</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">然后慢慢吧妹子转过来</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">转过来之后，就顺势亲上去</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">基本上就成了</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">我其实能想通，我也知道她不介意，但我迈不出自己这关，<span style=\"color: rgba(0, 0, 0, 0.498039);\">感觉很不习惯</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">只要迈出这一步就好了，后面就轻松自然了</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">多<span style=\"line-height: normal; font-family: \'Helvetica Neue\';\">kiss</span>几次就不紧张了</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">恋爱少的人都是这样</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">很正常</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">只要亲嘴了，关系基本就石锤了</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">就可以确立女朋友关系吧</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\">都亲上了，还能有什么关系</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 18px; line-height: normal; font-family: \'.PingFang SC Light\';\"><br></p><hr><p>在关系石锤之前，特别忌讳表白（如果你不够喜欢她，想早点摆脱她，倒是可以尽快表白）。</p><p>在关系还没确立的时候，其实不管是表白别人，还是被别人表白，都是件很尴尬的事情，如果被人表白，你刚好喜欢她就正好，但是，如果两人的认识还不够，还<span style=\"font-family: \'Helvetica Neue\'; font-size: 15px; white-space: normal;\">没多少感觉</span>，拒绝的话怕伤害别人，<span style=\"font-family: \'Helvetica Neue\'; font-size: 15px; color: inherit;\">不拒绝的话，感觉又还不够，在一起会有点勉强。如果是个急性子，处理得不好，就会把两人关系闹得很僵，连朋友都没得做。表白别人的时候也是同样的道理。关键是表白之后，不仅不会达到目的，还会让两人以后的相处变得有压力，这个时候纠缠不休就会让对方反感，让对方觉得不舒服，而不纠缠你自己又有点下不来台，不管怎样都会有坎儿，这样就导致了目的没有达到，还难以收尾，从头到尾都是错。</span></p><p><br></p>', ' 2018-10-23 15:04:41 '),
(10, '微信小程序开发清单', '<p><span style=\"color:#353535;font-family:-apple-system-font, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Hiragino Sans GB, Microsoft YaHei UI, Microsoft YaHei, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></span></p><p><span style=\"color:#353535;font-family:-apple-system-font, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Hiragino Sans GB, Microsoft YaHei UI, Microsoft YaHei, Arial, sans-serif\"><span style=\"font-size: 14px;\">谷雨网络小程序 &nbsp;</span></span></p><p><span style=\"color:#353535;font-family:-apple-system-font, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Hiragino Sans GB, Microsoft YaHei UI, Microsoft YaHei, Arial, sans-serif\"><span style=\"font-size: 14px;\"><span style=\"white-space: normal; color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif;\"><span style=\"font-size: 14px;\">&nbsp;</span></span><a href=\"mailto:com@df315.top\" _href=\"mailto:com@df315.top\" style=\"color: rgb(35, 82, 124); outline: 0px; white-space: normal; font-family: \'PingFang SC\'; font-size: 14px; -webkit-text-stroke-color: rgb(51, 51, 51); text-align: center;\"><u>com@df315.top</u></a></span></span></p><p><br></p><p><span style=\"color:#353535;font-family:-apple-system-font, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Hiragino Sans GB, Microsoft YaHei UI, Microsoft YaHei, Arial, sans-serif\"><span style=\"font-size: 14px;\"></span></span></p><ul style=\"white-space: normal;\"><li><p style=\"color: rgba(0, 0, 0, 0.498039) !important;\"><span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">谷雨论坛（二次审核）</span><br></p></li><li><p><span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">&nbsp;</span><span class=\"meta_value\" style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px; margin: 0px; padding: 0px;\">谷雨光影</span><br></p></li><li><p><span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">谷雨风华（官方）</span><br></p></li><li><p><span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">谷雨小店<span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px; white-space: normal;\">（官方）</span></span><br></p></li><li><p><span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">&nbsp;</span><span class=\"meta_value\" style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px; margin: 0px; padding: 0px;\">谷雨网络科技(审核中)</span></p></li></ul><p><span style=\"color:#353535;font-family:-apple-system-font, BlinkMacSystemFont, Helvetica Neue, PingFang SC, Hiragino Sans GB, Microsoft YaHei UI, Microsoft YaHei, Arial, sans-serif\"><span style=\"font-size: 14px;\"></span></span></p><hr><p><span style=\"color: rgba(0, 0, 0, 0.498039); font-family: \'PingFang TC\'; font-size: 14px; text-align: center; white-space: normal; -webkit-text-stroke-color: rgb(53, 53, 53);\">谷雨霖霖</span></p><p><span style=\"color: rgba(0, 0, 0, 0.498039); font-family: \'PingFang TC\'; font-size: 14px; text-align: center; white-space: normal; -webkit-text-stroke-color: rgb(53, 53, 53);\"><a href=\"mailto:dbl315@qq.com\" _href=\"mailto:dbl315@qq.com\" style=\"font-family: \'Hannotate SC\'; font-size: 12px; text-align: center; white-space: normal; -webkit-text-stroke-color: rgb(0, 0, 0);\">dbl315@qq.com</a></span></p><ul><li><p><span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">&nbsp;</span><span class=\"meta_value\" style=\"margin: 0px; padding: 0px; color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">谷雨满城花</span><br></p></li><li><p><span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">&nbsp;</span><span class=\"meta_value\" style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px; margin: 0px; padding: 0px;\">谷雨柏霖</span><br></p></li><li><p><span style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px;\">&nbsp;</span><span class=\"meta_value\" style=\"color: rgb(53, 53, 53); font-family: -apple-system-font, BlinkMacSystemFont, \'Helvetica Neue\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', Arial, sans-serif; font-size: 14px; margin: 0px; padding: 0px;\">谷雨霖霖</span><br></p></li></ul><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.498039); font-family: \'PingFang TC\'; font-size: 14px; text-align: center; white-space: normal; -webkit-text-stroke-color: rgb(53, 53, 53);\"></span><br></p>', ' 2018-10-24 10:49:59 ');
INSERT INTO `notepad` (`Id`, `title`, `content`, `time`) VALUES
(11, '情', '<p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我对你并非没有图谋，但无非是图你幸福</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">微信我有时候就是胡说八道的，但她就当真了，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">毕竟打字跟面对面聊天是完全不一样的，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">打字的话，容易胡说八道，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">尤其我这种打字速度超快的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我觉得是当初的那种美好已经破坏掉了，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我后来跟她语音通话的时候能够明显感觉到她态度发生了很大的转变，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">语气是那种冰冷的，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">就是平淡得让人无法忍受</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">其实我也就是那样讲而已，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">并不一定就要当真啊，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我说为了结婚而结婚就真的是这样吗？</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我很多时候就是想找人倾诉而已，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">感情这种事情怎么说的准，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">谁也无法保证能一起走到最后。</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">不管我一开始是怎么想的，但是感情还是会按应有的路线来走，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">就算我有目的，但无法改变感情的自然发展顺序，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">有没有目的又有什么关系，只是我个人的意识形态，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">不会影响感情的真实发展规律，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">所以我怎么想以及怎么说都不重要，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">世界不会因我的想法而改变，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我想或不想，感情就在那里，不生不灭不增不减</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">还是得先谈恋爱，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">是不该一开始就给人压力，但我的确是想找人倾诉，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">倾诉的成分多一些，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我被误解了，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我没有想逼婚什么的，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我很清楚这种事情是强求不来</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><span style=\"font-family: \'Helvetica Neue\'; font-size: 15px; white-space: normal;\">还是得正常恋爱之后谈婚论嫁，</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">一开始讲这些的确让人难以接受，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">都还没确立关系就在讲结婚，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">逻辑思维太严重，觉得爱情和婚姻也是可以逻辑化的，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">觉得只要两人商量好就可以直接跳过中间步骤，直接到达最后一步，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">太理想化了，但现实没那么简单，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">除非真是天赐良缘，两个人直接结婚然后幸福美满，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">但<span style=\"color: inherit;\">那是动漫里才会有的，</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><span style=\"color: inherit;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">就算现实真有，那这妹子也一定暗中观察这男的很久了，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">不可能之前完全不相识的两个人出现这种局面</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><span style=\"color: inherit;\"></span></p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">经过我这些年的总结，我觉得婚姻无捷径，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">还是得老老实实谈恋爱，脚踏实地相处，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">所有的事情都要脚踏实地，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">想着一步登天是不行的，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">关系都没确立，都没有深入了解彼此，姑娘肯定不愿意呢！</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我觉得像我这么好的男人，要是姑娘深入了解我了一定非我不嫁了，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">可惜她们都没深入了解过，真替她们感到惋惜，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我是她们永远都得不到的男人，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我是觉得我很好啊，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">她们很难再遇到我这种善良体贴文武双全德艺双馨的人了，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">她们没有深入了解过我，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">都是一开始就被我微信几句话就吓跑了呗！</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">其实根本就没有真正了解过我</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">有时候醉了却醒着，有时候醒着却醉了</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">有你的梦我总不愿醒来</p><hr><p>别等爱过了，错过了，留下了单身的我独自唱情歌</p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"><span style=\"color: rgba(0, 0, 0, 0.498039); white-space: normal;\">不要爱过了，错过了，留下了单身的我独自唱情歌</span><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"><span style=\"color: rgba(0, 0, 0, 0.498039); white-space: normal;\"></span></span><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\"></span></span></span></span></span></span></span></p><hr><p>“表白是宣告胜利的赞礼，而不是发起进攻的号角”说得没错。</p><p>就不应该太早表白，太早表白的结果就是自己失去主动权，如果对方根本没意思就直接over，如果有意思就让自己陷入彻底的被动，让对方有恃无恐，在感情上处处受制。仗着你喜欢她，就闹情绪，耍个性。</p><p>要想感情不陷入被动，表白应该在关系石锤之后进行（两个人关系进展为实质的恋人之后进行），这个时候的表白其实不是特别有必要，因为关系已经确认了，不管有没有表白都已经是恋人了，这时的表白也不过是调情的一种方式而已（你已经得手了，也就是已经赢了，只是用表白的方式来放点烟花而已）。最忌讳因为自己的患得患失或者猴急，在关系没有完全确立的时候就表白，这就等于是把主动权完全交到对方手里了，对方知道她在你心中的地位很重，对方觉得反正已经搞定你了，就不需要再对你示好，对她来说你已经是他的了，这时候根本就不需要急着答应你，如果她这样答应的话反而显得她太好追了也就使得你不会珍惜她，不仅不会答应，反而会以此为要挟，让你更加不容易得手，这个时候你就变得卑微了，两人在恋爱中的地位就不平等了，她每天逍遥快活故意不见你，而你每天求而不得深受折磨。</p><p>感情中最好的状态是，保持若即若离，不要让她知道自己的想法，让她猜，即使真的很喜欢她也不要让她知道，要留有神秘感，<span style=\"color: rgba(0, 0, 0, 0.498039); white-space: normal;\">让她去幻想，这种情况下进可攻退可守，追她的机会更多，<span style=\"color: rgba(0, 0, 0, 0.498039); white-space: normal;\">这种情况也就更容易得手。</span>要经常约她，却不告诉她原因，让她去猜你是不是喜欢她，也要保持距离，让她患得患失，期间要不断升级关系，从最基本的搂搂抱抱，到最后的kiss，只要她不明显抗拒，得手就指日可待。关键是要沉得住气，切忌<span style=\"color: rgba(0, 0, 0, 0.498039); white-space: normal;\">你自己先忍不住了表白了从而陷入被动。不要以为及时表白就能马上得到她，这样只会适得其反，使你得手更难。越是想要得到就越是被她看轻，越是放得下反而让她越看重。</span></span></p><p><span style=\"color:#000049\">如果已经沉不住气了，变得被动了，就不要死缠烂打的，一味死缠烂打下去只会让你越来越显得卑微，越来越显得廉价，她也就更加不会珍惜，更加轻视你，你就更加没得手的可能；要适当疏远她，<span style=\"color: rgb(0, 0, 73); white-space: normal;\">让她知道你还没有真正属于她，让她有点危机感，让她明白你是拿得起放得下的真男人，让她去想你今天怎么没来找她，<span style=\"color: rgb(0, 0, 73); white-space: normal;\">让她去胡思乱想，每折磨她一天，你在她心中的价值就提高一分，</span>等到她开始沉不住气来找你的时候，恭喜你，她已经沦陷了，她已经接受你了，你已经获得主动权了，得手只是分分钟的事。</span></span></p><hr><p><span style=\"color: rgb(51, 51, 51); font-family: \'PingFang SC\', \'Lantinghei SC\', \'Microsoft YaHei\', arial, 宋体, sans-serif, tahoma; white-space: normal;\">追女孩不如吸引女孩，你追到手的，你永远是被动，你吸引到的你才是主动，如果一个女孩要靠你不断的厚脸皮和讨好才能挽留，说真的，这感情太脆弱了</span></p><hr><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; 首先过早表白并不是错。只是比较心急着把自己心里的想法告诉自己喜欢的人，而没有好好的选择时机而已。要告诉她你是真的喜欢她，给她时间考虑，不要逼她做决定就好。</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\">用实际行动证明，你的表白不是一时的冲动。因为表白过早，很容易让女生认为你的表白可能只是你的一时兴起，所以你要用你的行动来表明你的真心。对她贴心，照顾，关心，给她送喜欢的小礼物，都会让她对你的表白有信心哦！</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\">&nbsp; 给她更多了解你的机会。约她看电影，一起逛街，一起玩。只要她更多的了解了你这个人，慢慢的就不会觉得你的表白唐突或者意外了。</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\">&nbsp; &nbsp;最后，其实表白过早也没多大的事！只要你确定她对你是有感觉的，她顶多只是被吓到，而不至于不和你相处了，只要努力努力，让她成为你的女朋友也就是水到渠成的事情啦！</span></span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><br></span></span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"></span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"></span></span></span><br></p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">女孩子喜欢只可意会不可言传的朦胧美，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">明说就没意思了。</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">男人善攻，女人爱受</p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, \'Microsoft YaHei\', 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">前几天聊微信的时候我对她说你现在就是我女朋友，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">她没有反驳，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">有点默认的意思，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">但是我叫她以后叫我男朋友，她又不愿承认，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">女生心思太奇怪了</p><p><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">开始妹子还不习惯，</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">他们喜欢半推半就，</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">你多提几次，她就习惯了</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><span style=\"color: rgba(0, 0, 0, 0.498039); font-family: \'Helvetica Neue\'; font-size: 15px; white-space: normal;\">女生老是喜欢半推半就，</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">不愿表露出来</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><span style=\"color: rgba(0, 0, 0, 0.498039); font-family: \'Helvetica Neue\'; font-size: 15px; white-space: normal;\"></span><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">她都默认了，却不愿承认</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\"><br></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">东方女性喜欢借物抒情，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">不像老外那样明说，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">这就是东方女性的魅力</p><hr><p>表白的话切记说得太早，有什么话等得手了再说也不迟</p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\'; color: rgba(0, 0, 0, 0.498039) !important;\">我只是想告诉你，你说的喜欢一文不值，比我喜欢你更廉价的是我爱你，我要的是真真切切的对我好，而不是一直说会对我好，这两个不一样。</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">你不妨把这个问题先放放，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">看看你自己是一时新鲜还是怎样<br></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">我一直不答应，而且反应冷淡，你能坚持多久，一个星期，半个月？</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">除了你脱口而出的喜欢，我看不到任何…而最不值钱的就是我喜欢你这句话，</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">比我喜欢你更廉价的就是我爱你</p><hr><p>所有的告白都应该是木已成舟后的宣示主权，定情之后的调情，而不是没完全确定之前的叫嚣。</p><hr><p>定情之前的告白，显得苍白无力，只会让人反感</p>', ' 2018-10-24 22:25:43 '),
(12, '谈恋爱', '<p><span style=\"caret-color: rgba(0, 0, 0, 0.498039); color: rgba(0, 0, 0, 0.498039); white-space: normal;\">谈恋爱原本就是冲着情感和性去的，需要彼此带来情感和性的需求，两者相辅相成，共同构成了恋爱的基石。恋爱过程中，性与爱缺一不可，只论感情会乏味，而一味纵欲不会感到快乐。</span></p><hr><h1 class=\"sentence\" id=\"xqtitle\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); white-space: normal; font-size: 20px; line-height: 36px; text-align: justify; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif;\">有爱无性如同空中楼阁，有性无爱如同嚼蜡鸡肋。</h1><p>​<br></p>', ' 2018-10-25 13:03:51 '),
(13, '拥有域名', '<p><span style=\"white-space: normal;\">个人</span></p><p><span style=\"color: rgba(0, 0, 0, 0.498039);\">df315.top</span></p><p><span style=\"color: inherit;\">grain-rain.xyz</span><br><span style=\"white-space: normal;\"></span></p><p><span style=\"color: inherit;\"><br></span></p><p><span style=\"color: inherit;\"><br></span></p><hr><p>​公司</p><p style=\"white-space: normal; color: rgba(0, 0, 0, 0.498039) !important;\">dfer.top</p><p style=\"white-space: normal;\">grain-rain.com</p><p><br></p>', ' 2018-10-25 14:22:24 '),
(14, '当', '<p>当你控制不了自己的嘴，控制不了吃的时候，你会发现你整个人都失控了。</p>', ' 2018-11-02 00:13:33 '),
(15, '性', '<p><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); white-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.301961); -webkit-text-size-adjust: auto; font-family: Helvetica, Arial, &quot;Microsoft Yahei&quot;, sans-serif; text-indent: 32px;\">性是危险的，因为欲罢不能而不可控，男人对女人都会有一种原始冲动的欲望</span></p>', ' 2018-11-02 05:13:36 '),
(16, '爱情', '<p>在爱情里，有些事情干了会尴尬，不干会后悔，与其悔恨一场留在原地，还不如尴尬一下来提高自己。</p><p><br></p><hr><p>自己的人生得自己走，自己的坎儿得自己跨，别人可以指点你走但不能替你走。<br></p><p><br></p><hr><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">认识这么久了，你觉得我在乎这点钱</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">所以那天你觉得我真的是因为冷</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">大中午约你出去真的是因为无聊</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">喊你看电影真的是想看电影</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">请你吃饭真的是想在外面吃了</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">给你修好那个手机真的是小意思</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">所以这个吊坠真的能在外面买到同款</p><p style=\"margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: normal; font-family: \'Helvetica Neue\';\">随你怎样，我无所谓了</p><p><br></p>', ' 2018-11-03 23:01:14 ');

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE `roles` (
  `Id` int(11) NOT NULL,
  `nm` varchar(50) DEFAULT '普通用户' COMMENT '权限名',
  `roles` varchar(100) DEFAULT '1|2' COMMENT '权限内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `roles`
--

INSERT INTO `roles` (`Id`, `nm`, `roles`) VALUES
(1, '超级用户', ''),
(2, '普通用户', '1|2|7|10|15|16|');

-- --------------------------------------------------------

--
-- 表的结构 `seo`
--

CREATE TABLE `seo` (
  `Id` int(11) NOT NULL,
  `site` varchar(55) DEFAULT NULL COMMENT '域名',
  `content` longtext COMMENT '提交的链接',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型',
  `newsite` tinyint(4) DEFAULT '1' COMMENT '新站保护'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `seo`
--

INSERT INTO `seo` (`Id`, `site`, `content`, `type`, `newsite`) VALUES
(1, 'www.dfer.top', 'www.dfer.top/index.htm\r\nwww.dfer.top', 0, 1),
(2, 'www.df315.top', 'www.df315.top', 0, 0),
(3, 'forum.df315.top', 'forum.df315.top\r\nhttp://forum.df315.top/CMS/\r\nhttp://forum.df315.top/post#new\r\nhttp://forum.df315.top/cms/img\r\nhttp://forum.df315.top/cms/video', 0, 0),
(4, 'guitar.df315.top', 'guitar.df315.top', 0, 0),
(5, 'www.grain-rain.com', 'www.grain-rain.com\r\nwww.grain-rain.com/index.htm\r\n', 0, 1),
(6, 'fit.dfer.top', 'fit.dfer.top\r\n', 0, 0),
(7, 'pic.dfer.top', 'pic.dfer.top', 0, 0),
(8, 'softdownload.df315.top', 'softdownload.df315.top\r\nhttp://softdownload.df315.top/zy/jieshao\r\nhttp://softdownload.df315.top/zy/jieshao_x?id=32\r\nhttp://softdownload.df315.top/zy/com_jieshao\r\nhttp://softdownload.df315.top/zy/com_jieshao_x?id=32\r\nhttp://softdownload.df315.top/zy/dongtai\r\nhttp://softdownload.df315.top/zy/dongtai_x?id=11&px=1\r\n\r\nhttp://softdownload.df315.top/zy/jieshao_x?id=34', 0, 0),
(9, 'szswz.cc', 'szswz.cc\r\n', 0, 0),
(10, 'village.df315.top', 'village.df315.top', 0, 0),
(11, 'h5.dfer.top', 'h5.dfer.top', 0, 0),
(12, 'game.dfer.top', 'http://game.dfer.top\r\ngame.dfer.top', 0, 0),
(13, 'walker.dfer.top', 'walker.dfer.top', 0, 0),
(14, 'jz.dfer.top', 'jz.dfer.top', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `shopshow`
--

CREATE TABLE `shopshow` (
  `Id` int(11) NOT NULL,
  `app_title` varchar(100) DEFAULT '' COMMENT 'app标题',
  `app_type` tinyint(3) DEFAULT '0' COMMENT 'app类型',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `subc` varchar(100) DEFAULT '' COMMENT '描述',
  `head_pic` varchar(100) DEFAULT '' COMMENT '头像',
  `address` varchar(100) DEFAULT '' COMMENT '地址',
  `busi_time` varchar(100) DEFAULT '' COMMENT '营业时间',
  `x` varchar(10) DEFAULT '1' COMMENT '经度',
  `y` varchar(10) DEFAULT '2' COMMENT '纬度',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号',
  `appid` varchar(50) DEFAULT NULL COMMENT 'appid',
  `shareapp` varchar(500) DEFAULT NULL COMMENT '链接的app',
  `img9` longtext COMMENT '图片集合',
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shopshow`
--

INSERT INTO `shopshow` (`Id`, `app_title`, `app_type`, `title`, `subc`, `head_pic`, `address`, `busi_time`, `x`, `y`, `phone`, `appid`, `shareapp`, `img9`, `time`) VALUES
(1, 'Df名片', 0, '一杯浊酒敬平生', '一些图片', 'upload/file/file_20180415063507.png', '湖北省西陵区果园一路', '', '111.315549', '30.706389', '18807204955', '', '', '<p></p><p></p><p></p><p><img src=\"http://df.dfer.top/upload/upfile/upfile_20181031121246.JPG\" _src=\"http://df.dfer.top/upload/upfile/upfile_20181031121246.JPG\" style=\"\"></p><p><img src=\"http://df.dfer.top/upload/upfile/upfile_20181031121252.jpg\" _src=\"http://df.dfer.top/upload/upfile/upfile_20181031121252.jpg\" style=\"\"></p><p><img src=\"http://df.dfer.top/upload/upfile/upfile_20181031121300.jpg\" _src=\"http://df.dfer.top/upload/upfile/upfile_20181031121300.jpg\" style=\"\"></p><p>​</p><p><img src=\"http://df.dfer.top/upload/upfile/upfile_20181031121326.png\" _src=\"http://df.dfer.top/upload/upfile/upfile_20181031121326.png\" style=\"\"></p><p><br></p>', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sp_club_music`
--

CREATE TABLE `sp_club_music` (
  `Id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT '',
  `author` varchar(100) DEFAULT '',
  `pic` varchar(100) DEFAULT '',
  `src` varchar(100) DEFAULT '',
  `lrctext` longtext,
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sp_club_music`
--

INSERT INTO `sp_club_music` (`Id`, `name`, `author`, `pic`, `src`, `lrctext`, `time`) VALUES
(3, '起风了', 'df', 'upload/file/file_20180412034356.png', 'upload/file_20180412112603.mp3', '这一路上走走停停\r\n顺着少年漂流的痕迹\r\n迈出车站的前一刻\r\n竟有些犹豫\r\n不禁笑这近乡情怯\r\n仍无可避免\r\n而长野的天\r\n依旧那么暖\r\n吹起了从前\r\n从前初识这世间\r\n万般流连\r\n看着天边似在眼前\r\n也甘愿赴汤蹈火去走它一遍\r\n如今走过这世间\r\n万般流连\r\n翻过岁月不同侧脸\r\n措不及防闯入你的笑颜\r\n我曾难自拔于世界之大\r\n也沉溺于其中梦话\r\n不得真假 不做挣扎 不惧笑话\r\n我曾将青春翻涌成她\r\n也曾指尖弹出盛夏\r\n心之所动 且就随缘去吧\r\n逆着光行走 任风吹雨打\r\n短短的路走走停停\r\n也有了几分的距离\r\n不知抚摸的是故事 还是段心情\r\n也许期待的不过是 与时间为敌\r\n再次看到你\r\n微凉晨光里\r\n笑的很甜蜜\r\n从前初识这世间\r\n万般流连\r\n看着天边似在眼前\r\n也甘愿赴汤蹈火去走它一遍\r\n如今走过这世间\r\n万般流连\r\n翻过岁月不同侧脸\r\n措不及防闯入你的笑颜\r\n我曾难自拔于世界之大\r\n也沉溺于其中梦话\r\n不得真假 不做挣扎 不惧笑话\r\n我曾将青春翻涌成她\r\n也曾指尖弹出盛夏\r\n心之所动 且就随缘去吧\r\n晚风吹起你鬓间的白发\r\n抚平回忆留下的疤\r\n你的眼中 明暗交杂 一笑生花\r\n暮色遮住你蹒跚的步伐\r\n走进床头藏起的画\r\n画中的你 低着头说话\r\n我仍感叹于世界之大\r\n也沉醉于儿时情话\r\n不剩真假 不做挣扎 无谓笑话\r\n我终将青春还给了她\r\n连同指尖弹出的盛夏\r\n心之所动 就随风去了\r\n以爱之名 你还愿意吗\r\n\r\n\r\n---', '2018-04-12 15:45:02'),
(4, '可不可以', 'Df', 'upload/file/file_20181014120743.png', 'upload/file_20181014120757.mp3', '', '2018-10-14 00:12:01'),
(5, '玫瑰', 'Df', 'upload/file/file_20181014121152.png', 'upload/file_20181014120911.mp3', '', '2018-10-14 00:11:54'),
(6, '那些很冒险的梦', 'Df', 'upload/file/file_20181014121138.png', 'upload/file_20181014120946.mp3', '', '2018-10-14 00:11:40'),
(7, '南方姑娘', 'Df', 'upload/file/file_20181014121126.png', 'upload/file_20181014121008.mp3', '', '2018-10-14 00:11:28'),
(8, '往后余生', 'Df', 'upload/file/file_20181014121108.png', 'upload/file_20181014121019.mp3', '', '2018-10-14 00:11:10'),
(9, '醒着醉', 'Df', 'upload/file/file_20181014121050.png', 'upload/file_20181014121037.mp3', '', '2018-10-14 00:10:53');

-- --------------------------------------------------------

--
-- 表的结构 `sp_club_user`
--

CREATE TABLE `sp_club_user` (
  `Id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT '',
  `sex` int(11) DEFAULT '0',
  `openid` varchar(100) DEFAULT '',
  `pic` longtext,
  `addr` varchar(100) DEFAULT '',
  `subs` varchar(100) NOT NULL,
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sp_club_user`
--

INSERT INTO `sp_club_user` (`Id`, `name`, `sex`, `openid`, `pic`, `addr`, `subs`, `time`) VALUES
(9, '杜柏霖', 1, 'orqW35abEtio8MwVH9RArbKfXnXQ', 'https://wx.qlogo.cn/mmopen/vi_32/m5tWwzPm5KVwOickx6ISSpWBYs2jsOLGrNezKI7lHIib4iaZGNdwaDpibeWryXia3tHGFxENSayjwWgR4Uhib7f4icJfA/0', 'Hubei,Yichang', '谷雨光影', '1524142900'),
(12, '蓝蓝的天空白白的云', 0, 'orqW35QqKHju3gQxxqxlpDQ4EpjA', 'https://wx.qlogo.cn/mmopen/vi_32/FjlJWMd7oAyLl968icNRf445ddFVgaI1QRwPLNDvjcFSNXEC45UZ2fcnQQAiaeGAzIWS9fmAxQZo2uoyiccttgcVQ/0', ',', '谷雨光影', '1524186789'),
(15, '杜柏霖', 1, 'oEk8Q0fsMkYTdGkgu3sO8wTljwCY', 'https://wx.qlogo.cn/mmopen/vi_32/ZLhicyPutHBMGaBaec9XLG0iakaWxiaSYQiawt4Z2hFibLDFk57V7cgYZDsIsoicRO4duryj10ZoaRGM6veMH883WqUA/0', 'Hubei,Yichang', '谷雨满城花', '1524141860'),
(17, 'ons', 1, 'oEk8Q0Q1ZWxdLJVfF6csXQyAGngw', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJGrDY3cRGPxAbUaqFP2XrL6hNTmibGJLvr6CCWe1ZZkQNQnAB1LDjbHYu1rUEyXFCib47DxXw2kxkg/0', 'Beijing,Chaoyang', '谷雨满城花', '1524204520'),
(18, '董小芬', 0, 'oEk8Q0c1JjDMmQtcypqa6W-DhByo', 'https://wx.qlogo.cn/mmopen/vi_32/Pu4ypQ7T23FWUhoGY2yaOTwehKaEibcibNTJicrRPYN9cCvCHxzubSNobss5QAHNibdFByucfzuc8nIahNhfQKWg4g/132', ',', '谷雨满城花', '1525434467'),
(22, 'jhq1947', 2, 'oEk8Q0e6irTLKVBizCJ36lKR4YsE', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJPeH1KFLCVY48XA8pKTYrW9uCUZp7bZoAFu7vo9KOY4nic5dyiaibBa9fcdRNibk8GicMVzuo8pvTuf8Q/132', ',', '谷雨满城花', '1527361158'),
(23, '助力徐水商家线上活动策划推广', 1, 'oEk8Q0RxgxCTIX7ASwnwEqfKxlbQ', 'https://wx.qlogo.cn/mmopen/vi_32/oaOVcYctvB68DxWAOWPYFm7apTVz85CDppqxNQHALuve6ECD2SXNpCg4lMEePAvJ1bIicASRHfASfgk5K8STTlA/132', 'Hebei,Baoding', '谷雨满城花', '1527852641'),
(26, '沂水华泰人寿谢乐芬', 1, 'orqW35dB8z-I-ht8YQm7cBps7qYM', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83er5JYczT554lDya8nCW9qp1MdtbW7O4L4Ql6emwG41J5s3LU7Kc3J4T0ITm5VR98H5DzEOj5W2rzg/132', 'Shandong,Linyi', '', '1528240636'),
(27, '凝梦-璐璐', 2, 'oEk8Q0YPszWXKoE1INVaVvgFH75c', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLkGlltgEHFVW06zuAu7OVkFoh8nsnSpnWHuGwPZqv1rSiacxrJndkKtqmiaAL8bxsaQO5W1pbe2kyQ/132', 'Hubei,Wuhan', '谷雨满城花', '1529054958'),
(29, 'dfer1', 1, 'ojO8Q0f3cVgVZPvVSLDJCy1N7Rg8', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLtn20j4PibtBA75rnuXtyX7hgdDzW6icNNIJjAlEun0AKS0Iqv6jQLN3GVRmpSIxhj39hCN2icLia3IA/132', '湖北,宜昌', '谷雨霖霖', '1539515007'),
(30, '武松', 0, 'ojO8Q0YfO9d7lSLmi5i4XV3Cfluc', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIkwzHyKeO2Ga8DY9iccMRNz1nnrCWLRlHk5lK4o3wpTLYbRhKFCtB2iaaiam6s1yRMVVZ43nPTQAJDA/132', ',', '谷雨霖霖', '1539515142'),
(31, '杜柏霖', 1, 'ojO8Q0fFfjhWcNzWMvY-hJq4Ldnk', 'https://wx.qlogo.cn/mmopen/vi_32/ibEDauu4c6nNgnStU3icmCy9ITmWysW9Ac61E3Gkf5QCqZj8JTksd16d3YmjXDw6HQTQ5Y0zRz9ib4ZCzR8Lg7f8w/132', '湖北,宜昌', '谷雨霖霖', '1539680270'),
(32, '张清', 0, 'ojO8Q0YYMDp6agZYibDzWfBsw0xw', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIkwzHyKeO2GUbx6dfSTGiby4ibxXq0PicspRscObJGXZUxuicPcfhSzLWDiaqsqYUUSr7PFiaXHfvGzYcQ/132', ',', '谷雨霖霖', '1539682326'),
(35, '杜泊霖', 1, 'opTae4vtb0_nHRaGC5BmFr6AlnFA', 'https://wx.qlogo.cn/mmopen/vi_32/Z3AsrdliaNuq5BIR3tbZMiaXoGGjLQwyo6yTZ288QaAY0xSD0PiaGCk6JoSy91pfpBvhoIQX6Fb8IKPwxjZq8B4Tg/132', '湖北,宜昌', '谷雨论坛', '1540126776'),
(36, '花荣', 0, 'opTae4gTNHyYzrbp_ijB3SnHQy6c', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIyKia6JG4OibDTFibax97rGJU2Rv0XfxaWGB1uzJvQicNm0rYiaNAXhkdMJcwCibw0vzYiaQo5RF4ET6SSg/132', ',', '谷雨论坛', '1540139004'),
(37, '巴掌脸攻击', 2, 'opTae4l-ZDkr1ALN3sXFhKroD0TA', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJwUg8IAp8UwWv7wmeWXaaOYx9sFicwxlvrR7lHgMemQ9a3xNRQYQovkSpIWjCy1qaLzOsQ031VSjA/132', ',', '谷雨论坛', '1540176251'),
(38, 'Jay', 1, 'undefined', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIGKNrEibvBDrO3kOVCdznSk3xWOtq4ntvt7aibwbAokegopOUhMDPTNvJiaoDjktuUYkA8vgVLLl8VA/132', '湖北,宜昌', '谷雨光影', '1540180083'),
(39, '卢俊义', 0, 'opTae4lYN8w7T5CrtRpGdtjP_RMM', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKK5QQcXhUwfCXBiarWZnZbqAoWtJlG25W3ibP4ibaiaRLV1OwlEqWzTWicZ5uQygvV0atjFxz9DkNibw2A/132', ',', '谷雨论坛', '1540180931'),
(40, '李应', 0, 'ojO8Q0XhbqPXbfPya5zRG-BZWPAs', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLAvtsZsukLwrXib2iaU1X7KzxdFjF7BEotcvAQmC9QAnX9vdOqNzzSwWaX7yLO4EfRqZPNG8agDBDA/132', ',', '谷雨霖霖', '1540738623'),
(41, '武松', 0, 'oEk8Q0RSq0r1f3rFMASY7ntK5dpM', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIB0YU09bBbHXqXPZPxmLP17wYynldXvic7RWGsO4Rvk1kv3dB4LvGNg7iaGZIOrtARJMO5LpWF3Miag/132', ',', '谷雨满城花', '1540738904'),
(42, '公孙胜', 0, 'opTae4vfoefQzDdJLHwnCecylhgc', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJISBBKTreS5VBfactNLUuxIMYPIViaCMnL9wjzgHNn87VG7ibQep8Z5CkQibHKMbaicE06kzHneHCFmw/132', ',', '谷雨论坛', '1540789560'),
(43, '林冲', 0, 'opTae4iPuGnMGKNoKbS19rDMAafk', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIdfX2eme8upreJjqZSpWS7hw18icpmrqdGFXOvgDqvuoWRqziaP2nKexfqOqMfD9DZLhxEV2TMsW1g/132', ',', '谷雨论坛', '1540791494'),
(44, 'dfer1', 1, 'oEk8Q0SKrAuYK9sF6evMs4jCzBAo', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ5nKRcTbnl3OF2AYmzvASibWNOCwxGnNdOjm1pcDWlLOfPZl4e63gJ1mleEsGr5sjlseviaPO3mGIQ/132', '湖北,宜昌', '谷雨霖霖', '1540793079'),
(45, '吴用', 0, 'opTae4hZjryDlg6SYzOl0c3sfRhU', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK7pBPqOxC3vuHKBxyhygaR5IjLh7UAPibJLw97B3wRzrD9qXbV4fzia0SmPfFSJZXhljCE7Uxs95rg/132', ',', '谷雨论坛', '1540796755'),
(46, '也力。', 1, 'opTae4iGTcTN9jX1kU1rqc194V1A', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ep87oGszh5yvlzQWjvhicPiagDfBWc0Z5nL7FfJAQ8AQ9lJ2ugQeNKibt0kDrNQ2w3HAon0E0qmHPJrQ/132', '山东,东营', '谷雨论坛', '1540977455'),
(47, '证明自己', 1, 'opTae4gYR2xeR0urkKS5yys4Pr3g', 'https://wx.qlogo.cn/mmopen/vi_32/L8mzhKNSy7YCpdfSxnBicheZpgkcdA2qTpmFY803O9e0Wibe1eJic9TuA5At2vsS4KH7N8bGzBepN9fdTNbEYBfCg/132', '湖北,宜昌', '谷雨论坛', '1540978624');

-- --------------------------------------------------------

--
-- 表的结构 `sp_forum`
--

CREATE TABLE `sp_forum` (
  `Id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `userId` varchar(35) DEFAULT NULL COMMENT '用户id',
  `content` longtext,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sp_forum`
--

INSERT INTO `sp_forum` (`Id`, `title`, `description`, `userId`, `content`, `time`) VALUES
(20, '论坛留言', '', 'opTae4vtb0_nHRaGC5BmFr6AlnFA', '谷雨论坛小程序开通了，大家踊跃发言吧！', '2018-10-22 00:09:10'),
(21, '论坛留言', '', 'opTae4vtb0_nHRaGC5BmFr6AlnFA', '测试', '2018-10-28 23:17:37'),
(22, '论坛留言', '', 'opTae4vtb0_nHRaGC5BmFr6AlnFA', '老赵、老简，以后聊天来这里', '2018-10-31 00:23:17'),
(23, '论坛留言', '', 'opTae4iGTcTN9jX1kU1rqc194V1A', '请介绍一下这款软件的主要功能。', '2018-10-31 17:20:07');

-- --------------------------------------------------------

--
-- 表的结构 `sp_forum_about`
--

CREATE TABLE `sp_forum_about` (
  `Id` int(11) NOT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `title` varchar(55) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sp_forum_about`
--

INSERT INTO `sp_forum_about` (`Id`, `menu`, `title`, `pic`, `content`) VALUES
(1, NULL, '1. www.dfer.top', NULL, '<p><view class=\"title\">关于此论坛</view></p><p><view>日常交流的论坛</view></p><p><view></view>​<br></p><ul><li><p></p></li></ul><ul><li style=\"color: inherit;\"><p><span style=\"color: inherit;\">欢迎访问作者官网1&nbsp;</span><br></p></li><li style=\"color: inherit;\"><p><span style=\"color: inherit;\"></span><br></p></li><li><p><br></p></li></ul>');

-- --------------------------------------------------------

--
-- 表的结构 `sp_forum_reply`
--

CREATE TABLE `sp_forum_reply` (
  `Id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `userId` varchar(35) DEFAULT NULL COMMENT '用户id',
  `Pid` int(11) DEFAULT NULL COMMENT '文章id',
  `content` longtext,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sp_forum_reply`
--

INSERT INTO `sp_forum_reply` (`Id`, `title`, `description`, `userId`, `Pid`, `content`, `time`) VALUES
(13, '文章评论', NULL, 'opTae4vtb0_nHRaGC5BmFr6AlnFA', 20, '哈哈', '2018-10-22 00:09:31'),
(14, '文章评论', NULL, 'opTae4vtb0_nHRaGC5BmFr6AlnFA', 20, '这只是首发版', '2018-10-22 00:10:06'),
(15, '文章评论', NULL, 'opTae4vtb0_nHRaGC5BmFr6AlnFA', 20, '哈哈', '2018-10-29 13:05:57'),
(16, '文章评论', NULL, 'opTae4vtb0_nHRaGC5BmFr6AlnFA', 20, '你', '2018-10-31 00:04:18'),
(17, '文章评论', NULL, '', 22, '测试\n', '2018-10-31 17:17:48'),
(18, '文章评论', NULL, '', 22, '测试\n', '2018-10-31 17:18:00'),
(19, '文章评论', NULL, 'opTae4vtb0_nHRaGC5BmFr6AlnFA', 23, 'l', '2018-10-31 17:28:01'),
(20, '文章评论', NULL, 'opTae4vtb0_nHRaGC5BmFr6AlnFA', 23, '就论坛，聊聊天', '2018-10-31 17:28:49');

-- --------------------------------------------------------

--
-- 表的结构 `sp_meinv_content`
--

CREATE TABLE `sp_meinv_content` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'ID',
  `content` varchar(5000) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '标题',
  `category` varchar(20) DEFAULT NULL COMMENT '分类',
  `addtime` int(11) NOT NULL,
  `dir` varchar(50) DEFAULT NULL COMMENT '目录',
  `url` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sp_meinv_content`
--

INSERT INTO `sp_meinv_content` (`id`, `content`, `name`, `category`, `addtime`, `dir`, `url`, `image`) VALUES
(36, 'http://pic.dfer.top/upload/file/file_20180414055606.JPG,http://pic.dfer.top/upload/file/file_20180414055551.JPG,http://pic.dfer.top/upload/file/file_20180414055531.JPG,', '书法鉴赏1', '书法鉴赏', 1539682189, NULL, '', 'upload/file/file_20180414055606.JPG'),
(37, 'http://pic.dfer.top/upload/file/file_20180414055513.JPG,http://pic.dfer.top/upload/file/file_20180414055454.JPG,http://pic.dfer.top/upload/file/file_20180414055342.JPG,', '书法鉴赏2', '书法鉴赏', 1539682189, NULL, '', 'upload/file/file_20180414055513.JPG'),
(38, 'http://pic.dfer.top/upload/file/file_20180414055206.JPG,http://pic.dfer.top/upload/file/file_20180414055121.JPG,http://pic.dfer.top/upload/file/file_20180414055040.JPG,', '书法鉴赏3', '书法鉴赏', 1539682189, NULL, '', 'upload/file/file_20180414055206.JPG'),
(39, 'http://pic.dfer.top/upload/file/file_20180414035609.JPG,http://pic.dfer.top/upload/file/file_20180414035554.JPG,http://pic.dfer.top/upload/file/file_20180414035536.JPG,', '书法鉴赏4', '书法鉴赏', 1539682189, NULL, '', 'upload/file/file_20180414035609.JPG'),
(40, 'http://pic.dfer.top/upload/file/file_20180414035439.JPG,http://pic.dfer.top/upload/file/file_20180414035411.JPG,http://pic.dfer.top/upload/file/file_20180414034233.png,', '书法鉴赏5', '书法鉴赏', 1539682189, NULL, '', 'upload/file/file_20180414035439.JPG');

-- --------------------------------------------------------

--
-- 表的结构 `sp_user`
--

CREATE TABLE `sp_user` (
  `Id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT '',
  `msg` varchar(100) DEFAULT '',
  `pic` varchar(100) DEFAULT '',
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sp_user`
--

INSERT INTO `sp_user` (`Id`, `name`, `msg`, `pic`, `time`) VALUES
(1, '1', '<p>									</p><p>									3</p><p>																	</p><p>								</p><p>								</p>', 'upload/file/file_20180412125747.png', '1523465877');

-- --------------------------------------------------------

--
-- 表的结构 `tourshow`
--

CREATE TABLE `tourshow` (
  `Id` int(11) NOT NULL,
  `redirecturl` varchar(100) DEFAULT '',
  `mainimg` varchar(100) DEFAULT 'http://www.df315.top/upload/AdminPic/AdminPic_1706011702301411011.jpg',
  `title` varchar(100) DEFAULT '标题',
  `description` varchar(100) DEFAULT '描述',
  `content` varchar(100) DEFAULT NULL,
  `html` longtext,
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tourshow`
--

INSERT INTO `tourshow` (`Id`, `redirecturl`, `mainimg`, `title`, `description`, `content`, `html`, `time`) VALUES
(1, '1231231111', 'upload/file/file_20181013065844.jpg', '与故相会', '', '', '<p><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">大燕之地，尘世街。&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">一对少年男女并肩走着，衣袂飘飘，十分赏心悦目。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">那少年倒是安静的走着， 身旁的少女却不安分的东张西望，摊前的各种稀奇小玩意儿对她来说都有着巨大的吸引力。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">突然，她像是发现了什么不得了的东西，眼里闪着星星点点的光，快步小跑过去。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“师妹。”&nbsp;</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">无奈地叹息一声，脚步却很诚实地跟了过去。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">原来是两个人偶，一男一女。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">公孙丽将它们拿在手上摸了又摸，爱不释手。她闭了闭眼，忽然冲</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">温软一笑，“荆师兄。”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">心头一颤，急急避开眼，“嗯？”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">她举起人偶，眨了眨眼，问，“荆师兄，你看这两个人偶，像不像我和你？”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">闻言垂眸，听公孙丽这么一说，他突然觉得还真像，头发，面庞，惟妙惟肖。注意到她艳羡的神情，荆轲握着长剑的手一紧，眼中迅速闪过一丝暗芒，但口中仍不自觉地说了一句，“你要是想要这个，师兄便买给你。”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">公孙丽莞尔一笑，想了想，最终还是没有拿，对着</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">说：“不了。荆师兄，我们盘缠有限，还是留着赶路吧。”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“没事。我们就快到了，况且这东西也要不了几文钱。”</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">说，漫不经心的嗓音带着笑，让人如沐春风。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“谢谢师兄！” 她笑得灿烂。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63IFcatQtz+CnsOkAysR6vAImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63IFcatQtz+CnsOkAysR6vAImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">桃花林</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">，芳香阵阵。一片又一片的花瓣极慢极慢地往下坠去。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">底下有人在练剑，飞扬欢脱，凌空而起，玄妙地不可思议。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">弯腰拾起一枚石子，砸向那人，明明就快要砸中脑袋，却被他反身一旋，抄在手里。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“可惜。” 那人缓缓落地，石子卡在他的指缝间，走到</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">面前，语气里带着些许玩世不恭的笑意，“大哥没有打中我呢。”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">仅仅沉默了片刻，开口时，眸光中竟有一丝奇异的柔软，“</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw636h6BYTc8ifZAiJpip8udut6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw636h6BYTc8ifZAiJpip8udut6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">小高</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">。”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“大哥。”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“哼，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">高渐离</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">！” 公孙丽突然跳至他跟前，双手交叉抱在胸前，佯装怒意，“你只知道大哥，我就在他后面你都没看见，你眼里还有没有我这个师姐了？”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“师姐？”&nbsp;</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">高渐离</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">眼中现出惊喜之色，“你也来了？”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“那可不是。”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">高渐离</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">笑道，“是是是，怪我看见大哥太开心了，师姐恕罪！”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">公孙丽抿嘴一笑道，“你好像挺怕我嘛。”&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">高渐离</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">苦笑道，“我不是怕你，我是怕</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlK1jsKsUQisoImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlK1jsKsUQisoImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">荆大哥</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">。” 他看向身旁的</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">目光深邃，若有所思。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“诶？”</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">高渐离</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">像是突然想到了什么，“师父呢？”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">眼角余光很快扫了一眼公孙丽，见她有些失落，他眸中微动，垂眼道，“师父……与</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw613Pu80YpMHzqVXch4A+Hxmt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw613Pu80YpMHzqVXch4A+Hxmt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">莒城</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">，共亡了。”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">言罢，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61wKKL7J1HyDFZzj6ey7JErImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">高渐离</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">脸色一变，心一瞬间沉到了谷底。</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63IFcatQtz+CnsOkAysR6vAImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63IFcatQtz+CnsOkAysR6vAImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">桃花林</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">中，三人</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61T8q+G3gX1OAZtozCygbu9t6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61T8q+G3gX1OAZtozCygbu9t6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">久久</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">站立。一时间竟不知该说什么。</span></p>', '2018-10-16');
INSERT INTO `tourshow` (`Id`, `redirecturl`, `mainimg`, `title`, `description`, `content`, `html`, `time`) VALUES
(2, '', 'upload/file/file_20181013071114.jpg', '城门诀别', '齐王建四十年，晚秋。', '', '<p><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGf7cMk6AYA03ImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGf7cMk6AYA03ImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">齐王建</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">四十年，晚秋。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw613Pu80YpMHzqVXch4A+Hxmt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw613Pu80YpMHzqVXch4A+Hxmt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">莒城</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">战乱，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61oeK5icrXeOCM7LYa7hIEm3wdOcTaIzyi3pfKJtUWCTmbiqSAktLJqqLWTl1lvUfFqNlSJIytsQp5IKCk7LzVkqJXNWFrLCpVHIOSuyipjTzXtow+45UvmPOq7N05Y1qgKNVfro34su9ERiLVC8pp+D4o5K74+Jt0gNuMtMpRQmwZI/sjpNWmrTFAs8dm4/K1Obt/DTmiYJXY9qHh6BM0y\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61oeK5icrXeOCM7LYa7hIEm3wdOcTaIzyi3pfKJtUWCTmbiqSAktLJqqLWTl1lvUfFqNlSJIytsQp5IKCk7LzVkqJXNWFrLCpVHIOSuyipjTzXtow+45UvmPOq7N05Y1qgKNVfro34su9ERiLVC8pp+D4o5K74+Jt0gNuMtMpRQmwZI/sjpNWmrTFAs8dm4/K1Obt/DTmiYJXY9qHh6BM0y\">秦王嬴政</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">加快了对</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGfMTB7crGn9vt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGfMTB7crGn9vt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">齐国</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">的攻势，烽火连绵的祸事自北向南边都城蔓延。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">，快带</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63gR1mh8ctvvRhg2oFRdBawt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63gR1mh8ctvvRhg2oFRdBawt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">丽儿</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">走！城外已经备好了马车，丽儿，就交给你照顾了！”</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw613Pu80YpMHzqVXch4A+Hxmt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw613Pu80YpMHzqVXch4A+Hxmt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">莒城</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">城门，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGfMTB7crGn9vt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGfMTB7crGn9vt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">齐国</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">大将</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">公孙羽</a><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw6360YIh7E50KRZTQa+TSR5Vye1RRZ6J0mG3pfKJtUWCTmbiqSAktLJqqLWTl1lvUfFqNlSJIytsQp5IKCk7LzVkqJXNWFrLCpVHIOSuyipjTzXtow+45UvmPOq7N05Y1qgKNVfro34su9ERiLVC8pp+D4o5K74+Jt0gNuMtMpRQmwZI/sjpNWmrTFAs8dm4/K1Obt/DTmiYJXY9qHh6BM0y\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw6360YIh7E50KRZTQa+TSR5Vye1RRZ6J0mG3pfKJtUWCTmbiqSAktLJqqLWTl1lvUfFqNlSJIytsQp5IKCk7LzVkqJXNWFrLCpVHIOSuyipjTzXtow+45UvmPOq7N05Y1qgKNVfro34su9ERiLVC8pp+D4o5K74+Jt0gNuMtMpRQmwZI/sjpNWmrTFAs8dm4/K1Obt/DTmiYJXY9qHh6BM0y\">声音嘶哑</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">，血红的双眼死死盯着面前的少年。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“爷爷……” 苦涩满满溢上心头，热泪一点点漫过眼眶，满眸雾色中，少女低低地唤了一声，声调转而升高：“不！我不走…爷爷，要走我们一起走！”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">依旧是她熟悉的面庞，脸色却十分苍白，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">公孙羽</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">握住他的肩膀，“</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63gR1mh8ctvvRhg2oFRdBawt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63gR1mh8ctvvRhg2oFRdBawt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">丽儿</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">，听爷爷的话，以后，你就跟着</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">，啊？”公孙羽看了一眼身后的少年，那是他的大弟子荆轲，也是他最信任的徒弟。少年微垂着眸，似乎在思考着什么。公孙羽转而又看向少女，“不要管爷爷，齐王...对我有知遇之恩，我不能在这危难时刻弃国家，弃百姓于不顾，我必须留下来！丽儿，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63iejwHTNtkrYdFxPSQkz3Ct6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63iejwHTNtkrYdFxPSQkz3Ct6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">快走</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">吧，再不走，就没时间了！”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“我不会走的！爷爷，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGfMTB7crGn9vt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGfMTB7crGn9vt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">齐国</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">也是我的家，我要留下来和你一起战斗！” 少女的声音还是稚嫩的，可说出来的话却是那样坚定。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“轰——”又是一声炸响，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">公孙羽</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">长眉一蹙，大吼一声：“</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">！”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“爷…” 声音戛然而止，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">一记手刀直截了当地斩在她的后颈，随即伸手接住她软倒的身体，双眼微眯，一把将她抱起朝不远处的马车</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63iejwHTNtkrZrSgRp3q7mIImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63iejwHTNtkrZrSgRp3q7mIImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">快步走</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">去。终是放心不下，他回头深深地看了一眼，却见</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">公孙羽</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">逐渐露出欣慰的笑容，他更加抱紧了怀中的人，踏上马车，驾车离去。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">师父，您的期望，我必将全力以赴。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">看着马车渐行渐远，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63yId6ZH9c2/8/MzYA6pQjCImOuUl9obIdesUqvhcRz+iEQkSXZ+ntRTKCgqz6IivgtjO1hMDXnS43RDmR8I0b+AQVCPRaueoEKs0Fk2ke9LMezOIcW3ZL4NCnyuCzVvMFsZjJBF2IjQ7KFC3HvePoIRbTHIUoEaoTvScR5Gs9GKQz4s1O3JZdsokSYEqVG3lEN0JW7pjPTVTA8Zu4mdgY0\">公孙羽</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">轻叹一声，终于放下心来。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">他再也没有犹豫，转身投入了战火之中。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">公元前224年秋，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw613Pu80YpMHzqVXch4A+Hxmt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw613Pu80YpMHzqVXch4A+Hxmt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">莒城</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">， 沦。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">一声惊呼自唇边溢出，公孙丽自榻上惊醒。&nbsp;</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63mrUaqxBx0Sz3w7uNZ/Ldct6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63mrUaqxBx0Sz3w7uNZ/Ldct6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">梦魇</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">缠身，她鬓发微微凌乱，脸颊苍白一片。缓了好一会儿，她才转过头看去，可身边并没有人。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">荆师兄呢？</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“荆师兄……” 她虚弱地唤了一声，听到逐渐放大的脚步声，始终皱着的眉才舒展开。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“师妹，你醒了。” 一直候在门外的</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">听到她的呼唤，赶紧走至她身边，给她递上杯盏，安抚道：“喝点</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw6227hspu0CaUlFRH6HNs91mt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw6227hspu0CaUlFRH6HNs91mt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">水吧</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">。”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">她微颤的双手缓缓接过，略带质问的语气：“荆师兄，你为什么不去救爷爷？为什么不带他和我们一起走？”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">放下了手，垂下眼睫，但很快又抬起，沉静的眸中无悲无喜，道：“师妹，这是师父的遗愿。</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGfMTB7crGn9vt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw62kzw9OR+JxGfMTB7crGn9vt6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">齐国</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">...对他而言太重要了。” 他顿了顿，“就算我真的带他走了，他还是会回去和齐国共存亡的。”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">公孙丽红着眼，冲</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">哽咽地喊道：“可是我只有爷爷一个亲人了！我是爷爷带大的，他现在一定已经……”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">眼前画面闪烁，</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">抬手握住她瘦削的肩膀，一字一句，语调坚定：“师妹，以后，我就是你的亲人，我不会，让任何人伤害你。”</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">“师兄…”公孙丽呢喃着，内心说不出的感动。</span><br style=\"color: rgb(51, 51, 51); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: normal;\"><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw620rBDGekqwlH1w8qmdBKeft6XyibVFgk5m4qkgJLSyaqi1k5dZb1HxajZUiSMrbEKeSCgpOy81ZKiVzVhaywqVRyDkrsoqY0817aMPuOVL5jzquzdOWNaoCjVX66N+LLvREYi1QvKafg+KOSu+PibdIDbjLTKUUJsGSP7I6TVpq0xQLPHZuPytTm7fw05omCV2Pah4egTNMg==\">荆轲</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">心中一动，压抑下心中莫名涌起的冲动，嘴角弯起一个</span><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63Mlo1sr6DubSe81ZjrPKeTToPVhDBxFRC3pfKJtUWCTmbiqSAktLJqqLWTl1lvUfFqNlSJIytsQp5IKCk7LzVkqJXNWFrLCpVHIOSuyipjTzXtow+45UvmPOq7N05Y1qgKNVfro34su9ERiLVC8pp+D4o5K74+Jt0gNuMtMpRQmwZI/sjpNWmrTFAs8dm4/K1Obt/DTmiYJXY9qHh6BM0y\" class=\"ps_cb\" target=\"_blank\" style=\"box-sizing: content-box; color: rgb(45, 100, 179); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\" _href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63Mlo1sr6DubSe81ZjrPKeTToPVhDBxFRC3pfKJtUWCTmbiqSAktLJqqLWTl1lvUfFqNlSJIytsQp5IKCk7LzVkqJXNWFrLCpVHIOSuyipjTzXtow+45UvmPOq7N05Y1qgKNVfro34su9ERiLVC8pp+D4o5K74+Jt0gNuMtMpRQmwZI/sjpNWmrTFAs8dm4/K1Obt/DTmiYJXY9qHh6BM0y\">若有似无</a><span style=\"color: rgb(51, 51, 51); white-space: normal; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; display: inline-block !important;\">的弧度，搂紧了她。</span></p>', '2018-10-16');

-- --------------------------------------------------------

--
-- 表的结构 `webctl_main`
--

CREATE TABLE `webctl_main` (
  `Id` int(11) NOT NULL,
  `website` varchar(300) DEFAULT '',
  `hits` int(11) DEFAULT '0',
  `subs` varchar(100) DEFAULT '' COMMENT '备注',
  `begintime` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `webctl_main`
--

INSERT INTO `webctl_main` (`Id`, `website`, `hits`, `subs`, `begintime`, `time`) VALUES
(1, 'https://www.dfer.top/', 66, '自己的站', '1526281379', '1530508982'),
(12, 'http://wx.dfer.top/', 3825, '', '1526365572', '1530565532'),
(13, 'http://x.grain-rain.xyz/', 1118, '动物园', '1526365786', '1529570719'),
(16, 'http://www.dfer.top/', 17835, '', '1526369795', '1530680662'),
(17, 'http://tourism.dfer.top/', 188, '', '1526370174', '1529566315'),
(18, 'http://grain-rain.com/', 4, '', '1526968700', '1529852618'),
(65, 'http://www.idaorui.com/web/index.php?c=site&a=entry&eid=264&version_id=0', 5, 'idaorui', '1527581689', '1529632353'),
(66, 'http://www.yichangmingcuigu.com/', 35, '', '1527655144', '1530245583'),
(67, 'http://www.animon.cn/', 1, '', '1527886237', '1527886237'),
(68, 'http://shop.dfer.top/', 7, '', '1528861104', '1529580229'),
(69, 'http://xwq.idaorui.com/web/index.php?c=site&a=entry&eid=52&version_id=0', 2, '', '1529462635', '1529632299'),
(70, 'http://www.idaorui.com/', 128, '', '1529667792', '1530669098'),
(71, 'http://192.168.1.104:81/', 23, '', '1530162813', '1530595845');

-- --------------------------------------------------------

--
-- 表的结构 `wx`
--

CREATE TABLE `wx` (
  `Id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT '',
  `appid` varchar(100) DEFAULT '',
  `apps` varchar(100) DEFAULT '',
  `time` datetime DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '公众号类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wx`
--

INSERT INTO `wx` (`Id`, `title`, `appid`, `apps`, `time`, `type`) VALUES
(1, '谷雨网络科技', 'wx84f87e32a762212a', 'a56d72faf30aafb3fba3c3e4d42359df', '2018-10-31 13:18:44', 0),
(2, '谷雨霖霖', 'wx6a03a8c0fa5ca1fb', '39b62d7cc91cd9f6be599a0aa4b26ce5', '2018-10-31 13:18:38', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wx_share`
--

CREATE TABLE `wx_share` (
  `Id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT '标题',
  `description` varchar(100) DEFAULT '描述',
  `link` varchar(100) DEFAULT '',
  `imgUrl` varchar(100) DEFAULT 'http://www.df315.top/favicon.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wx_share`
--

INSERT INTO `wx_share` (`Id`, `title`, `description`, `link`, `imgUrl`) VALUES
(1, '谷雨网络	', '公司', 'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=1', 'upload/file/file_20180318032733.jpg'),
(2, '❤️', 'Love', 'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=2', 'upload/file/file_20181031123411.JPG'),
(3, '漩涡', '旋转的世界', 'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=3', 'upload/file/file_20181031042019.JPG'),
(4, '梦', '蝶', 'http://df.dfer.top/index.php?A=iframe&c=home&a=index&para=4', 'upload/file/file_20181102051830.png');

-- --------------------------------------------------------

--
-- 表的结构 `xj_order`
--

CREATE TABLE `xj_order` (
  `Id` int(11) NOT NULL,
  `out_trade_no` varchar(100) DEFAULT '商户订单号',
  `trade_no` varchar(100) DEFAULT '支付宝交易号',
  `trade_status` varchar(100) DEFAULT '交易状态',
  `subject` varchar(100) DEFAULT '标题',
  `body` varchar(100) DEFAULT '描述',
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `zfb_order`
--

CREATE TABLE `zfb_order` (
  `Id` int(11) NOT NULL,
  `out_trade_no` varchar(100) DEFAULT NULL COMMENT '商户订单号',
  `trade_no` varchar(100) DEFAULT NULL COMMENT '支付宝交易号',
  `trade_status` varchar(100) DEFAULT NULL COMMENT '交易状态',
  `subject` varchar(100) DEFAULT NULL COMMENT '标题',
  `body` varchar(100) DEFAULT NULL COMMENT '描述',
  `receipt_amount` decimal(50,2) DEFAULT NULL COMMENT '交易金额',
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zfb_order`
--

INSERT INTO `zfb_order` (`Id`, `out_trade_no`, `trade_no`, `trade_status`, `subject`, `body`, `receipt_amount`, `time`) VALUES
(19, 'Df-1540545108-467135425-117.150.9.88', '2018102622001495201007540625', 'TRADE_SUCCESS', '打赏一下', 'dddddfffffadf大发生的', '1.00', '2018-10-26 17:11:57'),
(20, 'Df-1540545175-28481585-117.150.9.88', '2018102622001495201007653088', 'TRADE_SUCCESS', '打赏一下', '短发的身份', '0.10', '2018-10-26 17:13:04'),
(21, 'Df-1540546563-341578828-117.150.9.88', '2018102622001495201007273465', 'TRADE_SUCCESS', '打赏一下', '2', '1.00', '2018-10-26 17:36:21'),
(22, 'Df-1540547003-1457215806-117.150.9.88', '2018102622001495201007245918', 'TRADE_SUCCESS', '打赏一下', 'ddd', '0.10', '2018-10-26 17:43:36'),
(23, 'Df-1542199117-745930338-117.150.9.100', '2018111422001495201013442068', 'TRADE_SUCCESS', '测试', '学习学习学习', '0.10', '2018-11-14 20:40:17');

--
-- 转储表的索引
--

--
-- 表的索引 `ads_dt`
--
ALTER TABLE `ads_dt`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `back_muscles`
--
ALTER TABLE `back_muscles`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- 表的索引 `column`
--
ALTER TABLE `column`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `data_air_tem`
--
ALTER TABLE `data_air_tem`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `data_cpu`
--
ALTER TABLE `data_cpu`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `df`
--
ALTER TABLE `df`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `dt`
--
ALTER TABLE `dt`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `home_column`
--
ALTER TABLE `home_column`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `home_layout`
--
ALTER TABLE `home_layout`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `home_layout_img`
--
ALTER TABLE `home_layout_img`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `home_link`
--
ALTER TABLE `home_link`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `home_music`
--
ALTER TABLE `home_music`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `html`
--
ALTER TABLE `html`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `iFrame_link`
--
ALTER TABLE `iFrame_link`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `notepad`
--
ALTER TABLE `notepad`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `shopshow`
--
ALTER TABLE `shopshow`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `sp_club_music`
--
ALTER TABLE `sp_club_music`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `sp_club_user`
--
ALTER TABLE `sp_club_user`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `sp_forum`
--
ALTER TABLE `sp_forum`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `sp_forum_about`
--
ALTER TABLE `sp_forum_about`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `sp_forum_reply`
--
ALTER TABLE `sp_forum_reply`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `sp_meinv_content`
--
ALTER TABLE `sp_meinv_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- 表的索引 `sp_user`
--
ALTER TABLE `sp_user`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `tourshow`
--
ALTER TABLE `tourshow`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `webctl_main`
--
ALTER TABLE `webctl_main`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `wx`
--
ALTER TABLE `wx`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `wx_share`
--
ALTER TABLE `wx_share`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `xj_order`
--
ALTER TABLE `xj_order`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `zfb_order`
--
ALTER TABLE `zfb_order`
  ADD PRIMARY KEY (`Id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ads_dt`
--
ALTER TABLE `ads_dt`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `back_muscles`
--
ALTER TABLE `back_muscles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `column`
--
ALTER TABLE `column`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `data_air_tem`
--
ALTER TABLE `data_air_tem`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- 使用表AUTO_INCREMENT `data_cpu`
--
ALTER TABLE `data_cpu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- 使用表AUTO_INCREMENT `df`
--
ALTER TABLE `df`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `dt`
--
ALTER TABLE `dt`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `home_column`
--
ALTER TABLE `home_column`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `home_layout`
--
ALTER TABLE `home_layout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `home_layout_img`
--
ALTER TABLE `home_layout_img`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `home_link`
--
ALTER TABLE `home_link`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `home_music`
--
ALTER TABLE `home_music`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `html`
--
ALTER TABLE `html`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `iFrame_link`
--
ALTER TABLE `iFrame_link`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `logs`
--
ALTER TABLE `logs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2301;

--
-- 使用表AUTO_INCREMENT `menu`
--
ALTER TABLE `menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `notepad`
--
ALTER TABLE `notepad`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `roles`
--
ALTER TABLE `roles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `seo`
--
ALTER TABLE `seo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `shopshow`
--
ALTER TABLE `shopshow`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sp_club_music`
--
ALTER TABLE `sp_club_music`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `sp_club_user`
--
ALTER TABLE `sp_club_user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用表AUTO_INCREMENT `sp_forum`
--
ALTER TABLE `sp_forum`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用表AUTO_INCREMENT `sp_forum_about`
--
ALTER TABLE `sp_forum_about`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sp_forum_reply`
--
ALTER TABLE `sp_forum_reply`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `sp_meinv_content`
--
ALTER TABLE `sp_meinv_content`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `sp_user`
--
ALTER TABLE `sp_user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tourshow`
--
ALTER TABLE `tourshow`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `webctl_main`
--
ALTER TABLE `webctl_main`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- 使用表AUTO_INCREMENT `wx`
--
ALTER TABLE `wx`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `wx_share`
--
ALTER TABLE `wx_share`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `xj_order`
--
ALTER TABLE `xj_order`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `zfb_order`
--
ALTER TABLE `zfb_order`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
