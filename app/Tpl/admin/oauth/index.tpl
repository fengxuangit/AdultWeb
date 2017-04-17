<include file="public:header" />
<!--接口列表-->
<div class="pad_10">
    <div class="J_tablelist table_list" data-acturi="{:U('oauth/ajax_edit')}">
        <table width="100%" cellspacing="0">
            <thead>
            <tr>
                <th width="40"><input type="checkbox" name="checkall" class="J_checkall"></th>
      			<th>{:L('oauth_code')}</th>
                <th>{:L('oauth_name')}</th>
                <th><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
                <th>{:L('enabled')}</th>
                <th>{:L('oauth_desc')}</th>
                <th>{:L('author')}</th>
                <th width="100">{:L('operations_manage')}</th>
            </tr>
            </thead>
            <tbody>
            <volist name="list" id="val">
            <if condition="$val.status gt -1">
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.code}</td>
                <td align="center"><span data-tdtype="edit" data-field="name" data-id="{$val.id}" class="tdedit">{$val.name}</span></td>
                <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
                <td align="center">
                    <img data-tdtype="toggle" data-field="status" data-id="{$val.id}" data-value="{$val.status}" src="__STATIC__/images/admin/toggle_<if condition="$val.status eq 0">disabled<else/>enabled</if>.gif" />
                </td>
                <td>{$val.desc}</td>
                <td align="center">{$val.author}</td>
                <td align="center">
                    <a href="javascript:;" class="J_showdialog" data-uri="{:U('oauth/edit', array('id'=>$val['id']))}" data-title="{:L('edit')} - {$val.name}"  data-id="edit">{:L('edit')}</a> | 
                    <a href="javascript:;" class="J_confirmurl" data-acttype="ajax" data-uri="{:U('oauth/delete', array('id'=>$val['id']))}" data-msg="{:sprintf(L('confirm_uninstall_one'),$val['name'])}">{:L('uninstall')}</a>
                </td>
            </tr>
            <else/>
            <tr>
                <td align="center"></td>
                <td align="center">{$val.code}</td>
                <td align="center">{$val.name}</td>
                <td align="center"></td>
                <td align="center"></td>
                <td>{$val.desc}</td>
                <td align="center">{$val.author}</td>
                <td align="center">
                    <a href="javascript:;" class="J_showdialog" data-uri="{:U('oauth/install', array('code'=>$val['code']))}" data-title="{:L('install')} - {$val.name}" data-id="install">{:L('install')}</a>
                </td>
            </tr> 
            </if>
            </volist>
            </tbody>
        </table>
    </div>
    <div class="btn_wrap_fixed">
        <label class="select_all"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('oauth/delete')}" data-name="id" data-msg="{:L('confirm_uninstall')}" value="{:L('uninstall')}" />
        <div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
</body>
</html>