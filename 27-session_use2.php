<?php

    //使用 26-session_use.php中保存的數據

    // 開啟session
    session_start();

    // 讀取$_SESSION數據
    echo '<pre>';
    echo $_SESSION['name'];
    echo '<br>';
    var_dump($_SESSION['hobby']);
?>