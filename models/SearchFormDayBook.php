<?php

//Search model for Support CR's knowledge base


namespace app\models;

use Yii;
use yii\base\Model;

//Search form for searching

class SearchFormDayBook extends Model
{
    public $q;
   

    //private $_user = false;


    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            
            ['q', 'string', 'message'=>'your text_agenda'],
           
        ];
    }



public function attributeLabels()
    {
        return [
            'q' => 'rrr',
            
        ];
    }








}
?>
