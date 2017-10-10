<?php
//
//Controller for Support CR's knowledge base
//used  for  support Data Base, knowledge base most  frequent used topics
namespace app\controllers;

use Yii;

use app\models\SupportData;
use app\models\SupportDataSearch;
use app\models\MergeUsers;
use app\models\MergeFields;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\Html;

use yii\data\Pagination;
use yii\data\ActiveDataProvider;

use app\models\SearchFormMine; //our model for search
use yii\base\ErrorException;


/**
 * SupportDataController implements the CRUD actions for SupportData model.
 */
class SupportDataController extends Controller
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

    /**
     * Lists all SupportData models.
     * @return mixed
     */





//----------------------------------------------
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
    public function actionIndex()
    {

//  default  grid View
        $searchModel = new SupportDataSearch();
        //$dataProvider = $searchModel->search(Yii::$app->request->queryParams); //was  by  default
     $dataProvider = new ActiveDataProvider([
    'query' => SupportData::find()/*->where(['mydb_user' => Yii::$app->user->identity->username])*/,
    'pagination' => [
        'pageSize' => 4,],
     'sort'=> ['defaultOrder' => ['sData_id'=>SORT_DESC]],

]);





//Form  create--------------------
 $model = new SupportData();

             $model->sData_user="dima";
             $model->sData_ip=$_SERVER['REMOTE_ADDR'];
             $model->sData_date=date('j-M-D-Y'); 

        if ($model->load(Yii::$app->request->post()) && $model->save()) {

                               //$model->sData_header="yes";//clear field


                               //FLASHES!!!! //if  set  after F5  refreshing  won't  work;
							    Yii::$app->getSession()->setFlash('savedItemZ', "We saved your item  ->>  <b> $model->sData_header</b>");
								//prevent  F5  resending
								//Mydbstart::model()->unsetAttributes(); 
								//$model=new Mydbstart();// not  working
								return $this->refresh();


            //return $this->redirect(['view', 'id' => $model->sData_id]);
// end if ($model->load(Yii::$app->request->post()) && $model->save())

        } else { 
                  //Yii::$app->getSession()->setFlash('savedItemZ', "<span style='color:red;'>Please check your form, something was wrong ->> Your input was not saved </span> ");
           /* return $this->render('create', [
                'model' => $model,
            ]);*/
        }
//  end  Form  create---------------








//PageLinker
           $query=SupportData::find()->orderBy ('sData_id DESC') ;
           $pages= new Pagination(['totalCount' => $query->count(), 'pageSize' => 9]);
           $modelPageLinker = $query->offset($pages->offset)->limit($pages->limit)->all();

  
           /* return $this->render('pageLinker', [
                'models' => $models,
                'pages' => $pages,
            ]);*/
//end  pageLinker





//search model init-----------------------------
$searchMine=new SearchFormMine();
if ($searchMine->load(Yii::$app->request->post()) && $searchMine->validate()) 
   {
         $q=Html::encode($searchMine->q);
         return $this->redirect (Yii::$app->urlManager->createUrl (['support-data/searchmine','q'=>$q]));
   }
//END search model init--------------------------






//RENDER
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,   //def grid
            'model' => $model,       //  form 

            'pages' => $pages,      //pageLinker
            'modelPageLinker' => $modelPageLinker, //pageLinker
               'searchMine'=>$searchMine, //search
        ]);
    }

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************  
//------------------------------------------------------
// END  Index





//PROBLEM HERE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//Search
//andFilterWhere(['like', 'sData_text', Yii::$app->getRequest()->getQueryParam('q')])==LIKE
//----------------------------------------------
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
    public function actionSearchmine()
    {
      //PageLinker
                            
           $query=SupportData::find()->orderBy ('sData_id DESC')->andFilterWhere(['like', 'sData_text', Yii::$app->getRequest()->getQueryParam('q')])/*->where(['sData_text'=>Yii::$app->getRequest()->getQueryParam('q') ])*/ /* ->all()*/;
 
           $pages= new Pagination(['totalCount' => $query->count(), 'pageSize' => 9]);
           $modelPageLinker = $query->offset($pages->offset)->limit($pages->limit)->all();  
       //end  pageLinker






//RENDER
        return $this->render('searchmine', [
             'modelPageLinker' => $modelPageLinker, //pageLinker
             'pages' => $pages,      //pageLinker
]);
    }

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************  
//------------------------------------------------------
// END  Search











