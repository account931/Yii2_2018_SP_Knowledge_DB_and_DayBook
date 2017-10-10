<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Alert;
use yii\bootstrap\Collapse; 
use yii\widgets\LinkPager;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Supp';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="support-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Supp', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


<?= Html::encode($this->title); 
echo "</br>";  
echo Html::img(Yii::$app->getUrlManager()->getBaseUrl().'/images/r2.png' , $options = ["margin-left"=>"3%","class"=>"sunimg","width"=>"18%",] ); 
echo '<img src="http://cdn2.cloudpro.co.uk/sites/cloudprod7/files/Cloud%20filing%20cabinet_0.jpg" style="width:7%;"/>';
?>


<style>
.separate {color:red;font-weight:bold;}
</style>



<?php 
 echo "<p class='separate'> View current month summary</p>";

 echo "<p class='separate'> View your Records</p>";

 echo "<p class='separate'> Edit your Records</p>";

  


//my  hyperlink
 echo Html::a( "Add new", ['/supp/create', 'period' => "",   ] /* $url = null*/, $options = ['title' => 'add',] ); 
           //echo '</div>'; 















//--------------------------------------------------------------------------------
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 

//<!---------------------- Start Bootstrap------------------->
//<!--https://nix-tips.ru/yii2-vse-plyushki-twitter-bootstrap.html-->

$infoLink= Html::a( "more  info", ["/site/about", "period" => "",   ] /* $url = null*/, $options = ["title" => "more  info",] );  //can't  inject it  directly to  widget

echo Alert::widget([
    'options' => [
        'class' => 'alert-info'
    ],
    'body' => "Below  u  can   <b>Record New  Activity </b> -->  <span style='font-size:0.7em;'>  $infoLink </span>   "
]);
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
?>
<!------------------------END BootStrap---------------------->



</div>









<?php
//  Collapse (Hide/  show  options)
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
$line=__FILE__;

echo Collapse::widget([
    'items' => [
        [
            'label' => '+',
            'content' => "   <p><b>Gii:</b>  http://localhost/yii/basic_download/web/index.php?r=gii
                             </br>
                             <b>MyAdmin:</b>   http://localhost/phpmyadmin/
                             </br>
                             <b>Debagger:</b>  http://localhost/yii/basic_download/web/index.php?r=debug (&r=debug)
                             </br>
                             You may modify the following file to customize its content:  
                             </br>
                             <code>$line</code></p>     ",
            // to  be  this  block open  by  default   de  comment  the  following 
            /*'contentOptions' => [
                'class' => 'in'
            ]*/
        ],
      
        
    ]
]);

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
// END  Collapse (Hide/  show  options)


   //echo '</div>';
?>






<?php
// Start if  Person is  LOGGED-------
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 
    if(!Yii::$app->user->isGuest){








		//Active Record +Page Linker
		// *******************************************************************
		// *******************************************************************
        //                                                                  **

		
		//Pjax::begin(); 

		  echo "<div class='accordion'>";
          echo "<h2>View your activity</h2>";
		  foreach ($modelPageLinker as $model) {

			//echo "<h4 style='cursor:pointer;'><img src='images/check.png' style='width:3%;cursor:pointer;'/> ".$model->supp_date." =>  </h4>";
			//echo "<p style='border:solid black 1px;padding:11px;'>".$model->supp_amount."</br></br></br></p>";

		   echo ' <h5 style="color:red;">'. Html::encode($model->supp_date). '=> </h5> ';
           echo $model->supp_amount. " cases / ".   $model->supp_hour. "hours. Average rate = ". $model->supp_rate. "";
           echo '<hr style="color:red;width:90%;">';

		  }// end foreach

		echo "</div>";
		//Pjax::end(); 


		// display LinkPager
		echo LinkPager::widget([
			'pagination' => $pages,
		]);
	

		//     
		// **                                                               **
		// *******************************************************************
		// *******************************************************************
		//End Active Record +Page Linker





 

		//Summary
		// *******************************************************************
		// *******************************************************************
        //                                                                  **
		
         echo "<h2>View Average month results</h2>";  
          
         // If no S_GET parameter= it is current month; 
          $period2=Yii::$app->getRequest()->getQueryParam('period'); 
          if(!$period2){
                     $currentMonth=date('M-Y');
                     $todayMonth=date('m'); $todayYear=date('Y');   
                     $days_in_this_month=cal_days_in_month(CAL_GREGORIAN,$todayMonth,$todayYear);//  days in this  month
                     echo" </br></br><div  style='border:solid black 1px;padding:3%;'><h3>Current  Month Results (  $currentMonth ,    $days_in_this_month days )  </h3>";

  $current_v_am=0;//amount
  $current_hours=0;// hours
         
   foreach ($current  as $wC2) {
   $current_v_am=$current_v_am+$wC2->supp_amount; //all cases amount
   $current_hours=$current_hours+$wC2->supp_hour;
    }

 echo "</br><p>Month  case amount= <span style='color:red;'>".$current_v_am ."</span></p>"; // Cases  this  month all  amount
 echo "</br><p>Month  case hours= <span style='color:red;'>".$current_hours ."</span></p>"; // Cases  this  month all  amount
 echo "</br><p>Month  rate= <span style='color:red;'>".$current_v_am/$current_hours ."</span></p>"; // Cases  this  month all  amount

                     echo "</div>";
          }// end current month
 echo"</br></br>";
		// **                                                               **
		// *******************************************************************
		// *******************************************************************
		//End Summary









		//GridView  
		// *******************************************************************
		// *******************************************************************
		//                                                                  **  

echo "<h2>View GridView</h2>";  
				echo GridView::widget([
				'dataProvider' => $dataProvider,
				'columns' => [
				    ['class' => 'yii\grid\SerialColumn'],

				    'supp_id',
				    'supp_user',
				    'supp_date',
				    'supp_ip',
				    'supp_amount',
				    'supp_hour',
				     'supp_rate',
				    // 'supp_hour',

				    ['class' => 'yii\grid\ActionColumn'],
				],
			]); 
		// **                                                               **
		// *******************************************************************
		// *******************************************************************
		//End GridView












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
           echo' <div  style="border:solid black 1px;padding:3%;display:inline-block">';
            echo Html::a( "LOG IN FIRST to view all data", ['/site/login', 'period' => "",   ] /* $url = null*/, $options = ['title' => 'Login',] ); 
            echo '</div>'; 
         }

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************         
// END if  Person is  not  logged


echo '</div>';
?>









