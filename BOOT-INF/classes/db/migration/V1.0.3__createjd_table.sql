-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('京东文件信息', '1', '1', 'jdFile', 'system/jdFile/index', 1, 0, 'C', '0', '0', 'system:jdFile:list', '#', 'admin', sysdate(), '', null, '京东文件信息菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('京东文件信息查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'system:jdFile:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('京东文件信息新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'system:jdFile:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('京东文件信息删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'system:jdFile:remove',       '#', 'admin', sysdate(), '', null, '');
