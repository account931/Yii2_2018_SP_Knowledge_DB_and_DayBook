<?php

namespace app\controllers;

use Yii;
use app\models\DayBook;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DayBookController implements the CRUD actions for DayBook model.
 */
class DayBookController extends Controller
{
    /**
     * @inheritdoc
     */


public $timestamp;// delete?????????????????????????????????


    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }







// **************************************************************************************
// **************************************************************************************
//                                                                                     **
    /**
     * Lists all DayBook models.
     * @return mixed
     */
    public function actionIndex()
    {




// START GRIDVIEW------
				$dataProvider = new ActiveDataProvider([
				    'query' => DayBook::find(),
				]);
// END GRIDVIEW--------







// *******************
// *******************
//                  **
//Start Function MydatePrepare (convert 4-Jan-Thu-2018 to UnixTime ) // False it just change {4-Jan-Thu-2018} to {1-4-2018} which is OK format to get UnixStamp from it--------------------
function MydateToUnix ($obj) {
$dateArray=explode("-", $obj);    // {4-Jan-Thu-2018} split/explode to Array by "-"
$objectMonth = ['Jan' ,'Feb' ,'Mar' ,'Apr' ,'May' , 'Jun' , 'Jul' ,'Aug' ,'Sep' ,'Oct' ,'Nov', 'Dec']; // Month
$position=array_search($objectMonth[1]   ,$objectMonth); // returns 1-12
$position=$position; // month 1-2 , not 0-11


$dateFormat=$position     .'-'.    $dateArray[0]    .'-'.     $dateArray[3];     // Make format 4/1/2016
//$timestamp = strtotime(   $dateFormat );   // get Unix Time from  4/1/2016 // format 'month/day/2018' !!!!!!!!!!!!!!!!!!!!!!1   // Deactivate just this one

return  $dateFormat  /* $timestamp */ ;  // returns {1-4-2018} 

}
//END Function MydatePrepare   (convert 4-Jan-Thu-2018 to UnixTime )  // False it just change {4-Jan-Thu-2018} to {1-4-2018} which is OK format to get UnixStamp from it- ------------------------
// **           **
// ***************
// ***************







//----------------------
$model = new DayBook();  // creates model for SQL TAble



//it will be used for << >>

if ($model->load(Yii::$app->request->post()) ) {  // if u click the button-----------------------

if( Yii::$app->getRequest()->getQueryParam('myUnix') )  // if Unix dateStamp exist in URL, we take it without processing
            {
             echo "Exist, use set date";
             //$dateX=Yii::$app->getRequest()->getQueryParam('myUnix'); 
             $t=Yii::$app->getRequest()->getQueryParam('myUnix');
             } else
                   {
                    // if Unix dateTime does not exist in URL, we process the current day and convert it to Unix with function MydateToUnix($dateX
                    echo "DOES NOT Exist, use today";
                    $dateX=date('j-M-D-Y');  // today day
                    $t=MydatePrepare($dateX);
                    
                    }

/*
$dateArray=explode("-", $dateX);    // {4-Jan-Thu-2018} split/explode to Array by "-"
$objectMonth = ['Jan' ,'Feb' ,'Mar' ,'Apr' ,'May' , 'Jun' , 'Jul' ,'Aug' ,'Sep' ,'Oct' ,'Nov', 'Dec']; // Month
$position=array_search($objectMonth[1]   ,$objectMonth); // returns 1-12
$position=$position-1; // month 1-2 , not 0-11


$dateFormat=$dateArray[0]    ."/".   $position    ."/".     $dateArray[3];     // Make format 4/1/2016
$timestamp = strtotime( $dateFormat );   // get Unix Time from  4/1/2016
*/







return $this->redirect(['/day-book/index'   ,  'myUnix' =>  $t    ,]);   // redirect to same page but add $GET with Unix DateStamp, this Unix will be used for SELECT

// END Get The $_GET['myUnix'] params from URL




} // END if ($model->load(Yii::$app->request->post()) ) {  //if u click the button-----------------------





// Get The $_GET['myUnix'] params from URL

//--------------------------
 








//Final Render
        return $this->render('index', [
            'dataProvider' => $dataProvider,
            'model'=>$model,
        ]);
//END Final Render


    }
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************












// START actionView
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
    /**
     * Displays a single DayBook model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************










// actionCreate() -> creating /adding new record, inserting a record;
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
    /**
     * Creates a new DayBook model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new DayBook();
        $model->dbook_user =Yii::$app->user->identity->username; // assign User session name to SQl field
        $model->dbook_ip =$_SERVER['REMOTE_ADDR']; // assign IP

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->dbook_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************















// **************************************************************************************
// **************************************************************************************
//                                                                                     **
    /**
     * Updates an existing DayBook model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->dbook_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************

















// **************************************************************************************
// **************************************************************************************
//                                                                                     **
    /**
     * Deletes an existing DayBook model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************

















// **************************************************************************************
// **************************************************************************************
//                                                                                     **
    /**
     * Finds the DayBook model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return DayBook the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = DayBook::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************





}
