CREATE TABLE `jd_register` (
                               `id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
                               `pay_expand_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '进件号',
                               `company_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '进件公司',
                               `register_params` text COLLATE utf8mb4_unicode_ci COMMENT '进件参数',
                               `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '进件状态 INIT：入驻中 SUCCESS：入驻成功 FAIL：入驻失败 MERCHANT_CONFIRM：待商户签署合同（本期商户和业务同学在线下签署合同，系统静默确认）',
                               `fail_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入住失败原因',
                               `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
                               `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                               `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
                               `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                               `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='京东进件信息表';
