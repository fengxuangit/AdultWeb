<include file="public:header" />
<!--数据库恢复-->
<div class="subnav">
    <h1 class="title_2 line_x">{:L('database_restore')}</h1>
</div>
<div class="pad_lr_10">
    <div class="J_tablelist table_list">
    <form action="{:U('backup/import')}" method="post">
    	<table width="100%" cellspacing="0" class="treeTable">
            <thead>
                <tr>
                    <th align="left">{:L('backup_name')}</th>
                    <th>{:L('backup_size')}</th>
                    <th>{:L('backup_time')}</th
                    ><th>{:L('operations_manage')}</th>
                </tr>
            </thead>
        	<tbody>
            <volist name="backups" id="val">
            <tr class="collapsed">
                <td>
                    <span style="padding-left: 20px" name="{$val.name}" class="expander"></span>
                    {$val.name}
                </td>
                <td align="center">{$val.total_size}kb</td>
                <td align="center">{$val.date|frienddate}</td>
                <td align="center">
                    <a href="{:u('backup/del_backup', array('backup'=>$val['name']))}">{:L('delete')}</a> | 
                    <a href="{:u('backup/import', array('backup'=>$val['name']))}" >{:L('import')}</a>
                </td>
            </tr>
            <volist name="val['vols']" id="vol">
            <tr parent="{$val.name}" class="hidden">
                <td>{$vol.file}</td>
                <td align="center">{$vol.size}kb</td>
                <td align="center">{$val.date|frienddate}</td>
                <td align="center">
                    <a href="{:u('backup/download', array('backup'=>$val['name'], 'file'=>$vol['file']))}">{:L('download')}</a>
                </td>
            </tr>
            </volist>
            </volist>
        	</tbody>
        </table>
    </form>
    </div> 
</div>
<include file="public:footer" />
<script>
$(function(){
    $(".show_sub").click(function(){
        $(this).attr("src",function(){
            if(this.src == '{$tpl_dir}/images/tv-expandable.gif'){
                return '{$tpl_dir}/images/tv-collapsable.gif';
            } else {
                return '{$tpl_dir}/images/tv-expandable.gif';
            }
        });
        var sub_id = $(this).attr('sub');
        $("tr[parent='"+sub_id+"']").toggle();
    });
    $('.expander').toggle(function(){
        $(this).parent().parent().removeClass('collapsed').addClass('expanded');
        $('tr[parent="'+$(this).attr('name')+'"]').show();
    },function(){
        $(this).parent().parent().removeClass('expanded').addClass('collapsed');
        $('tr[parent="'+$(this).attr('name')+'"]').hide();
    });
});
</script>
</body>
</html>