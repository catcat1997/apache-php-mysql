<?php

    header('Content-Type:text/html;charset=utf8');
    echo '你好'; // content-type使中文不會出現亂碼 (如果charset = gbk與big5 都會亂碼)

    // 重定向Location (立即重定向)
    // header('Location:13-location.html');

    // 重定向Refresh (可設定時間)
    header('Refresh:3;url=13-location.html');  // 3秒後重定向到13-location.html
    
    //content-disposition
    header('Content-disposition:attachment;filename=girl.jpg'); 
    // 看到content-disposition , 瀏覽器不解析, 直接下載文件
    
?>