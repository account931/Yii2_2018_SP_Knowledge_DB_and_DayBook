<?php

use yii\helpers\Html;


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

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
