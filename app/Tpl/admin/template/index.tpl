<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">模板中心</h1>
</div>
<div class="pad_lr_10">
    <form action="" method="get">
    <volist name="template_list" id="val">
    <div class="table_block">
        <div class="pad_10">
        <table>
            <tr>
              <td><img src="{$val.preview}" width="120" height="160" style="border:1px #E4E4E4 solid;" /></td>
              <td valign="top">
                    <table>
                        <tr>
                            <th align="right"><input type="radio" name="dirname" value="{$val.dirname}" <if condition="$def_tpl eq $val['dirname']">checked="checked"</if> /></th>
                            <td width="160"><if condition="$def_tpl eq $val['dirname']"><span class="red">默认</span><else/><a href="{:U('template/index',array('dirname'=>$val['dirname']))}" class="blue">设为默认</a></if></td>
                        </tr>
                        <tr><th align="right">模板文件夹：</th><td>{$val.dirname}</td></tr>
                        <tr><th align="right">模板名称：</th><td>{$val.name}</td></tr>
                        <tr><th align="right">模板作者：</th><td>{$val.author}</td></tr>
                        <tr><th align="right">版本：</th><td>{$val.version}</td></tr>
                    </table>
              </td>
            </tr>
        </table>
        </div>
    </div>
    </volist>
    <input type="hidden" name="g" value="admin" />
    <input type="hidden" name="m" value="template" />
    </form>
</div>
<include file="public:footer" />
</body>
</html>