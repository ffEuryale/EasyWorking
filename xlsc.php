<?php

$file = glob("./*.BIN");
foreach($file as $key => $val){
$fileName = pathinfo($val, PATHINFO_FILENAME);

$changeName = rename("-작업지시서.xls", "$fileName-작업지시서.xls");
}

?>
