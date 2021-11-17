<?php

    // 設置cookie生命周期
    setcookie('a1','a3value1');                      // 普通cookie , 瀏覽器關閉後失效
    setcookie('a2','a3value2',7*24*60*60);           // 格林威治時間(1970年) 7天後過期
    setcookie('a3','a3value3',time() + 7*24*60*60);  // 格林威治時間 + 由現在開始Unixstamp + 7天後過期
    setcookie('a4','a4',0);
    // 刪除cookie
    // setcookie('a4','');
    setcookie('a4','a4',1);

    // 第4參數 / 根目錄範圍
    setcookie('global_son','global_son_value',0,'/');

?>