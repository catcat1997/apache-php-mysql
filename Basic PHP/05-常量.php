<?php
    // 2種常量定義方式
    define('PI',3.14);
    const pi = 3.1415;
    define('-_-','smile'); // 可定義, 要用constant() 調用
    // php 8.0 沒有大小寫的問題了

    echo PI , '</br>' , pi , '</br>' ;
    echo constant('-_-');

?>