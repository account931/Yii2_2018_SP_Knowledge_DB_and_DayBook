<?php

//Search model Merge Fields input


namespace app\models;

use Yii;
use yii\base\Model;

//Search form for searching

class MergeFields extends Model
{
    public $user1;
    public $user2;
   

    private $_user = false;


    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            [['user1','user2'], 'required', 'message'=>'Be careful "{attribute}"  is empty.'], //required
            
            ['user1', 'string', ],
            ['user2', 'string', 'message'=>'your text222'],
            
           
        ];
    }



public function attributeLabels()
    {
        return [
            'user1' => 'From User 1',
            'user2' => 'To User 2'
            
        ];
    }








}
?>
