<?php
class articleAction extends BackendAction{
    public function _initialize(){
        parent :: _initialize();
        $this -> _mod = D('article');
        $this -> _cate_mod = D('article_cate');
    }
    public function _before_index(){
        $sort = $this -> _request("sort", 'trim', 'ordid');
        $order = $this -> _request("order", 'trim', 'DESC');
        $res = $this -> _cate_mod -> order($sort . ' ' . $order) -> field('id,name') -> select();
        $cate_list = array();
        foreach ($res as $val){
            $cate_list[$val['id']] = $val['name'];
        }
        $this -> assign('cate_list', $cate_list);
        $p = $this -> _get('p', 'intval', 1);
        $this -> assign('p', $p);
    }
    protected function _search(){
        $map = array();
        ($time_start = $this -> _request('time_start', 'trim')) && $map['add_time'][] = array('egt', strtotime($time_start));
        ($time_end = $this -> _request('time_end', 'trim')) && $map['add_time'][] = array('elt', strtotime($time_end) + (24 * 60 * 60-1));
        ($status = $this -> _request('status', 'trim')) && $map['status'] = $status;
        ($keyword = $this -> _request('keyword', 'trim')) && $map['title'] = array('like', '%' . $keyword . '%');
        $cate_id = $this -> _request('cate_id', 'intval');
        $selected_ids = '';
        if ($cate_id){
            $id_arr = $this -> _cate_mod -> get_child_ids($cate_id, true);
            $map['cate_id'] = array('IN', $id_arr);
            $spid = $this -> _cate_mod -> where(array('id' => $cate_id)) -> getField('spid');
            $selected_ids = $spid ? $spid . $cate_id : $cate_id;
        }
        $this -> assign('search', array('time_start' => $time_start, 'time_end' => $time_end, 'cate_id' => $cate_id, 'selected_ids' => $selected_ids, 'status' => $status, 'keyword' => $keyword,));
        return $map;
    }
    public function _before_add(){
        $author = $_SESSION['pp_admin']['username'];
        $this -> assign('author', $author);
        $site_name = D('setting') -> where(array('name' => 'site_name')) -> getField('data');
        $this -> assign('site_name', $site_name);
        $first_cate = $this -> _cate_mod -> field('id,name') -> where(array('pid' => 0)) -> order('ordid DESC') -> select();
        $this -> assign('first_cate', $first_cate);
    }
    public function _before_edit(){
        $id = $this -> _get('id', 'intval');
        $article = $this -> _mod -> field('id,cate_id') -> where(array('id' => $id)) -> find();
        $spid = $this -> _cate_mod -> where(array('id' => $article['cate_id'])) -> getField('spid');
        if($spid == 0){
            $spid = $article['cate_id'];
        }else{
            $spid .= $article['cate_id'];
        }
        $this -> assign('selected_ids', $spid);
    }
    public function ajax_upload_img(){
        $type = $this -> _get('type', 'trim', 'img');
        if (!empty($_FILES[$type]['name'])){
            $dir = date('ym/d/');
            $result = $this -> _upload($_FILES['img'], 'article/' . $dir, array('width' => '280', 'height' => '280'));
            if ($result['error']){
                $this -> ajaxReturn(0, $result['info']);
            }else{
                $savename = $dir . $result['info'][0]['savename'];
                $ext = array_pop(explode('.', $savename));
                $data['img'] = str_replace('.' . $ext, '_thumb.' . $ext, $savename);
                $this -> ajaxReturn(1, L('operation_success'), $data['img']);
            }
        }else{
            $this -> ajaxReturn(0, L('illegal_parameters'));
        }
    }
    public function ajax_gettags(){
        $title = $this -> _get("title", "trim");
        $tag_list = d("items") -> get_tags_by_title($title);
        $tags = implode(" ", $tag_list);
        $this -> ajaxReturn(1, l("operation_success"), $tags);
    }
}
?>