CREATE TABLE `jd_file` (
                           `id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
                           `file_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名',
                           `biz_scene` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件归属业务 BUSINESS_LICENSE 营业执照 CARD_FRONT 身份证正面 CARD_BACK 身份证反面 BANK_OPENING LICENSE 开户许可证 MERCHANT_PLATFORM_COOPERATION_AGREEMENT 商户和租赁平台合作协议 DIVIDE_AGREEMENT 分账协议',
                           `upload_url` varchar(520) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件上传地址',
                           `file_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件key',
                           `upload_status` bit(1) DEFAULT b'0' COMMENT '是否成功',
                           `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
                           `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                           `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
                           `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                           `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
                           `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='京东文件信息表';
