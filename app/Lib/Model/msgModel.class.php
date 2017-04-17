<?php
/**
 * 短信状态说明
 * 0: 未读
 * 1：已读
 */
class msgModel extends Model
{
    //自动完成
    protected $_auto = array(
        array('add_time', 'time', 1, 'function'),
    );

}