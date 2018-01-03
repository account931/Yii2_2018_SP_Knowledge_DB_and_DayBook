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


$model = new DayBook();



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
