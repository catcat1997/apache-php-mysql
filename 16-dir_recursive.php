<?php
    header('Content-Type:text/html;charset=utf8');
    //遞歸編歷文件夾 (目錄)

    // 定義目錄
    $dir = './uploads';

    // param1 $dir 指定路徑
    // param2 int $level = 0 , 層級, 默認頂層  用來做縮進美化

    function my_scandir($dir, $level = 0){
        // 如果不是路徑, 就不用執行下去了
        if(!is_dir($dir)){
            dir($dir);
            return false;
        }
        // 讀取全部路徑信息 , 編歷出來
        $files  = scandir($dir);
        foreach($files as $file){
            // $file就是一個個文件名
            // echo $file . '<br>';

            // 構造路徑(文件路徑)
            // 排除 . 和 ..
            if($file == '.' || $file == '..') continue;
            $file_dir = $dir .  '/' . $file;

            // echo $file_dir ,'<br>';
            // 判斷路徑是否為 文件 is_dir()  [遞歸點] 如果是路徑(還有下一層)
            if(is_dir($file_dir)){
                //[遞歸點]
                // 輸出 + 層級縮進 美化
                echo str_repeat("&nbsp;&nbsp;&nbsp;&nbsp;", $level),$file . '<br>';
                my_scandir($file_dir, $level + 1);
                
            }else{ // 如果不是路徑(到達文件), 就輸出文件名
                // 輸出 + 層級縮進 美化
                echo str_repeat("&nbsp;&nbsp;&nbsp;&nbsp;", $level),$file . '<br>';
            }
        }
        
    }

    my_scandir($dir);
?>