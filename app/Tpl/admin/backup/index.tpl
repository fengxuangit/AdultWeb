<include file="public:header" />
<!--数据库备份-->
<div class="subnav">
    <h1 class="title_2 line_x">{:L('database_backup')}</h1>
</div>
<div class="pad_lr_10">
    <div class="J_tablelist table_list">
        <form action="{:U('backup/index')}" method="post">
        <table width="100%" cellspacing="0">
        	<thead>
          	<tr>
            	<th colspan="2">{:L('backup_setting')}</th>
          	</tr>
        	</thead>
            <tr>
        	    <td width="150" align="right">{:L('sizelimit')} :</td>
        	    <td>
                    <input type="text" name="sizelimit" class="input-text" value="{$sizelimit}" size="10"> K
                    &nbsp;&nbsp;(推荐10M以下)
                </td>
          	</tr>
            <tr>
        	    <td align="right">{:L('backup_name')} :</td>
        	    <td><input type="text" name="backup_name" class="input-text" value="{$backup_name}"></td>
          	</tr>
            <tr>
        	    <td align="right">{:L('backup_type')} :</td>
        	    <td>
                	<label><input type="radio" checked="checked" value="full" name="backup_type" onclick="javascript:$('#J_showtables').hide();"> {:L('full_backup')}<font class="gray">{:L('full_backup_desc')}</font> &nbsp;&nbsp;</label>
                    <label><input type="radio" value="custom" name="backup_type" onclick="javascript:$('#J_showtables').show();"> {:L('custom_backup')}<font class="gray">{:L('custom_backup_desc')}</font></label>
                </td>
          	</tr>
            <tr id="J_showtables" class="hidden">
                <td align="right">
                    <label><input name="selectall" type="checkbox" checked="checked" value="" onclick="javascript:$('.J_checkitem').attr('checked', this.checked);" /> {:L('select_all')} :</label>
                </td>
                <td colspan="2">
                    <volist name="tables" id="val">
                        <label class="fl" style="width:200px;"><input name="backup_tables[{$val}]" type="checkbox" value="-1" checked="checked" class="J_checkitem" />&nbsp;&nbsp;{$val}</label>
                    </volist>
                </td>
            </tr>
          	<tr>
        	    <td></td>
        	    <td><input type="submit" name="dosubmit" value=" {:L('backup_starting')} " class="smt mr10"></td>
          	</tr>
        </table>
        </form>
    </div>
</div>
<include file="public:footer" />
</body>
</html>