//Merge
//----------------------------------------------
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
    public function actionMerge()
    {
     









//Merge Model with Users for form
$modelMerge=new MergeUsers();


//Model for input fields
$modelMergeFields=new MergeFields();
 

//If the Form is trigered
            if ($modelMergeFields->load(Yii::$app->request->post())/* && $modelMergeFields->save()*/) {




//-------------
try {
    10/0;
} catch (ErrorException $e) {
    echo "</br></br><h1> EXCEPTION!!!!!!!!!!!</h1>";  Yii::warning("Деление на ноль."); 
}
/*try{
$b=10; 
if($modelMergeFields->user1==0) {
    throw new Exception("Value must be 1 or below");}
$v=22/$modelMergeFields->user1;
   }catch(Exception $e) {
  echo 'Message: ' .$e->getMessage();
}*/
//--------------
   





           
             echo "</br></br><h1></h1>";
             echo $modelMergeFields->user1;
             echo "</br>";
             echo $modelMergeFields->user2;



   
   MergeUsers::First_User();

// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 
  //1st User find
     $activeRec_User1 = MergeUsers::find()   ->orderBy ('m_id DESC')  ->limit('1') ->where(['m_user' => $modelMergeFields->user1])  ->one()/*all()*/;
  


if(!$activeRec_User1){Yii::$app->getSession()->setFlash('savedItemFail', "$modelMergeFields->user1 not found");} //FLASHES!!!! //if  set  after F5  refreshing  won't  work;
	else{
	echo "</br>User1->".$activeRec_User1->m_points; //  getting 1 Record
	//foreach ($activeRec as $d){echo $d->m_points;} // used ONLY for {->all()}  When u get an array of objects;
      
      $User1Points=$activeRec_User1->m_points; //save User1 points to Var
	  $activeRec_User1-> m_points=0; //resetting Us1 points // move to User2 if found
	 if( $activeRec_User1->save(false)){echo"</br>saved";} else {echo "screwed";}  // wont save unless set{ save(false)}
		//} // End else (!$activeRec_User1)
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//





// u can set USER2 

// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 
  //2st User
     $activeRec_User2 = MergeUsers::find()   ->orderBy ('m_id DESC')  ->limit('1') ->where(['m_user' => $modelMergeFields->user2])  ->one()/*all()*/;
if(!$activeRec_User2){Yii::$app->getSession()->setFlash('savedItemFail', "$modelMergeFields->user2 not found");} 
else{
echo "</br>User2 ->".$activeRec_User2->m_points; //  getting 1 Record
        $AllPoints=$activeRec_User2->m_points+$User1Points;
        $activeRec_User2-> m_points=$AllPoints; //calc points



          if( $activeRec_User2->save(false)){echo "</br>".$User1Points." points has been transferred to ".$modelMergeFields->user2;} else {echo "screwed";}  // wont save unless set{ save(false)}
           //return $this->refresh();  //redirecting cause lose of echo blocks
            //return $this->redirect(['merge', 'id' => $activeRec_User2->m_id]);//redirecting cause lose of echo blocks


		//FLASHES!!!! //if  set  after F5  refreshing  won't  work;
		Yii::$app->getSession()->setFlash('savedItem', "<b>$modelMergeFields->user2</b>  received <b>$AllPoints</b> points </br> <b>$modelMergeFields->user1</b>'s points set to 0 ");


    } //end if(!$activeRec_User2) else
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//
  


//TranseAction Commit
// **************************************************************
// **************************************************************
//                                                             ** 
$transaction = MergeUsers::getDb()->beginTransaction();
try {
     //$activeRec_User2-> m_points=444;
     //$activeRec_User2->save(false); // (false is a must in this case)
     echo "<p>Transaction commited</p>";
     
     //$activeRec_User1-> m_points=5;
     //$activeRec_User1->save(false);

    // ...any other SQL operations...
    $transaction->commit();
} catch(\Exception $e) {
    
    $transaction->rollBack();
    throw $e;
} catch(\Throwable $e) {
    echo"<p> Trans_Action Error1</p>";
    $transaction->rollBack();
    throw $e;
}
// **                                                             **
// *****************************************************************
// *****************************************************************
//
//END   TranseAction Commit




} // End else (!$activeRec_User1)


             }
//End If the Form is trigered








// Finding sample----------------
//Equals

//Like

// End finding samples-----------







//PageLinker------------
                            
           $query=MergeUsers::find()->orderBy ('m_id ASC')   /*->andFilterWhere(['like', 'sData_text', Yii::$app->getRequest()->getQueryParam('q')])*/    /*->where(['sData_text'=>Yii::$app->getRequest()->getQueryParam('q') ])*/ /* ->all()*/;
 
           $pages= new Pagination(['totalCount' => $query->count(), 'pageSize' => 3]);
           $modelPageLinker = $query->offset($pages->offset)->limit($pages->limit)->all();  
  //end  pageLinker-----------





//RENDER
        return $this->render('merge', [
             'modelPageLinker' => $modelPageLinker, //pageLinker
             'pages' => $pages,      //pageLinker
             'modelMerge' => $modelMerge,      //MergeUser Model
             'modelMergeFields' => $modelMergeFields,      //MergeFieldsModel
             //'queryRR' => $queryRR,      //MergeFieldsModel

            

           
        ]);
    }

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************  
//------------------------------------------------------
// END  Merge







    /**
     * Displays a single SupportData model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new SupportData model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new SupportData();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
							
            return $this->redirect(['view', 'id' => $model->sData_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing SupportData model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->sData_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing SupportData model.
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
     * Finds the SupportData model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return SupportData the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = SupportData::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
