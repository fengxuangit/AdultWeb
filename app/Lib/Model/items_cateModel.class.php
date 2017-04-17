<?php
class items_cateModel extends Model
{
    /**
     * 生成spid 
     * 
     * @param int $pid 父级ID
     */
    public function get_spid($pid) {
        if (!$pid) {
            return 0; 
        }
        $pspid = $this->where(array('id'=>$pid))->getField('spid');
        if ($pspid) {
            $spid = $pspid . $pid . '|';
        } else {
            $spid = $pid . '|';
        }
        return $spid;
    }
    
    /**
     * 获取分类下面的所有子分类的ID集合
     * 
     * @param int $id
     * @param bool $with_self
     * @return array $array 
     */
    public function get_child_ids($id, $with_self=false) {

		if(C('yh_site_cache')){
			$file = 'get_child_ids_'.$id;
			if(false === $array = S($file)){
				$spid = $this->where(array('id'=>$id))->getField('spid');
				$spid = $spid ? $spid .= $id .'|' : $id .'|';
				$id_arr = $this->field('id')->where(array('spid'=>array('like', $spid.'%')))->select();
				$array = array();
				foreach ($id_arr as $val) {
					$array[] = $val['id'];
				}

				S($file,$array);
			}
		}else{
			$spid = $this->where(array('id'=>$id))->getField('spid');
			$spid = $spid ? $spid .= $id .'|' : $id .'|';
			$id_arr = $this->field('id')->where(array('spid'=>array('like', $spid.'%')))->select();
			$array = array();
			foreach ($id_arr as $val) {
				$array[] = $val['id'];
			}
		}

        $with_self && $array[] = $id;
        return $array;
    }
 

    /**
     * 根据ID获取分类名称
     */
    public function get_name($id) {
        //分类数据
        if (false === $cate_data = F('cate_data')) {
            $cate_data = $this->cate_data_cache();
        }
        return $cate_data[$id]['name'];
    }

    /**
     * 获取标签分类紧接上级实体分类
     */
    public function get_pentity_id($id) {
        $pentity_id = 0;
        if (false === $cate_data = F('cate_data')) {
            $cate_data = $this->cate_data_cache();
        }
        $spid = array_reverse(explode('|', trim($cate_data[$id]['spid'], '|')));
        foreach ($spid as $val) {
               $pentity_id = $val;
               break;
        }
        return $pentity_id;
    }

    /**
     * 读取写入缓存(有层级的分类数据)
     */
    public function cate_cache() {
		$cate_list = array();

		if(C('yh_site_cache')){
			if(false === $cate_list = S('cate_list')){
				$cate_data = $this->field('id,pid,name')->where('status=1')->order('ordid')->select();
				foreach ($cate_data as $val) {
					if ($val['pid'] == '0') {
						$cate_list['p'][$val['id']] = $val;
					} else {
						$cate_list['s'][$val['pid']][$val['id']] = $val;
					}
				}

				S('cate_list',$cate_list);
			}
		}else{
			$cate_data = $this->field('id,pid,name')->where('status=1')->order('ordid')->select();
			foreach ($cate_data as $val) {
				if ($val['pid'] == '0') {
					$cate_list['p'][$val['id']] = $val;
				} else {
					$cate_list['s'][$val['pid']][$val['id']] = $val;
				}
			}
			S('cate_list', $cate_list);
		}

        return $cate_list;
    }

    /**
     * 读取写入缓存(无层级分类列表)
     */
    public function cate_data_cache() {
        $cate_data = array();

		if(C('yh_site_cache')){
			if(false === $cate_data = S('cate_data')){
				$result = $this->field('id,pid,spid,name,seo_title,seo_keys,seo_desc')->where('status=1')->order('ordid')->select();
				foreach ($result as $val) {
					$cate_data[$val['id']] = $val;
				}

				S('cate_data',$cate_data);
			}
		}else{
			$result = $this->field('id,pid,spid,name,seo_title,seo_keys,seo_desc')->where('status=1')->order('ordid')->select();
			foreach ($result as $val) {
				$cate_data[$val['id']] = $val;
			}
			S('cate_data', $cate_data);
		}

        return $cate_data;
    }

    /**
     * 分类关系读取写入缓存
     */
    public function relate_cache() {
        $cate_relate = array();
        $cate_data = $this->field('id,pid,spid')->where('status=1')->order('ordid')->select();
        foreach ($cate_data as $val) {
            $cate_relate[$val['id']]['sids'] = $this->get_child_ids($val['id']); //子孙
            if ($val['pid'] == '0') {
                $cate_relate[$val['id']]['tid'] = $val['id']; //祖先
            } else {
                $cate_relate[$val['id']]['tid'] = array_shift(explode('|', $val['spid'])); //祖先
            }
        }
        F('cate_relate', $cate_relate);
        return $cate_relate;
    }

    /**
     * 检测分类是否存在
     * 
     * @param string $name
     * @param int $pid
     * @param int $id
     * @return bool 
     */
    public function name_exists($name, $pid, $id=0) {
        $where = "name='" . $name . "' AND pid='" . $pid . "' AND id<>'" . $id . "'";
        $result = $this->where($where)->count('id');
        if ($result) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 更新则删除缓存
     */
    protected function _before_write(&$data) {
        F('cate_data', NULL);
        F('cate_list', NULL);
        F('cate_relate', NULL);
        F('index_cate_list', NUll);
    }

    /**
     * 删除也删除缓存
     */
    protected function _after_delete($data, $options) {
        F('cate_data', NULL);
        F('cate_list', NULL);
        F('cate_relate', NULL);
        F('index_cate_list', NUll);
    }
}