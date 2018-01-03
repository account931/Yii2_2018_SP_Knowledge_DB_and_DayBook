<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\DayBook */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="day-book-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'dbook_user')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'dbook_ip')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'dbook_bookedDate')->textInput() ?>

    <?= $form->field($model, 'dbook_bookedUnix')->textInput() ?>

    <?= $form->field($model, 'dbook_quarters')->textInput() ?>

    <?= $form->field($model, 'dbook_whenBooked')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
