create database seckill;

show databases;

use seckill;

create table seckill
(
    `seckill_id`  bigint       NOT NULL AUTO_INCREMENT COMMENT '商品库存id',
    `name`        varchar(120) NOT NULL COMMENT '商品名称',
    `number`      int          NOT NULL COMMENT '库存数量',
    `start_time`  timestamp    NOT NULL COMMENT '秒杀开启时间',
    `end_time`    timestamp    NOT NULL COMMENT '秒杀结束时间',
    `create_time` timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (seckill_id),
    KEY idx_start_time (start_time),
    KEY idx_end_time (end_time),
    KEY idx_create_time (create_time)
) ENGINE = InnoDb
  AUTO_INCREMENT = 1000
  DEFAULT CHARSET = UTF8 COMMENT '秒杀库存表';

ALTER TABLE seckill
    DROP INDEX idx_create_time,
    ADD INDEX idx_c_s(start_time, create_time);


INSERT INTO seckill(name, number, start_time, end_time)
VALUES ('1000元秒杀iPhone6', 100, '2015-11-01 00:00:00', '2015-11-02 00:00:00'),
       ('500元秒杀ipad2', 200, '2015-11-01 00:00:00', '2015-11-02 00:00:00'),
       ('300元秒杀小米4', 300, '2015-11-01 00:00:00', '2015-11-02 00:00:00'),
       ('200元秒杀红米note', 400, '2015-11-01 00:00:00', '2015-11-02 00:00:00');

CREATE TABLE success_killed
(
    `seckill_id` BIGINT NOT NULL COMMENT '秒杀商品id',
    `user_phone` BIGINT NOT NULL COMMENT '用户手机号',
    `state` TINYINT NOT NULL DEFAULT -1 COMMENT '状态标识:-1:无效 0:成功 1:已付款 2:已发货',
    `create_time` TIMESTAMP NOT NULL COMMENT '创建时间',
    primary key (seckill_id, user_phone),
    key idx_create_time(create_time)
)ENGINE = INNODB DEFAULT CHARSET = UTF8 COMMENT '秒杀成功明细表';

drop table success_killed