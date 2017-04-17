<include file="public:header" />

<div class="subnav">
	<div class="content_menu ib_a blue line_x">
		<a class="add fb " href="{:U('plugin/plugin_list')}"><em>插件列表</em></a>
	</div>
</div>



<div class="pad_lr_10">
<div class="J_tablelist table_list">
    <table width="100%" cellspacing="0">
        <thead>
        <tr>
            <th>插件名称</th>
            <th class="w150">版本号</th>
            <th class="w150">发布时间</th>
            <th class="w150">开发团队</th>
            <th class="w150">插件状态</th>
            <th class="w100">插件目录</th>
            <th class="w50">管理</th>
        </tr>
        </thead>
        <tbody>
        <volist name="plugin" id="p">
            <tr>
                <td align="center">{$p.name}</td>
                <td align="center">{$p.version}</td>
                <td align="center">{$p.pubdate}</td>
                <td align="center">{$p.team}</td>
                <td align="center">
                	<if condition="$p.installed eq 1">
                		<font color='green'>已安装</font>
						<a href='{:U('plugin/uninstall',array('plugin'=>$p['dirname']))}' style='color:green'>
						<u>卸载</u>
						</a>
                		<else/>
                		未安装
 					<a href='{:U('plugin/install',array('plugin'=>$p['dirname']))}'><u>安装</u></a>
                	</if>
                </td>
                <td align="center">{$p.app}</td>
                <td align="center">
                    <a href="{:U('plugin/help',array('plugin'=>$p['app']))}">使用说明</a>
                </td>
            </tr>
        </volist>
        </tbody>
    </table>
</div>
</div>
<include file="public:footer" />
</body>
</html>