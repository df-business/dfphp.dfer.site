#更新文档

***

***2020.6***
- 对浏览器内核及php版本进行检测和限制

***2020.5***
- 分离了pc端和wap端的页面

***old***
```

ALTER TABLE `home_layout` ADD color varchar(10) DEFAULT '' COMMENT '主体字体颜色';
ALTER TABLE `home_layout` ADD `keywords` VARCHAR(100);
ALTER TABLE `home_layout` ADD `description` VARCHAR(100);

ALTER TABLE `home_layout` ADD musicPlay tinyint DEFAULT 0 COMMENT '音乐自动播放'; 

```