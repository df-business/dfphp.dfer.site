## 2023年8月14日
v2.1
全面优化

## 2023年7月13日
v2.0

## 2022年1月23日15:51:23
- 数据库开启事务。防止高并发
- datatables汉化

## 2021年10月11日16:13:41
- 支持html访问

```
http://dfphp.dfer.top/homepage/home/index.html
```

## 2021年8月28日15:45:58
- 优化数据库操作函数
- 更新分页js脚本，后台增加动态分页函数


***

## 2020.6
- 对浏览器内核及php版本进行检测和限制
- 完善了pc端和wap端的页面分离

## 2020.5
- 分离了pc端和wap端的页面

## old
```

ALTER TABLE `home_layout` ADD color varchar(10) DEFAULT '' COMMENT '主体字体颜色';
ALTER TABLE `home_layout` ADD `keywords` VARCHAR(100);
ALTER TABLE `home_layout` ADD `description` VARCHAR(100);

ALTER TABLE `home_layout` ADD musicPlay tinyint DEFAULT 0 COMMENT '音乐自动播放';

```
