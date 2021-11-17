<?php

    //目錄操作

    //創建目錄
    $res = @mkdir('directory');
    

    // 刪除目錄
    // @rmdir('dir');

    // 讀取目錄   opendir返回一個路徑資源, 包含指定目錄下所有文件(不含文件夾)
    $opendir = opendir('uploads');
    var_dump($opendir);
    echo '<br>';

    // 讀取資源  readdir($opendir)
    
    // 循環編歷輸出
    while($readdir = readdir($opendir)){
        echo $readdir;
        echo '<br>';
    }

    // 關閉資源;
    closedir();

    // 其他目錄路徑 函數
    echo '<hr>';
    // dirname(); 得到path上一層的路徑
    echo 'dirname()' .'<br>';
    $dir1 = 'C:\Apache24\htdocs\uploads\image202120212021202111110303HLYD.jpg';
    var_dump(dirname($dir1));
    echo '<br>';
    $dir2 = 'C:\Apache24\htdocs\uploads';
    var_dump(dirname($dir2));
    echo '<hr>';
    $dir3 = 'uploads';
    // realpath(path) 得到真實路徑, 路徑不存在時,返回false;
    echo 'realpath()' .'<br>';
    
    var_dump(realpath($dir1));
    echo '<br>';
    var_dump(realpath($dir2));
    echo '<br>';
    var_dump(realpath($dir3));
    echo '<hr>';
    // is_dir(): 判斷路徑是不是目錄, 最終路徑為文件的不是目錄, 返回false
    echo 'is_dir()' .'<br>';
    var_dump(is_dir($dir1));
    echo '<br>';
    var_dump(is_dir($dir2));
    echo '<br>';
    var_dump(is_dir($dir3));
    echo '<hr>';

    // scandir(): 封裝版的opendir + readdir + closedir ,獲取一個指定路徑下的所有文件信息 , 以數組形式返回。
    echo '<pre>';
    var_dump(scandir('uploads'));
?>