<?php 
return array (
  'URL_MODEL' => 1,
  'URL_HTML_SUFFIX' => '.html',
  'URL_PATHINFO_DEPR' => '/',
  'URL_ROUTER_ON' => true,
  'URL_ROUTE_RULES' => 
  array (
    '/^index$/' => 'index/index',
    '/^index\/so\/k\/(.*?)\/p\/(\d+)$/' => 'index/so?k=:1&p=:2',
    '/^index\/search\/key\/(.*?)\/p\/(\d+)$/' => 'index/search?key=:1&p=:2',
    '/^index\/index\/sort\/(\w+)$/' => 'index/index?&sort=:1',
    '/^index\/index\/sort\/(\w+)\/p\/(\d+)$/' => 'index/index?sort=:1&p=:2',
    '/^index\/cate\/cid\/(\d+)\/sort\/(\w+)$/' => 'index/cate?cid=:1&sort=:2',
    '/^index\/cate\/cid\/(\d+)\/sort\/(\w+)\/p\/(\d+)$/' => 'index/cate?cid=:1&sort=:2&p=:3',
    '/^index\/index\/p\/(\d+)$/' => 'index/index?p=:1',
    '/^index\/cate\/cid\/(\d+)\/p\/(\d+)$/' => 'index/cate?cid=:1&p=:2',
    '/^index\/cate\/cid\/(\d+)$/' => 'index/cate?cid=:1',
    '/^shortcut\/$/' => 'index/shortcut',
    '/^chaxun\/$/' => 'chaxun/index',
    '/^score\/$/' => 'score/index',
    '/^comment\/$/' => 'comment/index',
    '/^comment\/p\/(\d+)$/' => 'comment/index?p=:1',
    '/^baoming$/' => 'baoming/shenhe',
    '/^baoming\/p\/(\d+)$/' => 'baoming/my?p=:1',
    '/^inval\/(\d+)$/' => 'inval/index?id=:1',
    '/^help\/(\d+)$/' => 'help/read?id=:1',
    '/^user\/register$/' => 'user/register',
    '/^user\/login$/' => 'user/login',
    '/^user\/logout$/' => 'user/logout',
    '/^union$/' => 'union/index',
    '/^gift$/' => 'gift/index',
    '/^gift\/p\/(\d+)$/' => 'gift/index?p=:1',
    '/^gift\/cid\/(\d+)$/' => 'gift/index?cid=:1',
    '/^gift\/item\/(\d+)$/' => 'gift/detail?id=:1',
    '/^space$/' => 'space/index',
    '/^space\/(\d+)$/' => 'space/index?uid=:1',
    '/^article\/view_(\d+)$/' => 'article/read?id=:1',
    '/^article$/' => 'article/index',
    '/^jump\/item\/(\d+)$/' => 'jump/index?iid=:1',
    '/^jump\/(\d+)$/' => 'jump/index?id=:1',
    '/^jump\/$/' => 'jump/index',
    '/^list\/$/' => 'list/index',
    '/^list\/p\/(\d+)$/' => 'list/index?p=:1',
    '/^item\/id\/(\d+)$/' => 'item/index?id=:1',
    '/^item\/iid\/(\d+)$/' => 'item/index?iid=:1',
  ),
);