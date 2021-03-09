Portal V2 on Yii2
Stack: lazy load, RegExp replace image, js autocomplete, PageLinker
======================================
#so far LOGIN/REG works on model/User.php, no SQL
#unlogged access is available to page {/about/} only. ACF is used.

#actionPortal -> displays all users list as <a href="/site/view-one", "id"=> $v->id,"> + search box with autocomplete which refers to the same action.
  All autocomplete results are wrapped to <a href> with help of js/autocomplete.js/autocomplete
  
#actionViewOne($id) -> gets the passed ID and searches by ID in table {k_Comprofiler} using hasMany relation in table {k_Users} {$orders = $model->tokens;}.
  In view it combines records from 2 tables.
  
#actionNews -> uses PageLinker.

==============================
added 2 htaccess. to prevent from folder listing