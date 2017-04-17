<?php
/**
 * ����
 * @author Yhxia
 */
class calender {
	private $day;			//��ǰ����
    private $month;			//��ǰ�·�
	private $year;			//��ǰ��
	private $days;			//��������
	private $start_weakday;	//���µ�һ�����ڼ�

    public function __construct() {
        $this->day				= date( 'd'); 
		$this->month			= date( 'm'); 
		$this->year				= date( 'y');
		$this->days				= date( 't',mktime(0,0,0,$this->month,1,$this->year));
		$this->start_weakday	= date( 'w',mktime(0,0,0,$this->month,1,$this->year)); 
    }

	public function sign_calender(){
		$user_info		= session('user_info');
		$month			= mktime(0,0,0,date("m"),1,date("Y"));
		$sign_log_mod	= M('sign_log');
		$map['uid']		= $user_info['id'];
		$map['sign_date'] = array('egt',$month);
		$sign_info		= $sign_log_mod->field('id,uid,username,sign_date,score')->where($map)->select();
		foreach($sign_info as $info){
			$day=date('j',$info['sign_date']);
			$sign[$day]=$info;
		}
		//exit(print_r($sign));

		$dayrow = 0; 
		$html = '<tr>';
		while($dayrow < $this->start_weakday){
			$html.='<td></td>';
			$dayrow += 1; 
		}
		$i=0;		
		while($i < $this->days) { 
			//������ж��������ÿ��ʾ7��ʱ��λ��ת������һ��
			if(($dayrow % 7) == 0) { 
				$html.="</tr><tr>"; 
			} 
			$adjusted_day = $i+1;
			//����������ú�ɫ��ʾ
			if($sign[$adjusted_day]){
				$html.='<td class="current"><p><i>'.$sign[$adjusted_day]['score'].'</i><span class="days">'.$adjusted_day.'</span></p></td>';
			} else{
				$html.='<td><p><span class="days">'.$adjusted_day.'</span></p></td>';
			} 
			$i += 1; 
			$dayrow += 1; 
		} 
		return $html;
	}

}