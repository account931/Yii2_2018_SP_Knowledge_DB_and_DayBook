<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\DayBook */

$this->title = 'Create Day Book Entry';
$this->params['breadcrumbs'][] = ['label' => 'Day Books', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="day-book-create">

    <h1><?= Html::encode($this->title) ?></h1>
	<p><b>It is not used, just to view model fields. All CRUD is done in index.php </b></p>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
