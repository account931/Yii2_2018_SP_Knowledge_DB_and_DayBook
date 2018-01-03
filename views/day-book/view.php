<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\DayBook */

$this->title = $model->dbook_id;
$this->params['breadcrumbs'][] = ['label' => 'Day Books', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="day-book-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->dbook_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->dbook_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'dbook_id',
            'dbook_user',
            'dbook_ip',
            'dbook_bookedDate',
            'dbook_bookedUnix',
            'dbook_quarters',
            'dbook_whenBooked',
        ],
    ]) ?>

</div>
