<?php
    // php處理腳本讓瀏覽器按照指定 字符編碼 解析:
    header('Content-Type:text/html;charset=utf-8');
    $a = 100;
    $b = 0;
    if($b ===0){
        // 人為觸發錯誤提示
        trigger_error('<b>除數不能為0!</b>'); // 默認notice,會繼續執行
        trigger_error('<b>除數不能為0!</b>',E_USER_ERROR); // 默認fatal error, 代碼不會執行
    };
    echo $a / $b;

?>