<?php

    // CURL擴展模擬http請求
    
    //開啟會話
    $ch = curl_init();
    //var_dump($ch);

    // 設置連接選項  curl_setopt($ch , 連接選項 , 連接選項value)
    curl_setopt($ch , CURLOPT_URL , 'localhost/13-location.html');
    curl_setopt($ch , CURLOPT_RETURNTRANSFER , true); // 文件流形式返回數據 (不直接顯示)
    curl_setopt($ch , CURLOPT_HEADER , true);  // 是否得到響應頭

    // 如果使用post
    curl_setopt($ch , CURLOPT_POST , true);
    curl_setopt($ch , CURLOPT_POSTFIELDS,array('name'=>'peter'));

    // 執行 curl_exec() 會包含所有 curl_setopt的內容
    $content  = curl_exec($ch);
    echo $content;

    // 關閉會話
    curl_close($ch);
?>