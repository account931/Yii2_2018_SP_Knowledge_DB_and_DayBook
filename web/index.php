<?php

//Eneable development mode on Local host only
if($_SERVER['REMOTE_ADDR'] == '127.0.0.1') {
    // comment out the following two lines when deployed to production
    defined('YII_DEBUG') or define('YII_DEBUG', true);
    defined('YII_ENV') or define('YII_ENV', 'dev');
}

require __DIR__ . '/../vendor/autoload.php';
require __DIR__ . '/../vendor/yiisoft/yii2/Yii.php';

$config = require __DIR__ . '/../config/web.php';

(new yii\web\Application($config))->run();



// Record (with CLASS) all the  input  to  txt;  //;
      include("../Classes_Mine/RecordTxt.php");
      RecordTxt::RecordAnyInput(array(/*$user*/), '../recordVisits/portal_log.txt');// Record  to  text;
//End  Record;
?>

