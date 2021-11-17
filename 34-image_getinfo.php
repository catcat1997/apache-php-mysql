<?php

    // GD函數, 獲取圖片信息
    $image = imagecreatefromjpeg('uploads/pink_landscape.jpg');

    echo imagesx($image);
    echo '<br>';
    echo imagesy($image);
    echo '<br>';
    $info = getimagesize('uploads/pink_landscape.jpg');
    echo '<pre>';
    print_r($info);
?>