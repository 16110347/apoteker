<?php 

require('logic/proses.php');


?>



<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
    crossorigin="anonymous">

  <title>Apotek</title>
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
  <!-- nav -->
  <div class="container">
    <nav class="navbar navbar-light ">
      <a class="navbar-brand">apotek</a>
      <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="material-icons">shopping_cart</i>
       
        
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><a href="?login"><i class="material-icons">perm_identity</i></a>
          </button>
        
      
      </form>
    </nav>


  </div>
  <!-- akhir nav -->

  <!-- jumbotron -->
  <div id="carouselExampleControls" class="carousel slide jbr" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="d-block w-100" src="img/evt01.png" alt="First slide">
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="img/ok1.jpg" alt="Second slide">
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="img/13.jpg" alt="Third slide">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <!-- akhir jumbotron -->

  <!-- menu -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="?home">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="?apoteker">Apoteker</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="#">Kategori</a>
          </li>
          <li class="nav-item dropdown ">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              Dropdown link
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Maps</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
        </ul>
      </div>
  </nav>
  </div>
  <!-- and menu -->

  <!-- section -->
  <section>
    <?php
    if(isset($_GET["login"])){
        
      include('php/login.php');

    }else if(isset($_GET["home"])){
    
      include ('php/hompage.php');
      die;

    }else if(isset($_GET["apoteker"])){
    
      include ('php/apotekerpage.php');
      die;

    }elseif (isset($_GET["Dokter"])) {
      
      include('php/pageDokter.php');
      die;

    }elseif (isset($_GET["Daftar"])) {
      
      include('php/pageDaftar.php');
      die;

    }elseif(isset($_GET["id"])){
      include('php/daftarAntri.php');

    }elseif (isset($_GET["Jadwal"])) {
      
      include('php/pageJadwal.php');
      die;
    }elseif (isset($_GET["daftarAntri"])) {
      include('php/daftarAntri.php');
      die;
    }
    elseif (isset($_GET["ruangInap"])) {
      
      include('php/pageRuangInap.php');
      die;
    }
    
    ?>
  </section>
  <!-- end section -->


  <!-- footer -->
  <footer>
    <div class="container ee">
      <div class="row">
        <!--alamat  -->
        <div class="col-sm-4">
          <table>
            <tr>
              <td> <i class="material-icons">place</i> </td>
              <td> <small> Jl. Maju Mundur Tidak Belok Lanjot teross</small> </td>
            </tr>

            <tr>
              <td> <i class="material-icons">home</i> </td>
              <td> <small> Kantor Broncant</small> </td>
            </tr>

            <tr>
              <td> <i class="material-icons">call</i> </td>
              <td> 0887989898 </td>
            </tr>
          </table>

        </div>
        <!-- akhir alamat -->
        <div class="col-sm-4 align-self-center">
          <p><small>&copy</small> Apoteker </p>
        </div>
        <div class="col-sm-4">
          <div id="googleMap" style="width:100%;height:100px;"></div>
        </div>
      </div>
    </div>


  </footer>

  <!-- end foote -->




  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <!-- buat maps -->

  <script>
    function myMap() {
      var mapProp = {
        center: new google.maps.LatLng(51.508742, -0.120850),
        zoom: 5,
      };
      var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
    }
  </script>

  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>


  <!-- akhir maps -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
    crossorigin="anonymous"></script>
</body>

</html>