<?php

    // nowdoc結構
    $str3 = <<<'EOD'
    hello3
    ss
    EOD;
    // heredoc結構
    $str4 = <<<EOD
    hello4
    s
    s
    EOD;
    echo $str3 ,'<hr>';
    echo $str4;

    // 利用EOD換行字符串 彈出js內容
    $str10 = <<<EOD
        <script>
            alert(`$str4`);  // js彈出換行字符串要用`號
        </script>
    EOD;
    echo $str10;
?>