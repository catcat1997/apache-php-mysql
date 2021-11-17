<?php

    // 自定義錯誤處理機制

    //自定義函數 我們寫的$error_handler 用來放到set_error_handler第一參數中
    function my_error($errno,$errstr,$errfile,$errline){
        // 判斷:當前會碰到錯誤有哪些  (如果有系統錯誤,就不輸出自定義錯誤)
        if(!(error_reporting() & $errno)){ // error_reporting() 沒有參數代表獲取當前系統錯誤處理對應級別
            return false;
        }
        // 開始判斷錯誤類型
        switch($errno){
            case E_ERROR:
            case E_USER_ERROR:
                echo 'fatal error in file::: ' . $errfile . ' on line ' . $errline . '<br>';
                echo 'error info: ' . $errstr;
                break;
            case E_WARNING:
            case E_USER_WARNING:
                    echo 'warning in file::: ' . $errfile . ' on line ' . $errline . '<br>';
                    echo 'error info: ' . $errstr;
                    break;
            case E_NOTICE:
            case E_USER_NOTICE:
                echo 'warning in file::: ' . $errfile . ' on line ' . $errline . '<br>';
                echo 'error info: ' . $errstr;
                break;    
        };
        return true;
    };

    // 報錯
    echo $a;
    
    // 修改錯誤機制
    set_error_handler('my_error');
    // 改完後 再報錯看看
    echo $a;
?>