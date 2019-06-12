<?php

//
//Merge VIEW

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\LinkPager;
//use yii\widgets\ActiveForm;
use yii\bootstrap\ActiveForm;//!!!!!!-> for Layout Horizintal
use yii\bootstrap\Alert;
//use kartik\widgets\ActiveForm;

use yii\jui\AutoComplete;
use yii\web\JsExpression;

use app\models\MergeUsers;

//use app\models\MergeUsers;

/* @var $this yii\web\View */
/* @var $model app\models\SupportData */
?>
<div>

</div>


<!--http://web-sprints.ru/yii2-dropdownlist-vyipadayushhiy-spisok/-->










<?php
// Start if  Person is  LOGGED-------
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 
    if(!Yii::$app->user->isGuest){
?>








<h1>Merge</h1>
<?php echo Html::a( "Return back", ['/support-data/index', 'period' => "",   ] /* $url = null*/, $options = ['title' => 'Resistration',] ); ?>
<!----------------Start-------------------------------->
<?php
// Start 
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 




 //-----------------------AR

   echo "<div class='merge'>";
echo '<img style="width:8%;" src="https://s.pfst.net/2011.06/69277782305f3dab8142f6801143f1937753c4bd2b_b.jpg"/></br></br>';

   echo "<table  class='table table-responsive table-condensed'>";
  foreach ($modelPageLinker as $model) {

    //echo "<p style='cursor:pointer;'><img src='images/check.png' style='width:3%;cursor:pointer;'/> ".$model->m_user.  " =>".  $model->m_points.  "</p>";
    echo "<tr><td> <b>". $model->m_user.   "</b></td><td>".  $model->m_points.  "</td></tr>"; 
  }//end foreach
echo "</table>";

echo "</div>";



// display LinkPager
echo LinkPager::widget([
    'pagination' => $pages,
]);
//---------------- END AR

?>
</br></br></br></br>




<!-------------------------------------------------------_!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!----------------->
<?php
//autocomplete
 //$listdata=array("Peter"=>"WWW","Ben"=>"Weeee","Joe"=>"WUUUU"); 
  //$listdata=array("Peter","Www"); 
 ?>











<div class="dcdc">

    <?php $form = ActiveForm::begin (/*[

        'id' => 'login-form',
        'layout' => 'horizontal',
        'fieldConfig' => [
            'template' => "{label}\n<div class=\"col-lg-3\">{input}</div>\n<div class=\"col-lg-8\">{error}</div>",
            'labelOptions' => ['class' => 'col-lg-1 control-label'],
            'enableAjaxValidation' => true, // my ajax
        ],
    ]*/); ?>


        <?= $form->field($modelMergeFields, 'user1') ?>
        <?= $form->field($modelMergeFields, 'user2') ?>
        
       

       <?php /*echo $form->field($modelMergeFields, 'user2')->
							input('color', ['placeholder'=>'Enter a valid week...'])->
							hint('Color picker input. Supported on Safari, Chrome, and Opera.');*/?>



<?php
//---------------------------------------------------------AUTOCOMPLETE
/*$data = MergeUsers::find()
        ->select(['m_user as value', 'm_user as  label','m_id as id'])
        ->asArray()
        ->all();
 
        echo 'Family Name' .'<br>';
    echo AutoComplete::widget([    
    'clientOptions' => [
    'source' => $data,
    'minLength'=>'3', 
    'autoFill'=>true,
    'select' => new JsExpression("function( event, ui ) {
                    $('#memberssearch-user2').val(ui.item.id);//#memberssearch-user2 is the id of hiddenInput.
                 }")],
                 ]);
*/
//-----------------------------------------END end autocomplete
?>



    
        <div class="form-group">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- dcdc -->



   
 <?php //Flash  Success
// ******************************
// ******************************                                           
//                             ** 
echo "</br></br>";
?>

 <?php /*= Yii::$app->session->getFlash('savedItem'); */
 $nn=Yii::$app->session->getFlash('savedItem'); //get Flash to Var to use in Alert widget

// If  saved and  FLASH IS SET /  has  flash   show  Bootstarp    alert  window($nn  is  used)---------
if (Yii::$app->session->hasFlash('savedItem')){echo Alert::widget([
    'options' => [
        'class' => 'alert alert-success'
    ],
    'body' => "$nn"
]);}
//  End  If  saved FLASH IS SET /  has  flash and  has  falsh   show  Bootstarp    alert  window------
// **                           **
// *******************************
// *******************************  
?>





<?php //Flash  Fail
// ******************************
// ******************************                                           
//                             ** 
echo "</br></br>";
?>

 <?php /*= Yii::$app->session->getFlash('savedItem'); */
 $nn=Yii::$app->session->getFlash('savedItemFail'); //get Flash to Var to use in Alert widget

// If  saved and  FLASH IS SET /  has  flash   show  Bootstarp    alert  window($nn  is  used)---------
if (Yii::$app->session->hasFlash('savedItemFail')){echo Alert::widget([
    'options' => [
        'class' => 'alert alert-danger'
    ],
    'body' => "$nn"
]);}
//  End  If  saved FLASH IS SET /  has  flash and  has  falsh   show  Bootstarp    alert  window------
// **                           **
// *******************************
// *******************************  
// END Flash  Fail
?>

  

 <?php
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************         
// END  
?>





















<?php   
} 
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
// END  if  Person is  LOGGED

















// Start if  Person is  not  logged
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 
    else {
           echo' </br></br><div  style="border:solid black 1px;padding:3%;display:inline-block">';
           echo Html::a( "LOG IN FIRST", ['/site/login', 'period' => "",   ] /* $url = null*/, $options = ['title' => 'Login',] ); 
           echo '</div>'; 
         }

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************         
// END if  Person is  not  logged
?>


