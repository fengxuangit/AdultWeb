<?php
class robotsModel extends Model
{
    protected $_auto = array(
        array('last_time', 'time', 1, 'function'),
    );




	/**
     * ����һ���ɼ���
     */
    public function todb($item) {
        $this->create($item);
        $this->add();
    }

}