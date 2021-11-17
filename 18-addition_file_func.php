<?php
    // 其他文件操作函數
    // is_file();
    $r1 =is_file('./uploads');
    var_dump($r1);
    echo '<br>';
    $r2 = is_file('./uploads/image202120212021202111110303HLYD.jpg');
    var_dump($r2);
    echo '<br>';
    // filesize()
    $r3 = filesize('./uploads/image202120212021202111110303HLYD.jpg');
    var_dump($r3);
    echo '<br>';
    // file_exists()
    $r4 =file_exists('./uploads');
    var_dump($r4);
    echo '<br>';
    $r5 = file_exists('./uploads/image202120212021202111110303HLYD.jpg');
    var_dump($r5);
    echo '<br>';
    // unlink()
    @unlink('./uploads/a/d.txt');

    // filemtime() 獲取文件最後一次修改的時間
    $r6 = filemtime('./uploads/image202120212021202111110303HLYD.jpg');
    var_dump(date("M-d-Y H:i:s",$r6));
    echo '<br>';
    // fseek()
    $fr7 = fopen('con2.txt','r');
    fseek($fr7 , 0);
    fseek($fr7 , 1);
    // fgetc()
    $r7 = fgetc($fr7);
    var_dump($r7);
    echo '<br>';
    //fgets($resource , [length])
    fseek($fr7 , 4);
    $r8 = fgets($fr7);
    var_dump($r8);
    //file()
    echo '<hr>';
    $r9 = file('con2.txt');
    echo '<pre>';
    var_dump($r9);
?>