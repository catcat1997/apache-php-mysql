<?php

    header('Content_Type:text/html;charset=utf-8');
    echo '<pre>';
    echo '不同情形下的多文件上傳結構';
    print_r($_FILES);
    echo '<hr>';
    // 不同名文件編歷處理方式
    // foreach($_FILES as $file){
    //     //$file 就是一個完整的上傳文件信息
    //     if(is_uploaded_file($file['tmp_name'])){
    //         move_uploaded_file($file['tmp_name'],'uploads/'.$file['name']);
    //     }
    // };

    // 同名文件編歷處理方式
    if(isset($_FILES['image']['name']) && is_array($_FILES['image']['name'])){ //判斷存在而且是array
        //編歷構造數組元素
        $images = array();

        // foreach A方法
        // foreach($_FILES['image']['name'] as $k => $file){
        //     array_push($images ,[
        //         'name' => $file,
        //         'tmp_name' => $_FILES['image']['tmp_name'][$k],  // ***返回上一層數組找 再給了$k 索引
        //         'type' => $_FILES['image']['type'][$k],
        //         'error' => $_FILES['image']['error'][$k],
        //         'size' => $_FILES['image']['size'][$k]
        //         ]
        //     );
        // };


        // foreach B方法
        foreach($_FILES['image']['name'] as $k => $file){
           
            $images[] = array(
                'name' => $file,
                'tmp_name' => $_FILES['image']['tmp_name'][$k],  // ***返回上一層數組找 再給了$k 索引
                'type' => $_FILES['image']['type'][$k],
                'error' => $_FILES['image']['error'][$k],
                'size' => $_FILES['image']['size'][$k]              
            );
        };
    };
    print_r($images);
    foreach($images as $file){
        //$file 就是一個完整的上傳文件信息
        if(is_uploaded_file($file['tmp_name'])){
            move_uploaded_file($file['tmp_name'],'uploads/'.$file['name']);
        }
    };
?>