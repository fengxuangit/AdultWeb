<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">执行sql语句</h1>
</div>
<div class="pad_lr_10">
	<form action="{:U('backup/upsql')}" method="post">
	<table width="100%" cellspacing="0">
		<tr>
			<td colspan="2"><textarea cols="120" rows="20" name="queries" id="queries" type="text"  ></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><span class="gray">注意: 为确保升级成功，请不要修改 SQL 语句的任何部分</span></td>
		</tr>
		<tr>
			<td colspan="2" class="r"><input  type="submit" name="submit" class="smt mr10" value="提 交" onClick="return confirm('该操作需要慎重操作,请确定是否执行!')">
			<input  class="smt mr10" type="reset" name="Input" value="重 置" > </td>
		</tr>           
	</table>
	</form> 
</div>
<include file="public:footer" />
</body>
</html>