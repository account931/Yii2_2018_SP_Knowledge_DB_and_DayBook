<?php

// For Calendar pop-up js, we use  web/js/datepicker.min.js
// For Calendar pop-up css, we use web/css/datepicker.min.css
// JS << >>, calendar my Pick UP  is displayed in this file

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;

use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */



$this->title = 'Day Books';  // title
$this->params['breadcrumbs'][] = $this->title;

$GLOBALS['unix'] = $timestampUnix; //as it is not seen in function in normal pass from controler
?>



<div class="day-book-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php echo Html::img(Yii::$app->getUrlManager()->getBaseUrl().'/images/datetime.png' , $options = ["margin-left"=>"3%","class"=>"sunimg","width"=>"18%",] ); ?>

   </br></br><p>
        <?= Html::a('Create Day Book', ['create'], ['class' => 'btn btn-success']) ?>  <!--- Create new---->
   </p> 



<?php
// Check $_GET['myUnix'] params from URL---DELETE???
/*
 if(  Yii::$app->getRequest()->getQueryParam('myUnix') ) {
             echo "Exist";
             } else{
                    echo "DOES NOT Exist";
                    }
*/

?>





<!-----------------------------------------------------------START FORM---------------------------------------------->
</br></br><hr style="width:60%;">
<!--</br><hr style="width:80%;">-->
</br></br></br></br></br></br>

