<?php

    // 接收數據
    $name = session_name();
    $id = $_GET[$name];

    //設定sessionID
    session_id($id);

    session_start();
  
    var_dump($_SESSION);
    echo '<hr>';
    var_dump($_SESSION['haha']);
?>