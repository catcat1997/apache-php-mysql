<?php

    header('Content-Type:text/html;charset=utf-8');
    
    $file = "20-被下載.txt";
    // 下載響應頭
    header('Content-Type:application/octem-stream'); //以文件流形式傳輸數據給瀏覽器
    header('Accept-ranges:bytes');                   //以字節方式計算
    header("Content-disposition: attachment;filename=" . $file); //下載,指定命名
    header('Accept-length:' . filesize($file));
    
    // 如果文件名字是從文件夾讀取出來, 而且有中文字, 如果直接使用名字作為下載 名字會出現亂碼
    // iconv( string $in_charset, string $out_charset, string $str) : string
    // 将字符串 str 从 in_charset 转换编码到 out_charset。 

    

    // 輸出文件
    // php5: 小文件
    // echo file_get_contents($file);

    // php4: 大文件
    $f = @fopen($file ,'r') or die();
    // 方式1: 直接讀, 輸出
    // while($row = fread($f,1024)){
    //     echo $row;
    // };

    // 方式2: 判定是否可讀, 之後再讀
    while(!feof($f)){
        echo fread($f,1024);
    }

    fclose($f);


?>