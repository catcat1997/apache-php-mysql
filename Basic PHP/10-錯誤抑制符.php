<?php
    echo '<hr/>';
    $a = 10;
    $b = 0;

    @($a / $b);

    // 在 PHP 8.0.0 之前，如果診斷被抑制，則傳遞給自定義錯誤處理程序的嚴重性值始終為 0。
    // 從 PHP 8.0.0 開始，情況不再如此。
?>