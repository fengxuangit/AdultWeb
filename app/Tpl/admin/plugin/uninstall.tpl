<include file="public:header" />

<div class="subnav">
	<div class="content_menu ib_a blue line_x">
		<a class="add fb " href="{:U('plugin/plugin_list')}"><em>插件列表</em></a>
		<a class="add fb " href="javascript:;"><em>卸载插件</em></a>
	</div>
	<h1 class="title_2 line_x">卸载插件</h1>
</div>




<div class="pad_lr_10" >
<div class=" ">
    <div class="title-header">卸载插件</div>
    <form method="post" onsubmit="return false">
        <input type="hidden" name="plugin" value="{$field.plugin}"/>
        <table class="table1 hd-form">
            <tr>
                <th class="w150">插件名称</th>
                <td>{$field.name}</td>
            </tr>
            <tr>
                <th>插件版本</th>
                <td>{$field.version}</td>
            </tr>
            <tr>
                <th>团队名称</th>
                <td>{$field.team}</td>
            </tr>
            <tr>
                <th>发布时间</th>
                <td>{$field.pubdate}</td>
            </tr>
            <tr>
                <th>网站</th>
                <td>{$field.web}</td>
            </tr>
            <tr>
                <th>电子邮箱</th>
                <td>{$field.email}</td>
            </tr>
            <tr>
                <th>对于模块的文件处理方法</th>
                <td>
                    <label>
                        <input type="radio" name="del_dir" value="0" checked="checked"/> 手工删除文件，仅运行卸载程序
                    </label>
                    <label>
                        <input type="radio" name="del_dir" value="1"/> 删除模块的所有文件
                    </label>
                </td>
            </tr>
        </table>
        <div class="position-bottom">
            <input type="submit" value="删除" class="smt  mr10"/>
        </div>
    </form>
</div>
</div>
<include file="public:footer" />
<script>
actionurl = '{:U('plugin/uninstall')}';
$(function() {
	$('form').submit(function() {
		$.post(actionurl, $(this).serialize(), function(result) {
			if(result.status == 1){
				$.yhxia.tip({content:result.msg});
				top.location.reload(true);
			}else{
				$.yhxia.tip({content:result.msg, icon:'error'});
			}


		}, 'JSON')
		return false;
	});
});
</script>

</body>
</html>