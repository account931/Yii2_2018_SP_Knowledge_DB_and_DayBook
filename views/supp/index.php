<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Alert;
use yii\bootstrap\Collapse; 
use yii\widgets\LinkPager;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Log your time and activity here';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="support-index">
<style>
.red{color:red;}
</style>
    <h1><?= Html::encode($this->title) ?></h1>

    <p>
       
    </p>


<?php //echo Html::encode($this->title); 
echo "</br></br></br>";  
echo Html::img(Yii::$app->getUrlManager()->getBaseUrl().'/images/r2.png' , $options = ["margin-left"=>"3%","class"=>"sunimg","width"=>"18%",] ); 
echo '<img src="http://cdn2.cloudpro.co.uk/sites/cloudprod7/files/Cloud%20filing%20cabinet_0.jpg" style="width:7%;margin-left:6%;" />';
//echo '<img src="https://cdn.pixabay.com/photo/2012/04/02/15/56/right-24823_960_720.png" style="width:17%;margin-left:6%;" />';
echo "</br>";
?>


<style>
.separate {color:black;font-weight:bold;}
</style>



<?php 
 //echo "</br></br><p class='separate'> View current month summary</p>";

 //echo "<p class='separate'> View your Records</p>";

// echo "<p class='separate'> Edit your Records</p>";

  


//my  hyperlink
 //echo Html::a( "Add new", ['/supp/create', 'period' => "",   ] /* $url = null*/, $options = ['title' => 'add',] ); 
           //echo '</div>'; 
echo "</br>";
if(!Yii::$app->user->isGuest){  echo Html::a('New Entry ++', ['create'], ['class' => 'btn btn-success']); }
echo "</br>";

//1111111111111111111111111
//--------------------------------------------------------------------------------
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 

//<!---------------------- Start Bootstrap------------------->
//<!--https://nix-tips.ru/yii2-vse-plyushki-twitter-bootstrap.html-->

$infoLink= Html::a( "more  info", ["/site/about", "period" => "",   ] /* $url = null*/, $options = ["title" => "more  info",] );  //can't  inject it  directly to  widget

echo Alert::widget([
    'options' => [
        'class' => 'alert-success'
    ],
    'body' => "<p class='separate'> View current month summary</p>
               <p class='separate'> View your Records</p>
               <p class='separate'> Edit your Records</p>
          <span style='font-size:0.7em;'>  $infoLink </span>   "
]);
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************












//2222222222222222222222222222222222
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
           echo $model->supp_amount. " cases / ".   $model->supp_hour. " hours. Average rate = ". $model->supp_rate. "";
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


// Start This month----------------		
         echo "</br><h2 class='red'>View Average month results</h2>";  
          
         // If no S_GET parameter= it is current month; 
          $period2=Yii::$app->getRequest()->getQueryParam('period'); // not used
         // if(!$period2){ // not used

                     $currentMonth=date('M-Y');
                     $todayMonth=date('m'); $todayYear=date('Y');   
                     $days_in_this_month=cal_days_in_month(CAL_GREGORIAN,$todayMonth,$todayYear);//  days in this  month
                     echo"<div  style='border:solid black 1px;padding:3%;text-decoration:underline;'><h3>Current  Month Results (  $currentMonth ,    $days_in_this_month days )  </h3>";

  $current_v_am=0;//amount
  $current_hours=0;// hours
  $current_rate;// rate  -expect ERROR here, when there is any record in the month ->implement it like in Prev Month
   

      
   foreach ($current  as $wC2) {
   $current_v_am=$current_v_am+$wC2->supp_amount; //all cases amount
   $current_hours=$current_hours+$wC2->supp_hour;
    }

 echo "</br><p>Month  case amount= <span style='color:red;'>".$current_v_am ."</span></p>"; // Cases  this  month all  amount
 echo "</br><p>Month  case hours= <span style='color:red;'>".$current_hours ."</span></p>"; // Cases  this  month all  amount
   if($current_v_am==0){$current_rate=0;}else{$current_rate=$current_v_am/$current_hours;} // avoid devision by zero and ther for avoid Fatal error
 echo "</br><p>Month  rate= <span style='color:red;'>".$current_rate ."</span></p>"; // Cases  this  month all  amount

                     echo "</div>";
         // }//End if(!$period2){ // not used // end current month
 echo"</br></br>";
