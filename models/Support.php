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
 * @property integer supp_unix_Stamp
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
            [['supp_amount',], 'integer'], //[['supp_amount', 'supp_hour'], 'integer'], // disable ''supp_hour' being an integer as it won't accept {7.5}
             [['supp_hour'], 'number'], //my add {change type ftom INTEGER to NUMBER} as it did not accept hours like {7.5}+ in php myAdmin change type from {integer} to {float}
            [['supp_user','supp_date'], 'string', 'max' => 77],
            [['supp_ip'], 'string', 'max' => 88],  
            [['supp_unix_Stamp'], 'integer', 'max' => 77],  //supp_unix_Stamp
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
            'supp_amount' => 'Case Amount',
            'supp_hour' => 'Hours',
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
                   
                   $Rate_Calced=$this->supp_amount/$this->supp_hour;  //where is it used???
                  $this->supp_rate=$Rate_Calced;  //assign value to  table // confirm delete??- NO!!!!
                 }// END if(!empty($this->mydb_v_am)) 
                 



   
                    //start convert to Unix-------------
                        $MyDAte=$this->supp_date;
                        $j=explode("-",$MyDAte);  
                        $Monthh = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
                        $indexOF=array_search($j[1],$Monthh); //indexOf Month
                        $indexOF=$indexOF+1;
                        
                        $UnixPatternDate=$j[0] ."-". $indexOF ."-". $j[3];
                        $Unix=strtotime($UnixPatternDate);
                        $this->supp_unix_Stamp=$Unix;
                    // END convert to Unix-------------------

     

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
