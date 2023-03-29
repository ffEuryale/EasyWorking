<?php

$file = glob("./@@WORK/*.BIN");
foreach($file as $key => $val){
$fileName = pathinfo($val, PATHINFO_FILENAME);

$changeName = rename("@@WORK/-작업지시서.xls", "@@WORK/$fileName-작업지시서.xls");
$changeName = rename("@@WORK/POINT", "@@WORK/$fileName.ROU");
$changeName = rename("@@WORK/drl.drl", "@@WORK/$fileName.DRL");
$changeName = rename("@@WORK/1111.rep", "@@WORK/$fileName.REP");
}
?>