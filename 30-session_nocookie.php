<?php

    // 禁用cookie下使用session
    session_start();

    // 獲取sessionID和名字
    $id = session_id();
    $name = session_name();
    echo $name . '=' . $id;
    echo '<hr>';
    var_dump($_SESSION);

    // 寫$_SESSION數據
    $_SESSION['haha'] = 'hahaha';

    echo '<br>';
    //傳給另一個腳本
    echo "<a href='31-session_nocookie2.php?{$name}={$id}'>click</a>";
?>