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
 $query = $conn->query("SELECT * FROM kitap inner join kategori on (kat_id=katag_id) inner join tur on (tur.tur_id=kitap.tur_id)where kitap_id = ".$id." limit 1");
 while ($row = $query->fetch()) {
    $kat=$row['kat_id'];
    $marka=$row['tur_id'];
    $garson_ad=$row['kitap_ad'];
 }
 $query = $conn->query("SELECT * FROM  kategori");
 while ($row = $query->fetch()) {
    array_push($katliste,$row['kat_ad']);
    array_push($katlisteid,$row['kat_id']);
 }
 $query = $conn->query("SELECT * FROM  tur");
 while ($row = $query->fetch()) {
    array_push($markalis,$row['tur_ad']);
    array_push($markaid,$row['tur_id']);
 }

echo json_encode(array('a'=>$garson_ad,'b'=>$kat,'c'=>$marka,'d'=>$katlisteid,'e'=>$katliste,'f'=>$markaid,'g'=>$katlisteid,'z'=>$id)); 
