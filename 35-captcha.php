<?php

    $img = imagecreatetruecolor(200,50);

    // 背景色
    $bg_color = imagecolorallocate($img,220,220,220);
    imagefill($img,0,0,$bg_color);

    // 獲取random 文字 (中文)
    $str = "我定是在李星你好棕抽仗始係終巨仕頁血耳杯之仙"; // 22*3 = 66  中文字3個位
    $len = strlen($str);
    
    $c_len = $len / 3;

    // random取中文字
    // $rand = mt_rand(0,$c_len - 1);
    $char1 = substr($str , mt_rand(0,$c_len - 1) * 3, 3);
    $char2 = substr($str , mt_rand(0,$c_len - 1) * 3, 3);
    $char3 = substr($str , mt_rand(0,$c_len - 1) * 3, 3);
    $char4 = substr($str , mt_rand(0,$c_len - 1) * 3, 3);

    // session存char
    session_start();
    $_SESSION['char1'] = $char1;
    $_SESSION['char2'] = $char2;
    $_SESSION['char3'] = $char3;
    $_SESSION['char4'] = $char4;



    // 寫入文字
    $font = 'fonts/msjhbd.ttc';
    
    // random文字顏色   mt_rand(0,100);
    $text_color1 = imagecolorallocate($img,mt_rand(0,100),mt_rand(0,100),mt_rand(0,100));
    $text_color2 = imagecolorallocate($img,mt_rand(0,100),mt_rand(0,100),mt_rand(0,100));
    $text_color3 = imagecolorallocate($img,mt_rand(0,100),mt_rand(0,100),mt_rand(0,100));
    $text_color4 = imagecolorallocate($img,mt_rand(0,100),mt_rand(0,100),mt_rand(0,100));
    imagettftext($img,30,15,20,40,$text_color1,$font,$char1);
    imagettftext($img,mt_rand(15,35),mt_rand(-30,30),70,40,$text_color2,$font,$char2);
    imagettftext($img,mt_rand(15,35),mt_rand(-30,30),110,40,$text_color3,$font,$char3);
    imagettftext($img,mt_rand(15,35),mt_rand(-30,30),150,40,$text_color4,$font,$char4);

    // 干擾點 imagestring()
    for($i=0;$i<50;$i++){
        $dot_color = imagecolorallocate($img,mt_rand(100,200),mt_rand(100,200),mt_rand(100,200));
        imagestring($img,mt_rand(1,5),mt_rand(0,200),mt_rand(0,50),'*',$dot_color);
    };

    // 干擾線
    for($i=0;$i<20;$i++){
        $line_color = imagecolorallocate($img,mt_rand(100,200),mt_rand(100,200),mt_rand(100,200));
        imageline($img,mt_rand(0,200),mt_rand(0,50),mt_rand(0,200),mt_rand(0,50),$line_color);
    };

    // 輸出
    header("Content-Type:image/png");
    imagepng($img);
    // 銷毀
    imagedestroy($img);
?>