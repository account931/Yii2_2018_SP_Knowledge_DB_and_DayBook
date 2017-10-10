<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Support */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="support-form">

    <?php $form = ActiveForm::begin();  $d=date('j-M-D-Y'  /* ,strtotime("-1 days")*/); ?>   <!--date('d.m.Y',strtotime("-1 days"));-->

        <?php if(Yii::$app->user->isGuest){ echo $form->field($model, 'supp_user')->textInput(['maxlength' => true]) ;} ?>

    <?php  //echo $form->field($model, 'supp_user')->textInput(['maxlength' => true]) ;?>

    <?= $form->field($model, 'supp_date')->textInput(['value'=>$d]) ?>

    <!--<?= $form->field($model, 'supp_ip')->textInput(['maxlength' => true]) ?>-->

    <?= $form->field($model, 'supp_amount')->textInput() ?>

    <?= $form->field($model, 'supp_hour')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
