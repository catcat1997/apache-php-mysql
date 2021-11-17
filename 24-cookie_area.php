<?php
    var_dump($_COOKIE);
    setcookie('local_24','local_24',0,'/');

    // 指定域名cookie
    setcookie('local_area','local_area',0,'/','www.myitcast.com');

    // 設定一個允許子域名訪問的cookie
    setcookie('local_area','local_area',0,'/','myitcast.com');
?>