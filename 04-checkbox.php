<?php
    header('Content-Type:text/html;charset=utf-8');
    echo '<pre>';
    @var_dump($_GET);
    @var_dump($_POST);
    echo '<hr>';
    // 提取post接收數據內的數組hobby
    $hobby = isset($_POST['hobby']) ? $_POST['hobby'] : array();
    print_r($hobby);
    // hobby數組轉換為字符串 implode(連接方式, 目標數組)
    $hobby_string = implode(' , ',$hobby);
    echo '<hr>';
    print_r($hobby_string);
    // explode(分開字符串, 目標字符串) 字符串轉換數組
    // 假設$hobby_string是由數據庫取出來的字符串
    echo '<hr>';
    var_dump(explode(' , ',$hobby_string));
?>