<?php
$request_method = $_SERVER['REQUEST_METHOD'];
$response = array();
switch($request_method){
    case "GET";
        response(doGet());
    break;
    case "POST";
        response(doPost());
    break;
    case "DELETE";
        response(doDelete());
    break;
    case "PUT";
        response(doPut());
    break;
}
function doGet(){
    if(@$_GET['id']){
        @$id=$_GET['id'];
        $where="WHERE `id`=".$id;
    }
    else{
        $id=0;
        $where="";
    }
    $servername="localhost";
    $username = "root";
    $password = "";
    $dbname = "";
    $dbconnect = mysqli_connect($servername, $username, $password, $dbname);
    $query = mysqli_query($dbconnect,"SELECT * FROM `country`" .$where);
    while ($data = mysqli_fetch_assoc($query)){
        $response[]=array("id"=>$data['id'],"code"=>$data['countryCode'],"name"=>$data['countryName'],"capital"=>$data['countryCapital'],"flag"=>$data['countryFlag']);
    }
    return $response;
}
function doPost(){
    if($_POST){
        $dbconnect = mysqli_connect("localhost","root","","atlasapi");
        $query = mysqli_query($dbconnect,"INSERT INTO `country` (`countryCode`, `countryName`, `countryCapital`, `countryFlag`) VALUES('".$_POST['countryCode']."','".$_POST['countryName']."','".$_POST['countryCapital']."','".$_POST['countryFlag']."')");
        if($query == true){
            $response=array("message"=>"success insert");
        }
        else{
            $response=array("message"=>"failed");
        }
    }
    return $response;
}
function doDelete(){
    if($_GET['id']){
        $dbconnect = mysqli_connect("localhost","root","","atlasapi");
        $query = mysqli_query($dbconnect,"DELETE FROM `country` WHERE `id`='".$_GET['id']."'");
        if($query == true){
            $response=array("message"=>"success delete");
        }
        else{
            $response=array("message"=>"failed");
        }
    }
    return $response;
}

function doPut(){
        parse_str(file_get_contents('php://input'), $_PUT);
        if($_PUT){
        $dbconnect = mysqli_connect("localhost","root","","atlasapi");
        $query = mysqli_query($dbconnect,"UPDATE `country` SET 
                            `countryCode`='".$_PUT['countryCode']."',
                            `countryName`='".$_PUT['countryName']."',
                            `countryCapital`='".$_PUT['countryCapital']."',
                            `countryFlag`='".$_PUT['countryFlag']."'
                            WHERE `id` = '".$_GET['id']."'
                            ");
        if($query == true){
            $response=array("message"=>"success update");
        }
        else{
            $response=array("message"=>"failed");
        }
    }
return $response;
}

function response($response){
    echo json_encode(array("status"=>"200","data"=>$response));
}
?>