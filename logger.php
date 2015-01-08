<?php

/*
  MCRemoteLogger server

  Write down to disk each call in a separate log file with timestamp name
*/

header('Content-disposition: attachment; filename=jsonFile.json');
header('Content-type: application/json');

$password = 'password';

$path = 'logs/';

if($_POST['password'] == $password){

  if($_POST['data']){
    file_put_contents($path.time().'.log', $_POST['data']);
    echo json_encode(array('ok'=>'logged'));

  }else{
    echo json_encode(array('error'=>'Missing data'));
  }


}else{
  echo json_encode(array('error'=>'Wrong password'));
}
