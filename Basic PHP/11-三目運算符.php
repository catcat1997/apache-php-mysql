<?php

// 三目運算符
$a =10;
$b = $a>9 ? 100 : 0;
echo $b;

// 複合三目運算
echo '<hr/>';
$c =10;
$d = 100;
$result = $c >9 ? ($d >= 100 ? 100 : 1) : 0;
echo $result;
?>