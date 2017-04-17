 <link rel=stylesheet type=text/css href="__STATIC__/yhquan/css/ad.css" />
 <div class="dealbox">
 <volist name="ad_list" id="ad">
 <div class="dealad">
 <a href="{$ad.url}" target="_blank">
 <img src="{:attach($ad['content'],'advert')}" width="290" height="190"></a>
 <h3>
 <a href="{$ad.url}">{$ad.desc}</a></h3>
 <h4><span><a href="{$ad.url}">{$ad.name}</a></span>
 <a target="_blank" href="{$ad.url}"></a></h4>
 </div>
 </volist>
 </div>