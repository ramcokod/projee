<?php include('head.php')?>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php include('sidebar.php')?>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

                    <!-- Topbar Search -->
                   
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                       

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Kitaplar</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="">
                    <span style="float:left;" > Kutuphanedeki kayıtlı kitaplar</span><br><span style="float:left; padding:10px 10px 10px 10px" >Kitap Adı:</span>

                        <!-- Earnings (Monthly) Card Example -->
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
$query = $conn->query("SELECT *  FROM kitap ");
while ($row = $query->fetch()) {
  echo "<div style='border:1px solid grey;padding:10px 10px 10px 10px;max-width:200px;float:left;'>".$row['kitap_ad']."</div>";
}
   ?>

                      </div>

                    <!-- Content Row -->

                    
                        
                    

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <?php include('footer.php')?>
</body>

</html>