<?php
    var_dump($_COOKIE);
    setcookie('son11','son11');

    // 第4參數 / 根目錄範圍
    setcookie('global_son','global_son_value',0,'/');
?>