// END CURRENT MONTH
// END  This month----------------		







//START ALL Previous months------------------------
echo "<h2 class='red'>View Previous months results</h2>";






   echo ' <div class="row">';
     for ($i=1; $i<7; $i++){    //($i=1; $i<4; $i++) // 3months


//
$PrevMonth=date('M', strtotime(date('Y-m')." -"   .$i. " month"));     //$PrevMonth=date('M', strtotime(date('Y-m')." -1 month"));        
$PrevYear=date('Y', strtotime(date('Y-m')." -" .$i. " month"));        // $PrevYear=date('Y', strtotime(date('Y-m')." -1 month")); 
 
$PrevMonth2=date('m', strtotime(date('Y-m')." -" .$i. " month"));            //$PrevMonth2=date('m', strtotime(date('Y-m')." -1 month")); //getting  prev  month (i.e 1-12). We need it in {cal_days_in_month(CAL_GREGORIAN)};
$days_in_prev_month=cal_days_in_month(CAL_GREGORIAN,$PrevMonth2,$PrevYear);//  number of days in prev month;


//Calculate
  $current_v_am=0;//amount
  $current_hours=0;// hours
  $current_rate=0;// rate
         
   foreach (${'current'.$i}  as $wC2) {
   $current_v_am=$current_v_am+$wC2->supp_amount; //all cases amount
   $current_hours=$current_hours+$wC2->supp_hour;
    }//end foreach


//


		echo '<div class="col-sm-4"  style="border:solid black 1px;padding:3%;">';
              echo" </br></br><h3 style='text-decoration:underline;'> Results (  $PrevMonth ,    $days_in_prev_month days )  </h3>";
              echo "<p>Month  case amount= <span style='color:red;'>".$current_v_am ."</span></p>"; // Cases  this  month all  amount
              echo "<p>Month  case hours= <span style='color:red;'>".$current_hours ."</span></p>"; // Cases  this  month all  amount
               if($current_v_am==0){$current_rate=0;}else{$current_rate=$current_v_am/$current_hours;} // avoid devision by zero and ther for avoid Fatal error
              echo "<p>Month  rate= <span style='color:red;'>".$current_rate ."</span></p>"; // Cases  this  month all  amount

		echo '</div>'; //<!-- End class="col-sm-4"> -->

                 
              //if past months more than 3 -> show link to dispaly the rest 3 month, which should be hidden
               //if($i>2){echo "<p>More</p>";}


//check if it after 3 month-> after the 3 month we display link to see more
  if($i==3){echo '<div class="col-sm-12"  style="border:solid black 1px;padding:3%;"> See more </div>';}


       } // end for loop { for ($i=1; $i<4; $i++){

    echo '</div>'; // <!--End class="row"> -->


//END Previous months-------------------------








		// **                                                               **
		// *******************************************************************
		// *******************************************************************
		//End Summary




?>



<!-- Bootstrap Collapse for GridView, show just button, gridview is hidden -->
<br>
<button data-toggle="collapse" data-target="#myHideCollapse" class="btn btn-danger">Show GridView</button>
<div id="myHideCollapse" class="collapse">

<?php
	//GridView  
	// *******************************************************************
	// *******************************************************************
	//                                                                  **  

echo "</br></br><h2 class='red'>View GridView</h2>";  
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
?>


</div><!-- END  id="myHideCollapse" class="collapse" -->
<!-- END Bootstrap Collapse for Gridview -->










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
           echo' <div  style="border:solid black 1px;padding:3%;display:inline-block">';
            echo Html::a( "LOG IN FIRST </br>to view the data", ['/site/login', 'traceURL' => "logTime",   ] /* $url = null*/, $options = ['title' => 'Login',] ); 
            echo '</div>'; 
         }

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************         
// END if  Person is  not  logged


echo '</div>';
?>









