<?php
// used  for  support  Time  entries
namespace app\controllers;

use Yii;
use app\models\Support;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\Pagination;

/**
 * SuppController implements the CRUD actions for Support model.
 */
class SuppController extends Controller
{
    /**
     * @inheritdoc
     */
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






//---------------------------------------------------------------------------
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 
//-
    /**
     * Lists all Support models.
     * @return mixed
     */
    public function actionIndex()

    {




//START GridView
// **********************************
// **********************************
//                                 ** 

 if(!Yii::$app->user->isGuest){  // if Author
		//DataProvider Start
				$dataProvider = new ActiveDataProvider([
				    'query' => Support::find()->where(['supp_user' => Yii::$app->user->identity->username]),
				'pagination' => [
				'pageSize' => 4,],
			 'sort'=> ['defaultOrder' => ['supp_id'=>SORT_DESC]],

		]);
		//END DataProvider

  } // end if(!Yii::$app->user->isGuest){ 



 else {
       	//DataProvider Start
				$dataProvider = new ActiveDataProvider([
				    'query' => Support::find(),
				'pagination' => [
				'pageSize' => 4,],
			 'sort'=> ['defaultOrder' => ['supp_id'=>SORT_DESC]],

		]);
		//END DataProvider
      }

// **                      **
// **************************
// **************************
// END GridView




if(!Yii::$app->user->isGuest){  // if Author

// Active Record + Page Linker for Display entries  
// **********************************
// **********************************
//                                 ** 

//PageLinker
           $query=Support::find()->orderBy ('supp_id DESC') ;      //Where is USER ID???????????????????//->where([   'supp_user' => Yii::$app->user->identity->username
           $pages= new Pagination(['totalCount' => $query->count(), 'pageSize' => 5]);
           $modelPageLinker = $query->offset($pages->offset)->limit($pages->limit)->all();

  
           /* return $this->render('pageLinker', [
                'models' => $models,
                'pages' => $pages,
            ]);*/
//end  pageLinker

// **                              **
// **********************************
// **********************************
//
// Active Record +Page Linker for Display entries 









// Active Record for Summary 
// **********************************
// **********************************
//                                 ** 

$time;
$period2=Yii::$app->getRequest()->getQueryParam('period'); // GET parametr // NOT USED???- CONFIRM!!!

//Start DATE for CURRENT  month  ONLY----------------------------
 // If no S_GET parameter= it is current month; 
          
         // if(!$period2){  // actually this condition can be dropped

                 // Start current month--------------
                 $todayMonth=date('M'); $todayYear=date('Y');   // getting  to  today  month  &  year; /*month is literal,not  numeric*/
                 $todayMonthNumeric=date('m'); //Numeric  month (i.e 0-9)
                 $days_in_this_month=cal_days_in_month(CAL_GREGORIAN,$todayMonthNumeric,$todayYear);
                //creating templates  for SQl  condition (i.e "1-Dec-Fri-2016");
                  $startDAte= "1-" .$todayMonth.  "-"   .$todayYear;
                  $endDAte=   $days_in_this_month. "-" .$todayMonth.  "-"  .$todayYear;
                // END current month--------------


        //  } // end  if(!$period2){

 //END DATE for CURRENT  month  ONLY---------------------------




                 
//Find data for specific month
           $current = Support::find()   ->orderBy ('supp_id DESC')  /*->limit('5')*/ ->where([   'supp_user' => Yii::$app->user->identity->username, /* 'mydb_id'=>1*/   ]) /* ->andWhere(['between', 'mydb_date', $startDAte, $endDAte   ])  */ ->andFilterWhere(['like', 'supp_date', $todayMonth])  ->andFilterWhere(['like', 'supp_date', $todayYear])    ->all(); 

               //END Model  for CURRENT  month  ONLY-------------------------





for ($i=1; $i<4; $i++){

//Start DATE for Previous month  ONLY----------------------------
$PrevMonth=date('M', strtotime(date('Y-m'). " -" .$i. " month")); //$PrevMonth=date('M', strtotime(date('Y-m')." -1 month"));         
$PrevYear=date('Y', strtotime(date('Y-m')." -" .$i. " month"));  // $PrevYear=date('Y', strtotime(date('Y-m')." -1 month"));// getting previous  month  and  year;

//Find data for specific Previous month
           //createing array {Scurrent1,Scurrent2,}
            ${'current'.$i} = Support::find()   ->orderBy ('supp_id DESC')  /*->limit('5')*/ ->where([   'supp_user' => Yii::$app->user->identity->username, /* 'mydb_id'=>1*/   ]) /* ->andWhere(['between', 'mydb_date', $startDAte, $endDAte   ])  */ ->andFilterWhere(['like', 'supp_date', $PrevMonth])  ->andFilterWhere(['like', 'supp_date', $PrevYear])    ->all(); 

//END DATE for Previous month  ONLY-------------------------------

} // END FOR(++)







          

// **                              **
// **********************************
// **********************************
//
// Active Record for Summary








//Final Rendering
        return $this->render('index', [
            'dataProvider' => $dataProvider, // GRIDview
            'pages' => $pages, // AR Page Linker
            'modelPageLinker' => $modelPageLinker, // AR Page Linker pagination
 //if(!Yii::$app->user->isGuest){ 
            'current' => $current, // Act Record only- for current month summary
            'current1' => $current1, // Act Record only- for Previous month summary-> created dynamiclyy in for loop
            'current2' => $current2, // Act Record only- for Previous month summary
            'current3' => $current3, // Act Record only- for Previous month summary


// }           

        ]);

//end  render



}//if(!Yii::$app->user->isGuest){  // if Author

else{
//Final Rendering For Guest
        return $this->render('index'/*, [
            'dataProvider' => $dataProvider, // GRIDview
       

          

        ]*/);

//end  render
}

    }//end action

    /**
     * Displays a single Support model.
     * @param integer $id
     * @return mixed
     */

//----------------------------------------


// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//










    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Support model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */










//---------------------------------------------------------------------------
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 
//
    public function actionCreate()
    {
        $model = new Support();

  if(!Yii::$app->user->isGuest){ 
             $model->supp_user=Yii::$app->user->identity->username;//"dima";
  }else {$model->supp_user="";}

             $model->supp_ip=$_SERVER['REMOTE_ADDR'];

                //Rate Save   
                 /*if(isset($_POST['Support'])){
                 $model->supp_rate= $_POST['Support']['supp_amount']/$_POST['Support']['supp_hour'];
                 }*/

        if ($model->load(Yii::$app->request->post()) && $model->save()) {

              
             
            return $this->redirect(['view', 'id' => $model->supp_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }



// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//




    /**
     * Updates an existing Support model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->supp_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Support model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Support model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Support the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Support::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
