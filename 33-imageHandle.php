<?php


    ob_clean();
    $img = imagecreatetruecolor(100,100);
    

    // GD圖像操作

    // 分配顏色
    $bg_color = imagecolorallocate($img,255,0,0);
    // var_dump($bg_color);

    // 填充背景色
    imageFill($img , 0, 0,$bg_color);

    // 畫直線
    $line_color = imagecolorallocate($img,0,255,0);
    imageline($img,10,10,90,90,$line_color);

    // 畫矩形
    $rectangle_color = imagecolorallocate($img,0,0,255);
    imagerectangle($img,10,10,90,90,$rectangle_color);

    // 畫橢圓弧
    $arc_color = imagecolorallocate($img,0,0,0);
    imagearc($img,50,50,80,80,180,360,$arc_color);

    // 寫字
    $str_color = imagecolorallocate($img,100,100,100);
    imagestring($img,5,20,20,'abcd',$str_color);

    // 寫imageTTFtext (寫中文)
    $ch_color = imagecolorallocate($img,50,50,50);
    imagettftext($img,30,45,50,50,$ch_color,'fonts/msjh.ttc','中文');

    // 保存到本地
    imagepng($img,'GD_img/my.png');
    // 輸出到瀏覽器
    header("Content-Type:image/png");
    imagepng($img);

    // 銷毀畫布資源
    imagedestroy($img);
?>