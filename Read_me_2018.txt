#Yii2 application for Support CR knowledge base, Support cases/hour rates, point merge + Yii2 Day Book.

#This Yii2 was built on base of previous Yii2 Geocoding app (which included Geocoding time logs, etc), i,e not to mess to much I just copied Yii2 Geocoding app, 
  commented old Nav links and created new Nav links to new Controller, i.e it means that all old models/views/controllers are still in this folder, they are just not used.

#It contains all Model/Views/Controllers files from Yii2 Geocoding (which were on hostinger (waze.ese.es/2), just links to them are commented in menu.)+ new supp mvc files (supp time logs, knowledhe base, point merge).



#Web version is available at http://waze.zzz.com.ua/support/web/
#Web version uses zzz DB {account931_1}, user  {account931yii}
#SQL_DB_ARCHIEVE folder contains sql export from zzz.com.ua and contain some unnessesary db tables, like from Conert (Hall_Events, Hall_Free_taken_seats), Google map store locator(markers), waze.zzz.com/booking (bookingTable)
















====================================================================
Day book
1. On load, php checks Url $_Get ['  '], if it empty, it assign it default value of today date in formart (14-Feb-2018).
2.Php function converts $_Get ['  '] formart (14-Feb-2018) to UnixStamp
2. Make Active Record  SQL SELECT where date=UnixStamp and user=current user
3.Display free and scheduled with 2 functions
4.Insert (adding new record): function displayTaken () forms ID of Add button with $_GET [' '] params (user, unix, hour, quarter).
When clicking the add button, JS takes its ID, gets texarea input and concatenate it all to URL to DayBookController/actionInsert with $_GET [' '] params (user, unix, hour, quarter, text itself)  and makes Redirect to this URL.
5. DayBookController/actionInsert makes sure that SELECT with given $_GET params in Null and creates a new record.