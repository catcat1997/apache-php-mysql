<?php

    session_start();

    var_dump($_SESSION);

    // 清空session文件
    // $_SESSION = array();

    sleep(5);  //休息5秒再執行代碼
    // 銷毀session 文件
    session_destroy();
    
?>