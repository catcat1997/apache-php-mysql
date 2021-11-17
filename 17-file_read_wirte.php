<?php
    // 文件讀寫操作
    // php5操作
    $file = 'content.txt';
    $content = file_get_contents($file);
    var_dump($content);
    echo '<hr>';
    $res = file_put_contents($file,  'sssssssss');
    var_dump($res);

    echo '<hr>';
    // php4操作
    // fopen 返回一個resource
    $fresource = fopen('php4content.txt','r+');
    var_dump($fresource);
    echo '<br>';
    
    // fread(resource,length);
    $read = fread($fresource,999);
    var_dump($read);

    // 寫操作對比
    $f1 = fopen('con1.txt', 'w');
    
    $f2 = fopen('con2.txt', 'a');
   
    // fwrite
    fwrite($f1,'hello');
    
    fwrite($f2,'hello');
    
    fwrite($fresource, 'hell');

    // fclose();
    fclose($fresource);
    fclose($f1);
    fclose($f2);
?>