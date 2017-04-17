<include file="public:header" />
<!--模板样式-->
<div class="subnav">
	<h1 class="title_2 line_x">在线客服设置</h1>
</div>

<div class="pad_lr_10">
<form id="info_form" action="{:u('setting/edit')}" method="post">
	<table width="100%" class="table_form contentWrap">

		<tr>
			<th width="100">在线客服样式 :</th>
			<td>
				<label><input type="radio" <if condition="C('yh_kefu_color') eq 'gray'">checked="checked"</if> value="gray" name="setting[kefu_color]"> 灰色 </label> &nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_kefu_color') eq 'blue'">checked="checked"</if> value="blue" name="setting[kefu_color]"> 蓝色 </label>&nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_kefu_color') eq 'yellow'">checked="checked"</if> value="yellow" name="setting[kefu_color]"> 黄色 </label>&nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_kefu_color') eq 'orange'">checked="checked"</if> value="orange" name="setting[kefu_color]"> 橙色 </label>&nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_kefu_color') eq 'white'">checked="checked"</if> value="white" name="setting[kefu_color]"> 白色 </label>
			</td>
		</tr>
		<tr>
        		<th>客服热线电话 :</th>
        		<td>
				<input type="text" name="setting[kefu_telephone]" size="20" class="input-text" value="{:C('yh_kefu_telephone')}" />
				&nbsp;    <span class="gray">客服热线电话。</span>
			</td>
    		</tr>


		<tr>
        		<th>客服一、名称 :</th>
        		<td>
				<input type="text" name="setting[kefu_one_name]" size="20" class="input-text" value="{:C('yh_kefu_one_name')}" />
				&nbsp;    <span class="gray">客服一名称。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服一、属性 :</th>
        		<td>
				<label><input type="radio" <if condition="C('yh_kefu_one_su') eq 'qq'">checked="checked"</if> value="qq" name="setting[kefu_one_su]"> QQ </label>&nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_kefu_one_su') eq 'ww'">checked="checked"</if> value="ww" name="setting[kefu_one_su]"> 旺旺 </label>&nbsp;&nbsp;
				&nbsp;    <span class="gray">客服是旺旺还是QQ。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服一、号码 :</th>
        		<td>
				<input type="text" name="setting[kefu_one_value]" size="20" class="input-text" value="{:C('yh_kefu_one_value')}" />
				&nbsp;    <span class="gray">客服号码。</span>
			</td>
    		</tr>



		<tr>
        		<th>客服二、名称 :</th>
        		<td>
				<input type="text" name="setting[kefu_two_name]" size="20" class="input-text" value="{:C('yh_kefu_two_name')}" />
				&nbsp;    <span class="gray">客服二名称。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服二、属性 :</th>
        		<td>
				<label><input type="radio" <if condition="C('yh_kefu_two_su') eq 'qq'">checked="checked"</if> value="qq" name="setting[kefu_two_su]"> QQ </label>&nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_kefu_two_su') eq 'ww'">checked="checked"</if> value="ww" name="setting[kefu_two_su]"> 旺旺 </label>&nbsp;&nbsp;
				&nbsp;    <span class="gray">客服是旺旺还是QQ。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服二、号码 :</th>
        		<td>
				<input type="text" name="setting[kefu_two_value]" size="20" class="input-text" value="{:C('yh_kefu_two_value')}" />
				&nbsp;    <span class="gray">客服号码。</span>
			</td>
    		</tr>



		<tr>
        		<th>客服三、名称 :</th>
        		<td>
				<input type="text" name="setting[kefu_three_name]" size="20" class="input-text" value="{:C('yh_kefu_three_name')}" />
				&nbsp;    <span class="gray">客服三名称。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服三、属性 :</th>
        		<td>
				<label><input type="radio" <if condition="C('yh_kefu_three_su') eq 'qq'">checked="checked"</if> value="qq" name="setting[kefu_three_su]"> QQ </label>&nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_kefu_three_su') eq 'ww'">checked="checked"</if> value="ww" name="setting[kefu_three_su]"> 旺旺 </label>&nbsp;&nbsp;
				&nbsp;    <span class="gray">客服是旺旺还是QQ。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服三、号码 :</th>
        		<td>
				<input type="text" name="setting[kefu_three_value]" size="20" class="input-text" value="{:C('yh_kefu_three_value')}" />
				&nbsp;    <span class="gray">客服号码。</span>
			</td>
    		</tr>


		<tr>
        		<th>客服四、名称 :</th>
        		<td>
				<input type="text" name="setting[kefu_four_name]" size="20" class="input-text" value="{:C('yh_kefu_four_name')}" />
				&nbsp;    <span class="gray">客服四名称。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服四、属性 :</th>
        		<td>
				<label><input type="radio" <if condition="C('yh_kefu_four_su') eq 'qq'">checked="checked"</if> value="qq" name="setting[kefu_four_su]"> QQ </label>&nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_kefu_four_su') eq 'ww'">checked="checked"</if> value="ww" name="setting[kefu_four_su]"> 旺旺 </label>&nbsp;&nbsp;
				&nbsp;    <span class="gray">客服是旺旺还是QQ。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服四、号码 :</th>
        		<td>
				<input type="text" name="setting[kefu_four_value]" size="20" class="input-text" value="{:C('yh_kefu_four_value')}" />
				&nbsp;    <span class="gray">客服号码。</span>
			</td>
    		</tr>



		<tr>
        		<th>客服五、名称 :</th>
        		<td>
				<input type="text" name="setting[kefu_five_name]" size="20" class="input-text" value="{:C('yh_kefu_five_name')}" />
				&nbsp;    <span class="gray">客服五名称。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服五、属性 :</th>
        		<td>
				<label><input type="radio" <if condition="C('yh_kefu_five_su') eq 'qq'">checked="checked"</if> value="qq" name="setting[kefu_five_su]"> QQ </label>&nbsp;&nbsp;
				<label><input type="radio" <if condition="C('yh_kefu_five_su') eq 'ww'">checked="checked"</if> value="ww" name="setting[kefu_five_su]"> 旺旺 </label>&nbsp;&nbsp;
				&nbsp;    <span class="gray">客服是旺旺还是QQ。</span>
			</td>
    		</tr>
		<tr>
        		<th>客服五、号码 :</th>
        		<td>
				<input type="text" name="setting[kefu_five_value]" size="20" class="input-text" value="{:C('yh_kefu_five_value')}" />
				&nbsp;    <span class="gray">客服号码。</span>
			</td>
    		</tr>
		 
 


		<tr>
        		<th></th>
        		<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/></td>
    		</tr>
	</table>
</form>
</div>
<include file="public:footer" />
</body>
</html>