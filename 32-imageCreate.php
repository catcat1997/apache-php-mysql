<?php

    // 創建真彩圖片
    $img = imagecreatetruecolor(100,100) or die('圖片初始化失敗');
    // var_dump($img);

    // echo '<br>';

    // 打開資源 (jpeg圖片)
    $img2 = imagecreatefromjpeg("uploads/pink_landscape.jpg");
    
    // imagecopyresized — 拷贝部分图像并调整大小


    // var_dump($img2); 
    header("Content-type:image/jpg");
    imagejpeg($img2);

    imagedestroy($img);

    imagedestroy($img2);

    // 錯誤attempt
    // $img3 = imagecreatefromgif("uploads/pink_landscape.jpg");
    // var_dump($img3);
?>