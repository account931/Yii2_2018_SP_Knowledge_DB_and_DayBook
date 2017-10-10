<?php
// Model for  support Time entrie (date,pieces, hours. %)
namespace app\models;

use Yii;

/**
 * This is the model class for table "support".
 *
 * @property integer $supp_id
 * @property string $supp_user
 * @property string $supp_date
 * @property string $supp_ip
 * @property integer $supp_amount
 * @property integer $supp_hour
 */
class Support extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'support';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['supp_user', 'supp_date', 'supp_amount', 'supp_hour'], 'required'],
            [['supp_amount', 'supp_hour'], 'integer'],
            [['supp_user','supp_date'], 'string', 'max' => 77],
            [['supp_ip'], 'string', 'max' => 88],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'supp_id' => 'Supp ID',
            'supp_user' => 'User',
            'supp_date' => 'Date',
            'supp_ip' => 'Supp Ip',
            'supp_amount' => 'Supp Amount',
            'supp_hour' => 'Supp Hour',
            'supp_rate' => 'Rate per hour',
        ];
    }











//beforeSave();
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
//------------------------
//wasn't  working  beacause  used $_POST['Mydbstart']['mydb_v_am'] instead of  $this->mydb_v_am )
public function beforeSave($insert)  //$insert
{
    if (parent::beforeSave(false)) {

 
        // Place your custom code here
                
                // $model = new Mydbstart(); // Instead  of  creating  a New Model- u have  to  use {$this};
//NEW
//$curr = self::findByPk($this->id); //::find()->orderBy ('mydb_id DESC')  ->all(); //WON't  work  we  don't  needd  getting  old  value  from SQL
//END NEW
             if(!empty($this->supp_amount))   {  // if Ven  value  exists
                // $v_pcs=$_POST['Mydbstart']['mydb_v_am']/($_POST['Mydbstart']['mydb_v_h']*44)*100; // Here we  should  just use $this->field;
                   
                   $Rate_Calced=$this->supp_amount/$this->supp_hour;
                  $this->supp_rate=$Rate_Calced;  //assign value to  table 
                 }// END if(!empty($this->mydb_v_am)) 
                 



   
     

// Emd  Place your custom code her



        return true;
    } else {
        return false;
    }
} // END BEFORESAVE();
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//---------------------------------------------------------














}
