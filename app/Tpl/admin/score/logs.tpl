<include file="public:header" />
<!--会员列表-->
<div class="pad_lr_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
                    <input type="hidden" name="g" value="admin" />
                    <input type="hidden" name="m" value="score" />
                    <input type="hidden" name="a" value="logs" />
                    <input type="hidden" name="menuid" value="{$menuid}" />
                    &nbsp;会员名 :
                    <input name="keyword" type="text" class="input-text" size="25" value="{$keyword.keyword}" />
                    <input type="submit" name="search" class="btn" value="搜索" />
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>

    <div class="J_tablelist table_list" data-acturi="{:U('score_log/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th><span data-tdtype="order_by" data-field="uid">会员名</span></th>
				<th>操作</th>
                <th width="180">积分</th>
				<th width="180">操作时间</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center">{$val.uname}</td>
				<td align="center">{:L($val['action'])}</td>
                <td align="center"><if condition="$val['score'] gt 0"><label class="green">+{$val.score}</label><else /><label class="red">{$val.score}</label></if></td>
                <td align="center">{$val.add_time|date="Y-m-d H:i:s",###}</td>
            </tr>
            </volist>
    	</tbody>
    </table>
    <div class="btn_wrap_fixed">
        <div id="pages">{$page}</div>
    </div>

    </div>
</div>
<include file="public:footer" />
</body>
</html>