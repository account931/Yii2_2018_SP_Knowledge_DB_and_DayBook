<?php

use yii\helpers\Html;
use yii\bootstrap\Alert;

/* @var $this yii\web\View */
/* @var $model app\models\Support */

$this->title = 'New entry';
$this->params['breadcrumbs'][] = ['label' => 'Supports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="support-create">


 



    <h1><?= Html::encode($this->title) ?></h1>
      <!--<img src="http://icons.iconarchive.com/icons/aha-soft/torrent/256/peer-to-peer-icon.png"/>-->
      <img src=" https://blog.openshift.com/wp-content/uploads/imported/paas_db.jpg" style ="width:31%;"/>






 <?php Yii::$app->session->getFlash('savedItem');  $nn=Yii::$app->session->getFlash('savedItem'); //$nn=$nn+"</br><img src='http://icons.iconarchive.com/icons/aha-soft/torrent/256/peer-to-peer-icon.png'/>";

// If  saved and  FLASH IS SET /  has  flash   show  Bootstarp    alert  window($nn  is  used)
if (Yii::$app->session->hasFlash('savedItem'))
    {
		echo Alert::widget([
			'options' => [
				'class' => 'alert alert-success'
			],
			'body' => "$nn"."</br><p>!!!</p>"
		]);
     
}
// End  If  saved FLASH IS SET /  has  flash and  has  falsh   show  Bootstarp    alert  window------
?>







    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
