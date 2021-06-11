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
                        <h1 class="h3 mb-0 text-gray-800">Ana Sayfa</h1>
                    </div>

                    <!-- Content Row -->

            <div class="row">
                <div class="col-lg-3">
                    <!-- Circle Buttons -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Kullanıcı Ekle</h6>
                        </div>
                        <div class="card-body">
                        <!-- Circle Buttons (Large) -->
                        <a href="<?php echo "http://$_SERVER[HTTP_HOST]/projeler/veritabani/kullanici/ekle.php"?>" class="btn btn-primary btn-circle btn-lg">
                            <i class="fa fa-plus"></i>
                        </a>
                        <a href="<?php echo "http://$_SERVER[HTTP_HOST]/projeler/veritabani/kullanici/duzen.php"?>" class="btn btn-success btn-circle btn-lg">
                            <i class="fas fa-edit"></i>
                        </a>
                        <a href="<?php echo "http://$_SERVER[HTTP_HOST]/projeler/veritabani/kullanici/sil.php"?>" class="btn btn-danger btn-circle btn-lg">
                            <i class="fas fa-trash"></i>
                        </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <!-- Circle Buttons -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Kitap Ver</h6>
                        </div>
                        <div class="card-body">
                        <!-- Circle Buttons (Large) -->
                        <a href="<?php echo "http://$_SERVER[HTTP_HOST]/projeler/veritabani/kitapverme/ekle.php"?>" class="btn btn-primary btn-circle btn-lg">
                            <i class="fa fa-plus"></i>
                        </a>
                        <a href="<?php echo "http://$_SERVER[HTTP_HOST]/projeler/veritabani/kitapverme/sil.php"?>" class="btn btn-danger btn-circle btn-lg">
                            <i class="fas fa-trash"></i>
                        </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <!-- Circle Buttons -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Kitap Al</h6>
                        </div>
                        <div class="card-body">
                        <!-- Circle Buttons (Large) -->
                        <a href="<?php echo "http://$_SERVER[HTTP_HOST]/projeler/veritabani/kitapalim/ekle.php"?>" class="btn btn-primary btn-circle btn-lg">
                            <i class="fa fa-plus"></i>
                        </a>
                        <a href="<?php echo "http://$_SERVER[HTTP_HOST]/projeler/veritabani/kitapalim/sil.php"?>" class="btn btn-danger btn-circle btn-lg">
                            <i class="fas fa-trash"></i>
                        </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3">
                    <!-- Circle Buttons -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Üye Kaydet</h6>
                        </div>
                        <div class="card-body">
                        <!-- Circle Buttons (Large) -->
                        <a href="<?php echo"http://$_SERVER[HTTP_HOST]/projeler/veritabani/uye/ekle.php"?>" class="btn btn-primary btn-circle btn-lg">
                            <i class="fa fa-plus"></i>
                        </a>
                        <a href="<?php echo"http://$_SERVER[HTTP_HOST]/projeler/veritabani/uye/sil.php"?>" class="btn btn-danger btn-circle btn-lg">
                            <i class="fas fa-trash"></i>
                        </a>
                        </div>
                    </div>
                </div>
                    
            </div>



    </div>
 <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
    <?php include('footer.php')?>
</body>

</html>