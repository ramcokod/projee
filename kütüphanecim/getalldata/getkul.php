<?php 
$host='localhost';
$db = 'kütüphane';
$username = 'postgres';
$password = '123456';
 
$dsn = "pgsql:host=$host;port=5432;dbname=$db;user=$username;password=$password";
try{
  $conn = new PDO($dsn);
 
  if($conn){
  
  }
 }catch (PDOException $e){
     header ('404.php');
 }

 $garson_ad="";
 $kat="";
 $marka="";
 $fiyat="";
 $urun_ad="";
 $katliste=[];
 $katlisteid=[];
 $markalis=[];
 $markaid=[];

 $id=$_GET['id'] ;
 $query = $conn->query("SELECT * FROM kullanici where k_id = ".$id." limit 1");
 while ($row = $query->fetch()) {
    $garson_ad=$row['k_ad'];
    $kat=$row['k_pass'];

 }


echo json_encode(array('a' => $garson_ad ,'b'=>$kat,'e'=>$id)); 
