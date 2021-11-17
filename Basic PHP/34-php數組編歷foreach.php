<?php
    // $arr = [1,3,5,7,9,11,13,15];
    $arr = array(1,3,5,7,9,11,13,15);
    foreach($arr as $v){
        echo $v , " ";
    };
    echo '<hr>';
    foreach($arr as $k => $v){
        echo "key= ",$k , " value= " , $v , '<br>';
    };

?>