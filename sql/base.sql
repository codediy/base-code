create table if not exists doctor_day_data
(
    id            int auto_increment ,
    ys_id         int                     null comment '医生id',
    year   int(5)      default 0   null comment '年',
    month   tinyint(4)      default 0   null comment '月',
    day     tinyint(4)      default 0   null comment '日',
    referral_in_num   int(5)      default 0   null comment '转入数量',
    referral_out_num   int(5)      default 0   null comment '转出数量',
    recipel_num   int(5)      default 0   null comment '处方数量',
    inspection_num   int(5)      default 0   null comment '检验检查数量',
    chat_num   int(5)      default 0   null comment '随访数量',
    chat_group_num   int(5)      default 0   null comment '交流数量',
    gauge_num   int(5)      default 0   null comment '量表数量',

    createtime    datetime             null comment '创建时间',
    creater       varchar(32)          null comment '创建人',
    modifytime    datetime             null comment '修改时间',
    moditer       varchar(32)          null comment '修改人 ',
        PRIMARY KEY (`id`) USING BTREE,
    INDEX `ys_id`(`ys_id`) USING BTREE,
    INDEX `year`(`year`) USING BTREE,
    INDEX `month`(`month`) USING BTREE,
    INDEX `day`(`day`) USING BTREE
) engine = InnoDB auto_increment = 1 comment '医生数据统计表' charset = utf8mb4;
