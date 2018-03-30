Day book
1. On load, php checks Url $_Get ['  '], if it empty, it assign it default value of today date in formart (14-Feb-2018).
2.Php function converts $_Get ['  '] formart (14-Feb-2018) to UnixStamp
2. Make Active Record  SQL SELECT where date=UnixStamp and user=current user
3.Display free and scheduled with 2 functions
4.Insert (adding new record): function displayTaken () forms ID of Add button with $_GET [' '] params (user, unix, hour, quarter).
When clicking the add button, JS takes its ID, gets texarea input and concatenate it all to URL to DayBookController/actionInsert with $_GET [' '] params (user, unix, hour, quarter, text itself)  and makes Redirect to this URL.
5. DayBookController/actionInsert makes sure that SELECT with given $_GET params in Null and creates a new record.

6. "Add" (insert) click button is handled with JS, it redirects to actionInsert with relevant params. The same goes with DELETE