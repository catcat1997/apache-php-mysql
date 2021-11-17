<?php
    session_start();

    if($_SESSION['char1'] . $_SESSION['char2'] . $_SESSION['char3'] 
    .$_SESSION['char4'] == $_POST['cap_text']){
        echo '驗證碼正確!';
    }else {
        echo '驗證碼錯誤!';
    };

?>