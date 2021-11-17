<?php

    // session_start() 開啟session
    session_start();
    // 開啟session後, 就會有$_SESSION 是一個數組
    // var_dump($_SESSION);

    // 設置 session數據
    $_SESSION['name'] = 'JAck';
    $_SESSION['hobby'] = array('running','fighting');

    // 讀取session信息
    echo '<pre>';
    echo $_SESSION['name'];
    echo '<br>';
    var_dump($_SESSION['hobby']);
?>