<style>
/*Class for taken and free dates     #00e600*/
.taken{background-color:#ff471a;border:solid red 2px;color:white;padding:2em;}
.free{background-color:#5cb85c ;color:white;padding:2em;cursor:pointer;}

/*Link to book a date*/
.bookLink{font-size:1em; text-decoration: underline;}


/* Trash icon */
.deleteMe{width:4%;}

/* MOBILE Padding for right tables on mobile-makes a margin at bottom------------------------*/
@media screen and (max-width: 600px){  /*480*/

.deleteMe{width:10%;}
}
/* END Padding for right tables on mobile-makes a margin at bottom-------------------------*/

</style>











<?php

// Start if  Person is  LOGGED-------
// **************************************************************************************
// **************************************************************************************
//                                                                                     ** 
    if(!Yii::$app->user->isGuest){



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	




//Form the date in input value, if there's value in URL we take it 
if( Yii::$app->getRequest()->getQueryParam('myUnix') )  // if Unix dateStamp exist in URL, we take it without processing  
{
 $d=Yii::$app->getRequest()->getQueryParam('myUnix');
}else{  

 if($model->dbook_bookedDate==''){
 $d=date('j-M-D-Y'  /* ,strtotime("-1 days")*/);  // <!--date('d.m.Y',strtotime("-1 days"));-->
 }else { $d=$model->dbook_bookedDate;}
 }
 //END Form the date in input value, if there's value in URL we take it 
?>






	
	

 





<?php $form = ActiveForm::begin(); ?>

<?= $form->field($model, 'dbook_bookedDate')->textInput(['value'=>$d , 'id' => 'myDateInputDayBook']   ) ?>
       
<input type="button" value="<<" id="prevDay"/>  <input type="button" value=" Calendar" id="calendarPick"/>  <input type="button" value=">>" id="nextDay"/> </br></br>
    
    <div class="form-group">
         <?= Html::submitButton($model->isNewRecord ? '<<' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
         <?= Html::submitButton($model->isNewRecord ? 'Create->False' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
         <?= Html::submitButton($model->isNewRecord ? '>>' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
     </div>

 <?php ActiveForm::end(); ?>

<!-----------------------------------------------------------END FORM---------------------------------------------->










<?php 
//UnixTime from Controller, used to form <a href>
echo "---> ". $timestampUnix ."</br>".  $time;  
echo "</br>";
?>

<?php 
      //delete, just test
      foreach ($result as $model) 
      {
      echo $model->	dbook_agenda;
      echo "</br>";
      }
      //delete, just test




// **************************************************************************************
// **************************************************************************************
//                                                                                     **
function DisplayReserved($iterator,$nextIterator,$indexOf,$result,$minutesStart,$minutesEnd){ 
 // 1)$iterator==$i (calculated in for(){} loop), 2)$nextIterator (hour+1)==$t==$i+1 (for those who has duplicate), if does not use NULL
 //3)$indexOf==position 4)$result==Act record array result from Controller
 //5))$minutesStart==30 OR 00  6)$minutesEnd== 30 OR 00
 
    //if $nextIterator/$t called as Null (we DON"T need $nextIterator/$t   for 1st Row calling(i.e 9.00-9.30)), we Do NEED it for the second row(9.30-10.00)
    if( is_null($nextIterator) ) {$nextIterator=$iterator;} else {$nextIterator=$nextIterator;}
	 $idX=$result[$indexOf]->dbook_id;
     echo "<h6 class='taken'> Scheduled =>  ".$iterator.  "."   .$minutesStart.  "-" .$nextIterator. "."   .$minutesEnd.   " Activity-></br> <span class='bookLink' style='border:0.1em solid white;padding:0.5em; background:orange;'> ".    $result[$indexOf]->dbook_agenda.    "</span>  <img class='deleteMe' id='$idX'  style=' margin-left:0.8em;cursor:pointer;' src='images/deleteww.png'/>";
	  //echo "</br>". Html::a('Test delete', Url::to(['day-book/delete',"id"=>$idX]), ['data-method' => 'POST']);
	   echo "<h6>";
   

}
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//DisplayReserved($i,null,$indexOf,$result, '00',  '30');
//DisplayReserved($i,$t,$indexOf+1,$result, '30',  '00');








//Function which forms free cells and <a href> with data to book it
// **************************************************************************************
// **************************************************************************************
//                                                                                     **

                                                                                  
function DisplayFree($iterator,$nextIterator,$minutesStart,$minutesEnd){ 

 if( is_null($nextIterator) ) {$nextIterator=$iterator;} else {$nextIterator=$nextIterator;}
 
 $booker=Yii::$app->user->identity->username; //user name, used for <a href> link
 $timestampUnixZ=$GLOBALS['unix']; // Unixstamp for date
 //echo "--->>> ".$GLOBALS['unix']; // used for <a href> link
 $agenda=false; //not used
 $hour=$iterator; // used for <a href> link
 //findin quarters (0||3)
 if($minutesStart=="00"){
 $quarter=0;
 }else{
 $quarter=3;
 }
 
 echo "<h6 class='free accordition bookLink23'> Free =>  ".$iterator.  "."   .$minutesStart.  "-" .$nextIterator.   "."    .$minutesEnd.       "<span class='bookLink'  id='' > schedule it</span>   </h6>";
 echo "<p style='display:none;margin-top:0.7em;background-color:;' class='nnn'>  Your agenda</br> <textarea rows='2' cols='50' placeholder='...'></textarea>
  </br><button type='button' class='bookFinal' id='booker=$booker&unix=$timestampUnixZ&hour=$hour&quarter=$quarter' > OK </button>  </p>";

  //<input class='nameX' type='text'size='7' placeholder='agenda...'/>
/*
             $form = ActiveForm::begin(); ?>
            <?= $form->field($model, 'dbook_user')->textInput(['class' => 'input']) ?>
            <?= Html::submitButton('Search', ['class' =>  'btn btn-success'])?>
            <?php ActiveForm::end(); 
	
	*/
 }


// **                                                                                  **
// **************************************************************************************
// **************************************************************************************















// **************************************************************************************
// **************************************************************************************
//                                                                                     **
// START CORE algorithm------------------------------------------------------------------
       $bIntervals=array();// array for intervals available 

		foreach($result as $ss){
                             array_push($bIntervals,$ss->dbook_intervals);
                             }

      print_r($bIntervals);
	  
	  // sTART Inject---
	  for($i=6; $i<23; $i++){
             //if time exists in array  $bIntervals, displays taken
             if(in_array($i, $bIntervals))
			 { 
			   $indexOf=array_search($i,$bIntervals); // find the indexOf of $i, which exists in array to use {$rowF[$indexOf]['b_booker'].}
			   $Next_i=$indexOf+1;  //the position of first found +1
			   $t=$i+1; // next hour
			   
			   if( $i==$bIntervals[$Next_i] ){  //if have duplicate = Reserved/Reserved
					//$t=$i+1; // next hour -delete?? as it has duplicate line
					//$indexOf=array_search($i,$bIntervals); // find the indexOf of $i, which exists in array to use {$rowF[$indexOf]['b_booker'].}    //-delete?? as it has duplicate line
					DisplayReserved($i,null,$indexOf,$result, '00',  '30'); //1st Row  //DisplayReserved($iterator,$nextIterator,$indexOf,$result,$minutesStart,$minutesEnd)
					//!!!!replaced by DisplayReserved() //echo "<h6 class='taken'> Reserved =>  ".$i.  ".00-" .$i. ".30   <span class='bookLink'>Activity->  ".    $result[$indexOf]->dbook_agenda.    "</span>  <a href='/?delete=on&unix=$timestampUnix'><img class='deleteMe' id=''  style='width:3%;margin-right:0.6em;' src='images/delete.png'/></a></h6>"; //  we have  to change <p>  to <h6> as it caused cool option to hide taken dates
				       //second row
					$Next_indexOf=$indexOf+1; //Take next row from Active Record result
					DisplayReserved($i,$t,$indexOf+1,$result, '30',  '00');  //2nd Row //Reserved second Row
					//!!!!replaced by DisplayReserved() //echo "<h6 class='taken'> Reserved =>  ".$i.  ".30-" .$t. ".00   <span class='bookLink'>Activity->  ".    $result[$Next_indexOf]->dbook_agenda.    "</span>  <img class='deleteMe' id=''  style='width:3%;margin-right:0.6em;' src='images/delete.png'/></h6>"; //  we have  to change <p>  to <h6> as it caused cool option to hide taken dates
				   }	//End if($i==$bIntervals[$Next_i] ){  //if have duplicate
				   

                if( $i!=$bIntervals[$Next_i] ){  //if DOES NOT have duplicate
				                if($result[$indexOf]->dbook_quarters==0){ // if it is for 9.00-9.30 = Reserved/Free
								   
								   DisplayReserved($i,null,$indexOf,$result, '00',  '30'); //Reserved 1st Row
								   //!!!!replaced by DisplayReserved()  //echo "<h6 class='taken'> Reserved =>  ".$i.  ".00-" .$i. ".30   <span class='bookLink'>Activity->  ".    $result[$indexOf]->dbook_agenda.    "</span>  <img class='deleteMe' id=''  style='width:3%;margin-right:0.6em;' src='images/delete.png'/></h6>";
								       
									   //second Free Row
									DisplayFree($i,$t,"30","00");
								   //Replaced by DisplayFree() //echo "<h6 class='free accordition bookLink23'> Free =>  ".$i.  ".30-" .$t. ".00        <span class='bookLink'  id='' > book it</span>   </h6>";
                                   //echo "<p style='display:none;margin-top:0.7em;background-color:;' class='nnn'>  Your agenda <input class='nameX' type='text'size='7' placeholder='agenda...'/> <button type='button' class='bookFinal' id='tbTime-$i&d-$unix&tableId-$table&timeNormal-$timeNormal' > OK </button>  </p>";
								
								}// END if($result[$indexOf]->dbook_quarters==0)
								
								
								if($result[$indexOf]->dbook_quarters==3){ // if it is for 9.30-10.00 = Free/Reserved
								    DisplayFree($i,null,"00","30");					
								   //Replaced by DisplayFree() //echo "<h6 class='free accordition bookLink23'> Free =>  ".$i.  ".00-" .$i. ".30        <span class='bookLink'  id='' > book it</span>   </h6>";
                                   //echo "<p style='display:none;margin-top:0.7em;background-color:;' class='nnn'>  Your agenda <input class='nameX' type='text'size='7' placeholder='agenda...'/> <button type='button' class='bookFinal' id='tbTime-$i&d-$unix&tableId-$table&timeNormal-$timeNormal' > OK </button>  </p>";
								       
									   //second Reserved
								   DisplayReserved($i,$t,$indexOf,$result, '30',  '00');  //2nd Row //Reserved second Row
								   //!!!!replaced by DisplayReserved() // echo "<h6 class='taken'> Reserved =>  ".$i.  ".30-" .$t. ".00   <span class='bookLink'>Activity->  ".    $result[$indexOf]->dbook_agenda.    "</span>  <img class='deleteMe' id=''  style='width:3%;margin-right:0.6em;' src='images/delete.png'/></h6>";
								       
								}// END else if($result[$indexOf]->dbook_quarters==3){ // if it is for 9.30-10.00 = Free/Reserved
                 }	//end if( $bIntervals[$i]!=$bIntervals[$Next_i] ){  //if DOES NOT have duplicate

				 
              }  // End if(in_array($i, $bIntervals))
			  
			  
			  
			  
			  else   //if i does not exist in array (i.e it is FREE/FREE)
			  { 
				$tt=$i+1;	
				//
				
				//1st FREE ROW
                 DisplayFree($i,null,"00","30");								   			
				//Replaced by DisplayFree()	//echo "<h6 class='free accordition bookLink23'> Free =>  ".$i.  ".00-" .$i. ".30        <span class='bookLink'  id='' > book it</span>   </h6>";
                //echo "<p style='display:none;margin-top:0.7em;background-color:;' class='nnn'>  Your agenda <input class='nameX' type='text'size='7' placeholder='agenda...'/> <button type='button' class='bookFinal' id='' > OK </button>  </p>";
				   
				   
				   //second Fee Row
				    DisplayFree($i,$tt,"30","00");
				 //Replaced by DisplayFree()	//echo "<h6 class='free accordition bookLink23'> Free =>  ".$i.  ".30-" .$tt. ".00        <span class='bookLink'  id='' > book it</span>   </h6>";
                 //echo "<p style='display:none;margin-top:0.7em;background-color:;' class='nnn'>  Your agenda <input class='nameX' type='text'size='7' placeholder='agenda...'/> <button type='button' class='bookFinal' id='' > OK </button>  </p>";
		      } //End Else
			  
			  
			  
			  
						  } //End for($i=9; $i<18; $i++)

	  // End Inject

// END CORE algorithm------------------------------------------------------------------------
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************





?>














</br>
</br><hr style="width:40%;">
</br><hr style="width:60%;">
</br><hr style="width:80%;">
</br><hr style="width:80%;">
<center><h2> GridView </h2></center>








<!-----------------------------------------------GRIDVIEW------------------------------>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'dbook_id',
            'dbook_user',
            'dbook_ip',
            'dbook_bookedDate',
            'dbook_bookedUnix',
			'dbook_intervals',   //hours 8-20
            'dbook_quarters',   // 0 OR 3 (9.00-9.30 or 9.30-10.00)
            'dbook_agenda',     // your plans

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

<!-----------------------------------------------GRIDVIEW------------------------------>













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

?>


















</div> <!----END class="day-book-index">-->








































<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
var Monthh = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]; //General array for all click actions
//General arrayweek days for all click actions
var weekdays = new Array(7);
        weekdays[0] = "Sun";
        weekdays[1] = "Mon";
        weekdays[2] = "Tue";
        weekdays[3] = "Wed";
        weekdays[4] = "Thu";
        weekdays[5] = "Fri";
        weekdays[6] = "Sat";
		
		
		
		
		
//--------------------------------------------------------------------------------------------------------------------------		
//Click Prev Day <<  day -1;
    var decr=1;
    $("#prevDay").click(function(){
     var FormInputFirst= $("#myDateInputDayBook").val(); //alert ("1st->"+FormInputFirst); //gets the value from input (autogenerated by Php)
     
//----------------
     //Start=>below is temp disabled, as cause 50% error. This section was used to form {var adoptedDateFormat} and use it in {var date = new Date(adoptedDateFormat)}
     // here we split the php dtae to format fits for '2017,9,13' format to use in New Date()-------------
           var dateSplit=FormInputFirst.split('-');   //.split('\n').join(',').split(',');  
 
         //Object with Month // the crash might happen here;-Yes, here currentle don't use , we switch to var Monthh []
            var objectMonth = { Jan:"0",Feb:"1",Mar:"2",Apr:"3",May:"4",Jun:"5",Jul:"6",Aug:"7",Sep:"9",Oct:"10",Nov:"11", Dec:"12"};// creat object as no assoc array in JS// Version-2, seems work
            //var objectMonth = { Jan:"0",Feb:"1",Mar:"2",Apr:"3",May:"4",Jun:"5",Jul:"6",Aug:"7",Sep:"8",Oct:"9",Nov:"10", Dec:"11"};// creat object as no assoc array in JS
            //var c=dateSplit[1];alert (c);
            //alert(objectMonth[c]);
			
			//get the 2nd array element (i.e Feb), find it position in array, make +1
			var monthSplit= Monthh.indexOf(dateSplit[1]);   monthSplit=parseInt(monthSplit)+1;        //alert(monthSplit);
            var adoptedDateFormat=dateSplit[3]+ "," +monthSplit  /*objectMonth[dateSplit[1]]*/  +","+dateSplit[0];    //set to format duitable for JS (YYYY,MM, DD)
            //alert (adoptedDateFormat);
     // END here we split the php dtae to format fits for '2017,9,13' format---------
    //END =>below is temp disabled, as cause 50% error. This section was used to form {var adoptedDateFormat} and use it in {var date = new Date(adoptedDateFormat)}
//------------------------------
      //alert (adoptedDateFormat); alerting date
//get date object .(adoptedDateFormat)  in argument is a a specific date 

     var date = new Date(adoptedDateFormat); //var date = new Date('04/28/2013 00:00:00');  // must be 2017,9,13'  // creates new date based on input time gen by PHP
      //var date = new Date();  //creates a new date onb for today
	  
	  
var yesterday = new Date(date.getTime() -(1/*decr*/*24*60*60*1000)); //24*60*60*1000 // gets the date  -1 day
    //--start function
     var curr_date =yesterday.getDate();
     var curr_month = yesterday.getMonth();// + 1; 
     var curr_year = yesterday.getFullYear();
     //var Monthh = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];// dublicate
//week

        var r = weekdays[yesterday.getDay()];
         //alert(r);
//end week
     //alert ("Curr=> " +Monthh[curr_month]+ " date "+ curr_date );
    //
      
//getting all together 
      yesterday=curr_date+"-"+Monthh[curr_month]   +"-" +r+  '-'+curr_year;
//End function-----------------------
      $("#myDateInputDayBook").val(yesterday); 
      //decr++;  // must be commented if u try to get date value from input
	  
	  
    //Do JS Redirect with $_GET['myUnix']=selected date!!!!!!!!!!!!!!!!!!!!!!!!!!!11
	  var currentURL = window.location.href.split('?')[0]; //get the URL address without any $_GET['parmas']
	  finalURL=currentURL+ "?r=day-book&myUnix=" + yesterday;
	  window.location = finalURL;
	
	  
    }); //end click
	
	
	
	
//-------------------------------------------------------------------------------------------------------------------------------------------------------
//Start next Day------------------------------
 var decrNext=1;
    $("#nextDay").click(function(){
     var FormInputFirst= $("#myDateInputDayBook").val(); //alert ("1st->"+FormInputFirst); //gets the value from input (autogenerated by Php)
     
     // here we split the php dtae to format fits for '2017,9,13' format-------------
           var dateSplit=FormInputFirst.split('-');   //.split('\n').join(',').split(',');  
            var objectMonth = {Oct:"9", model:"500", color:"white"};// creat object as no assoc array in JS???????
            //var c=dateSplit[1];alert (c);
            //alert(objectMonth[c]);
			
			//get the 2nd array element (i.e Feb), find it position in array, make +1
			var monthSplit= Monthh.indexOf(dateSplit[1]);   monthSplit=parseInt(monthSplit)+1;       // alert(monthSplit);
			
            var adoptedDateFormat=dateSplit[3]+ "," + /*objectMonth[dateSplit[1]]*/monthSplit +","+dateSplit[0];    //set to format duitable for JS (YYYY,MM, DD)
            //alert (adoptedDateFormat);
     // END here we split the php dtae to format fits for '2017,9,13' format---------
  
//get date object
     var date = new Date(adoptedDateFormat); //var date = new Date('04/28/2013 00:00:00');  // must be 2017,9,13'  // creates new date based on input time gen by PHP
     var yesterday = new Date(date.getTime() +(1/*decrNext*/ *24*60*60*1000)); //24*60*60*1000 // gets the date  -1 day
    //
     var curr_date =yesterday.getDate();
     var curr_month = yesterday.getMonth();// + 1; 
     var curr_year = yesterday.getFullYear();
     //var Monthh = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];  dublicate
//week->below is a duplicate
/*var weekdays = new Array(7);
        weekdays[0] = "Sunday";
        weekdays[1] = "Monday";
        weekdays[2] = "Tuesday";
        weekdays[3] = "Wednesday";
        weekdays[4] = "Thursday";
        weekdays[5] = "Fri";
        weekdays[6] = "Satur";*/
        var r = weekdays[yesterday.getDay()];
         //alert(r);
//end week
     //alert ("Curr=> " +Monthh[curr_month]+ " date "+ curr_date );
    //
      
//getting all together 
      yesterday=curr_date+"-"+Monthh[curr_month]   +"-" +r+  '-'+curr_year;
      $("#myDateInputDayBook").val(yesterday); 
      //decrNext++; //we deactivate it, should be used only if we want to start from current (today) date only
	  
	
	
	//Do JS Redirect with $_GET['myUnix']=selected date!!!!!!!!!!!!!!!!!!!!!!!!!!!11
	  var currentURL = window.location.href.split('?')[0]; //get the URL address without any $_GET['parmas']
	  finalURL=currentURL+ "?r=day-book&myUnix=" + yesterday;
	  window.location = finalURL;
	
	
	  
    }); //end click
//
//End Next day--------------------------------











//Start PickDate cal-----------------------------------------------------------------------------------------------------------------------------------
var selectedDate = "";
	
 $('#calendarPick').datepicker( {
    onSelect: function(date) {
       //alert(date);
	   selectedDate = date; // datePicker returns date in format ->  14.10.2017
	  // alert(selectedDate);
    dateArray=selectedDate.split('.');// set to array 
//inj
//var Monthh = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];//dublicate
                               //adding void zero element as picker returns month number from 1 to 12, not 0-11
//week-0>below is dublicate
/*var weekdays = new Array(7);
        weekdays[0] = "Sunday";
        weekdays[1] = "Monday";
        weekdays[2] = "Tuesday";
        weekdays[3] = "Wednesday";
        weekdays[4] = "Thursday";
        weekdays[5] = "Fri";
        weekdays[6] = "Satur";*/
//inj
//alert(dateArray[1] );
//creates a new Date obj with date-> get Mon,Tues
 // we -1 because  month returned by DatePicker are from 1-12, not 0-11 as in arrat Monthh
 var monthAdopted=dateArray[1]-1; //alert(monthAdopted); // we use dateArray[1]-1 because month value range (1-12) and my Month array range (0-11)
 var oldDate=dateArray[2]+ "," + dateArray[1] /*monthAdopted*/ + "," +dateArray[0];  // Y-M-D   //  the wrong Week days' Error was here-> by using adopted month {var monthAdopted} u calling not actual date, but with -1 monyth; thus u create object for prev month not current;
 // use dateArray[1] instead monthAdopted to fix wrong week days;
 //alert(oldDate);
 var date = new Date(oldDate);// Y-M-D
 var r = weekdays[date.getDay()]; //get Mon,Tues
 //alert("->"+ date.getDay());// alerts nmumeric
    //final assigning
    selectedDateX=dateArray[0]+  '-'    +  Monthh[monthAdopted] + "-"+ r +  "-" + dateArray[2]  ; // date-month(Oct,Nov)-weekDay-Year
	$("#myDateInputDayBook").val(selectedDateX); //sets the date to input
	$("#calendarPick").val("Calendar"); //rename the buttion to calendar agian
		
		
		
//Do JS Redirect with $_GET['myUnix']=selected date
	  var currentURL = window.location.href.split('?')[0]; //get the URL address without any $_GET['parmas']
	  finalURL=currentURL+ "?r=day-book&myUnix=" + selectedDateX;
	  window.location = finalURL;
	
		
		
		
		
  
	/*
    selectWeek: true,
    inline: true,
    startDate: '01/01/2000',
    firstDay: 1
	*/
	
  },// end onSelect action!!!!!!!!!!!!!!!!
  }); //end DatePicker click
//End PickDate cal---------------------------







function SetJsDate_toPhpDAte(jsString){
}
// END SetJsDate_to PhpDAte










//Start click on "book it" in SQL results display - just show name to book accordition
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
$(document).on("click", '.bookLink23', function() {      //for newly generated                                                                             

  
     ShowNameFieldsAccordition( $(this)  ); //show/hide name fields in accordition
     //sendAjaxSQLInsert($(this)); //sends Ajax Insert request to Php_AjaxHandler/insertTAble.php  to insert data
});
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//
//END  click on "book it" in SQL results display-just show name to book accordition














// ShowNameFieldsAccordition
// **************************************************************************************
// **************************************************************************************
//                                                                                     **  
 function ShowNameFieldsAccordition(ttt){
    

                ttt.next("p").slideToggle(500)
               .siblings("p:visible").slideUp(800); 

     //$(".nnn").not(this).hide(1400);  //.not(this)

     //ttt.next("p")./*slideDown*/slideToggle(300)   /*.nextAll("p").hide(400)*/   /*.siblings('.n').slideUp(1400);*/             //siblings(".nnn").slideUp(1400);  
    // ttt.nextAll('.nnn').not('.first').slideUp(1400);     //nextAll(".nnn").hide(300);
      


          
 
  

               /*$(this).next("p").slideToggle(500)
               .siblings("p:visible").slideUp(1400);  */

  
  }

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
// END  showNameFields()











//Start click on "book it" -> it forms the whole URL (90% takes from $this ID+ take input value with agenda) and makes js redirect
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
$(document).on("click", '.bookFinal', function() {      //for newly generated                                                                             

  FormUrl_AndRedirect(  $(this) );
 
});
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//
//END  click on "book it" -> it forms the whole URL (90% takes from $this ID+ take input value with agenda) and makes js redirect










//Start FormUrl_AndRedirect() -> it forms the whole URL (90% takes from $this ID+ take input value with agenda) and makes js redirect
// **************************************************************************************
// **************************************************************************************
//                                                                                     **                                                                          

  function FormUrl_AndRedirect( myRef_This){
  
    idm= myRef_This.attr("id"); // get the id== booker-Dima&unix-1517169600&hour-6&quarter=0
    window.v= myRef_This.prevAll('textarea').val(); //get agenda input   //window.v= myRef_This.prevAll('input').val(); //get agenda input 
	//alert(window.v); 
	finalURL=idm+"&agenda="+v;
	
	//currentURL=window.location.href; // current url address
	var currentURL = window.location.href.split('?')[0]; //get the URL address without any $_GET['parmas']
	finalURL=currentURL+"?r=day-book/insertmy&"+finalURL; // current address+ $_GET['params']
    alert(finalURL);
	
    window.location = finalURL;
  
  
  } // end  function FormUrl_AndRedirect()
   

// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//
//END FormUrl_AndRedirect()  -> it forms the whole URL (90% takes from $this ID+ take input value with agenda) and makes js redirect









//Start click on "delete" -> it forms the URL do actiondelete and redirects to it
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
$(document).on("click", '.deleteMe', function() {      //for newly generated                                                                             

  RedirectToDeleteItem(  $(this) );
 
});
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//
//END  click on "delete" -> it forms the URL do actiondelete and redirects to it







//-----------------------------------------------
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
//Function tha makes redirection with POST/GET(from stackoverflow
//The problem was that Yii2 didn't accept for safety reason, so I had to add field {<input type="hidden" name="_csrf" value="<?=Yii::$app->request->getCsrfToken()?>" />}
//Below field deisables Yii2 CSRF check, and you can call action from outer path

   function url_redirect(options){
                 var $form = $("<form />");
                 
                 $form.attr("action",options.url);
                 $form.attr("method",options.method);
                 
                 for (var data in options.data)
                 $form.append('<input type="hidden" name="_csrf" value="<?=Yii::$app->request->getCsrfToken()?>" /> <input type="hidden" name="'+data+'" value="'+options.data[data]+'" />');
                  
                 $("body").append($form);
                 $form.submit();
            }
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//
//---------------------------------------------------------			
			
         




//Start click on "delete" -> it forms the URL do actiondelete and redirects to it
// **************************************************************************************
// **************************************************************************************
//                                                                                     **
function RedirectToDeleteItem(passedThis){
		if (confirm("Sure to delete it?")) {
		var thisID=passedThis.attr("id"); //alert(thisID);  //get the id of clicked
		
		//currentURL=window.location.href; // current url address
	    var currentURL = window.location.href.split('?')[0]; //get the URL address without any $_GET['parmas']
	    finalURL=currentURL+"?r=day-book/delete&id="+thisID; // current address+ $_GET['params']
        alert(finalURL);
	
	    //$.redirect(currentURL  , {'r': 'day-book/delete', 'id': thisID});
        //window.location = finalURL;
		//myRedirect(finalURL, "id", thisID);
	
	
	
	    //start function url_redirect() to redict script to delete action
            $(function(){
                /*jquery statements */
                url_redirect({url: finalURL,
                  method: "post",
                  data: {"s":"KnowledgeWalls"} //this line is anactive
                 });
            });
        //END  function url_redirect() to redict script to delete action
	

	} else {
	}

}
// **                                                                                  **
// **************************************************************************************
// **************************************************************************************
//
//END  click on "delete" -> it forms the URL do actiondelete and redirects to it







}); // end ready 
</script>

