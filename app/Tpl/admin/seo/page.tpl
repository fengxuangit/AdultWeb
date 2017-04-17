<include file="public:header" />
<!--SEO设置-->
<div class="pad_lr_10">
    <div class="col_tab">

        <ul class="tip_list clearfix ml20">
            <li>网站标题 <span class="highlight">{site_name}</span></li>
            <li>站点设置里面的Title <span class="highlight">{site_title}</span></li>
            <li>站点设置里面的Keywords <span class="highlight">{site_keywords}</span></li>
            <li>站点设置里面的Description <span class="highlight">{site_description}</span></li>
        </ul>

        <ul class="J_tabs tab_but cu_li mt10">
            <li class="current">首页</li>
            <li>分类页面</li>
            <li>详情页面</li>
            <li>今日新品</li>
            <li>九块九页面</li>
			<li>二十元封顶页面</li>
            <li>特卖精选</li>
			<li>超级人气榜</li>
        </ul>
    
        <form id="info_form" action="{:u('seo/page')}" method="post">
        <div class="J_panes">
            <div class="content_list pad_10">
                <table width="100%" class="table_form">
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[index][title]" cols="80" rows="2">{$seo_config.index.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[index][keywords]" cols="80" rows="2">{$seo_config.index.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[index][description]" cols="80" rows="3">{$seo_config.index.description}</textarea></td>
                    </tr>
                </table>
            </div>

            <div class="content_list pad_10" style="display:none;">
                <table width="100%" class="table_form">
                    <tr>
                        <td width="80"></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>分类名称 <span class="highlight">{cate_name}</span></li>
                                <li>分类Title <span class="highlight">{seo_title}</span></li>
                                <li>分类Keywords<span class="highlight">{seo_keywords}</span></li>
                                <li>分类Description<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[cate][title]" cols="80" rows="2">{$seo_config.cate.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[cate][keywords]" cols="80" rows="2">{$seo_config.cate.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[cate][description]" cols="80" rows="3">{$seo_config.cate.description}</textarea></td>
                    </tr>
                </table>
            </div>


			<div class="content_list pad_10" style="display:none;">
                <table width="100%" class="table_form">
                    <tr>
                        <td width="80"></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>商品名称 <span class="highlight">{title}</span></li>
								<li>商品简介 <span class="highlight">{intro}</span></li>
								<li>原价 <span class="highlight">{price}</span></li>
								<li>秒杀价 <span class="highlight">{coupon_price}</span></li>
								<li>商品标签 <span class="highlight">{tags}</span></li>
                                <li>Title <span class="highlight">{seo_title}</span></li>
                                <li>Keywords<span class="highlight">{seo_keywords}</span></li>
                                <li>Description<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[item][title]" cols="80" rows="2">{$seo_config.item.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[item][keywords]" cols="80" rows="2">{$seo_config.item.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[item][description]" cols="80" rows="3">{$seo_config.item.description}</textarea></td>
                    </tr>
                </table>
            </div>


			<div class="content_list pad_10" style="display:none;">
                <table width="100%" class="table_form">
					<thead>
                    <tr>
                        <th colspan="2" align="left">今日新品页面</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[xinpin][title]" cols="80" rows="2">{$seo_config.xinpin.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[xinpin][keywords]" cols="80" rows="2">{$seo_config.xinpin.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[xinpin][description]" cols="80" rows="3">{$seo_config.xinpin.description}</textarea></td>
                    </tr>
                </table>
            </div>





			<div class="content_list pad_10" style="display:none;">
                <table width="100%" class="table_form">
					<thead>
                    <tr>
                        <th colspan="2" align="left">九块九页面</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[jiu][title]" cols="80" rows="2">{$seo_config.jiu.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[jiu][keywords]" cols="80" rows="2">{$seo_config.jiu.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[jiu][description]" cols="80" rows="3">{$seo_config.jiu.description}</textarea></td>
                    </tr>
                </table>
            </div>





            <div class="content_list pad_10" style="display:none;">
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">二十元封顶页面</th>
                    </tr>
                    </thead>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[ershi][title]" cols="80" rows="2">{$seo_config.ershi.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[ershi][keywords]" cols="80" rows="2">{$seo_config.ershi.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[ershi][description]" cols="80" rows="3">{$seo_config.ershi.description}</textarea></td>
                    </tr>
                </table>
            </div>

			
			
			<div class="content_list pad_10" style="display:none;">
                <table width="100%" class="table_form">
					<thead>
                    <tr>
                        <th colspan="2" align="left">特卖精选</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[jingxuan][title]" cols="80" rows="2">{$seo_config.jingxuan.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[jingxuan][keywords]" cols="80" rows="2">{$seo_config.jingxuan.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[jingxuan][description]" cols="80" rows="3">{$seo_config.jingxuan.description}</textarea></td>
                    </tr>
                </table>
            </div>





            <div class="content_list pad_10" style="display:none;">
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">超级人气榜</th>
                    </tr>
                    </thead>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[top100][title]" cols="80" rows="2">{$seo_config.top100.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[top100][keywords]" cols="80" rows="2">{$seo_config.top100.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[top100][description]" cols="80" rows="3">{$seo_config.top100.description}</textarea></td>
                    </tr>
                </table>
            </div>
            

        </div>
        
        <div class="mt10">
            <input type="hidden" name="menuid"  value="{$menuid}"/>
            <input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/>
        </div>
        </form>
    </div>
</div>
<include file="public:footer" />
<script>
$(function(){
    $('ul.J_tabs').tabs('div.J_panes > div');
});
</script>
</body>
</html>