<?php

    header('Content_Type:text/html;charset=utf-8');
    echo '<pre>';

    //var_dump($_POST);
    //var_dump($_FILES);

    // 1.取得文件信息
    $file = $_FILES['image'];
    // 2.判斷是否是上傳的文件
    if(is_uploaded_file($file['tmp_name'])){
        // 是上傳文件
        // move_uploaded_file($tmp_name, "$uploads_dir/$name");
        if(move_uploaded_file($file['tmp_name'], 'uploads/'.$file['name'])){
            echo '文件保存成功';
        }else {
            echo '文件保存失敗';
        }
    }else{
        // 不是上傳文件
        echo '不是上傳文件';
    }
?>