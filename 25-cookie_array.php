<?php

    // 使用數組保存cookie

    // 偽裝數組
    setcookie('goods_id[0]',001);
    setcookie('goods_id[1]',002);
    setcookie('goods_id[2]',003);
    setcookie('goods_id[3]',004);

    // 讀取偽裝數組cookie
    echo '<pre>';
    var_dump($_COOKIE);
    echo '<hr>';
    echo $_COOKIE['goods_id'][0];
    echo $_COOKIE['goods_id'][1];
    echo $_COOKIE['goods_id'][2];
    echo $_COOKIE['goods_id'][3];
?>