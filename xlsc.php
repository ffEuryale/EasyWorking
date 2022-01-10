<?php

$file = glob("./*.BIN");
foreach($file as $key => $val){
$fileName = pathinfo($val, PATHINFO_FILENAME);

$changeName = rename("-작업지시서.xls", "$fileName-작업지시서.xls");
$changeName = rename("POINT", "$fileName.ROU");
$changeName = rename("drl.drl", "$fileName.DRL");
$changeName = rename("1111.rep", "$fileName.REP");
}
?>