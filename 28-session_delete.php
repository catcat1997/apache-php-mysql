<?php

    // 開啟session
    session_start();

    // delete session data
    unset($_SESSION['name']);

    var_dump($_SESSION);
    
    // 刪除全部session信息
    // $_SESSION = array(); 
    
?>