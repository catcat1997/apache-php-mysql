<?php
    // php文件上傳功能函數
    /* 
    *實現單文件上傳
    * @param1 array $file, 需要上傳的文件信息: 一維 5元素數組$file(name/tmp_name/type/error/size)
    * @param2 array $allow_type 允許上傳的MIME類型
    * @param3 string $path , 存儲路徑
    * @param4 string &$error , 如果出現錯誤的原因 (引用傳參)
    * @param5 array $allow_format = array() , 允許上傳的文件格式
    * @param6 int $max_size = 2000000 (2 million), 允許上傳的最大值
    */  

    function upload_single($file,$allow_type , $path , &$error , $allow_format = array(),  $max_size =2000000){
        // 判斷文件是否有效
        if(!is_array($file) || !isset($file['error'])){
            // 文件無效
            $error = '不是一個有效的上傳文件';
            return false;
        }
        // 判斷文件存儲路徑 是否有效
        if(!is_dir($path)){
            // 路徑不存在
            $error = '文件存儲路徑不存在';
            return false;
        }
        // 判斷文件上傳過程是否出錯
        switch($file['error']){
            case 1:
            case 2:
                $error = '文件超出服務器允許大小';
                return false;
            case 3:
                $error = '文件上傳過程出現問題, 只上傳一部分';
                return false;   
            case 4:
                $error = '用戶沒有選中要上傳的文件';
                return false;
            case 6:
            case 7:
                $error = '文件保存失敗!';
                return false;
        }
        // 判斷 MIME 類型
        if(!in_array($file['type'],$allow_type)){
            // 該文件類型不允許上傳
            $error = '當前文件類型不允許上傳';
            return false;
        }

        // 判斷後綴名 是否允許
        // 獲取後綴名
        $ext = ltrim(strrchr($file['name'],'.'), '.');
        if(!empty($allow_format) && !in_array($ext,$allow_format)){
            // 不允許的後綴名
            echo $ext;
            $error = '當前文件格式不允許上傳';
            return false;
        }

        // 判斷文件大小是否滿足當前需求
        if($file['size'] > $max_size){
            // 文件過大
            $error = '當前上傳文件超出大小, 最大允許' . $max_size .'字節';
            return false;
        }

        // 構造文件名字: 類型_年月日_隋機字符串.ext
        $fullname = strstr($file['type'] , '/' ,true) . date('YYYYmmdd') ;
        // 產生隋機字符串
        for($i =0;$i < 4 ; $i++){
            $fullname .= chr(mt_rand(65,90)); //大寫英文字母的ascii碼是65到90
        }
        // 拚接後綴
        $fullname .= '.' . $ext;

        // 移動到指定目錄
        if(!is_uploaded_file($file['tmp_name'])){
            // 文件不是上傳的
            $error = '錯誤: 不是上傳文件';
            return false;
        }
        if(move_uploaded_file($file['tmp_name'], $path.$fullname)){
            // 成功
            return $fullname;
        }else {
            $error = '錯誤: 文件上傳失敗';
            return false;
        }
    };

    // 調用函數 提供數據
    $file = $_FILES['image'];
    $path = 'uploads/';
    $allow_type = array('image/jpg','image/jpeg','image/gif','image/pjpeg');
    $allow_format = array('jpg','gif','jpeg');
    $max_size = 8000000;

    // 調用函數 + 賦值給$fullname , $error是引用傳參, 所以能在外部使用
    if($fullname = upload_single($file,$allow_type,$path,$error,$allow_format,$max_size)){
        echo $fullname;
    }else {
        echo $error;
    };
?>