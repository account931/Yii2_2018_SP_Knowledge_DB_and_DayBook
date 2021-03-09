<?php

// Model for Day Book Calendar (adding your events all over the year)


namespace app\models;

use Yii;

/**
 * This is the model class for table "dayBook".
 *
 * @property integer $dbook_id
 * @property string $dbook_user
 * @property string $dbook_ip
 * @property string $dbook_bookedDate
 * @property integer $dbook_bookedUnix
 * @property integer $dbook_quarters
 * @property string $dbook_whenBooked
 */
class DayBook extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'dayBook';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['dbook_user'], 'required'],  //, 'dbook_ip'
            [['dbook_bookedDate'], 'safe'],
            [['dbook_bookedUnix', 'dbook_quarters'], 'integer'],
            [['dbook_user', 'dbook_ip', 'dbook_whenBooked'], 'string', 'max' => 77],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'dbook_id' => 'Dbook ID',
            'dbook_user' => 'Dbook User',
            'dbook_ip' => 'Dbook Ip',
            'dbook_bookedDate' => 'Dbook Booked Date',
            'dbook_bookedUnix' => 'Dbook Booked Unix',
            'dbook_quarters' => 'Dbook Quarters',
            'dbook_whenBooked' => 'Dbook When Booked',
        ];
    }
	
	
	
	
	
	
	//----------------------
    /*static function DisplayReserved(Si,$indexOf,$result)
	    {
         echo "<h6 class='taken'> Reserved =>  ".$i.  ".00-" .$i. ".30   <span class='bookLink'>Activity->  ".    $result[$indexOf]->dbook_agenda.    "</span>  <img class='deleteMe' id=''  style='width:3%;margin-right:0.6em;' src='images/delete.png'/></h6>";
		 
        }*/
	//---------------------
}
