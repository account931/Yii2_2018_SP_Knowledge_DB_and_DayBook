<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "merge_users".
 *
 * @property integer $m_id
 * @property string $m_user
 * @property integer $m_points
 * @property string $m_status
 */
class MergeUsers extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'merge_users';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['m_user', 'm_points', 'm_status'], 'required'],
            [['m_points'], 'integer'],
            [['m_user'], 'string', 'max' => 55],
            [['m_status'], 'string', 'max' => 66],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'm_id' => 'M ID',
            'm_user' => 'M User',
            'm_points' => 'M Points',
            'm_status' => 'M Status',
        ];
    }



//
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 
    public static function First_User(){
    echo "<p>Function First_User() from Model</p>";
    }
//
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//



//End class
}
