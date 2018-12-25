  <?php 
  
  $conn = mysqli_connect("localhost","root","","klinik_apotekdb");
  
  $result = mysqli_query($conn,"SELECT*FROM obat");
  $result1 = mysqli_query($conn,"SELECT*FROM dokter");
  $result2 = mysqli_query($conn,"SELECT*FROM pendaftaran");
  $result3 = mysqli_query($conn,"SELECT*FROM pasien");
  $query = mysqli_query($conn,"SELECT *,DATE_ADD(tgl_janji, INTERVAL 1 DAY) as jatuh_tempo, DATEDIFF(DATE_ADD(tgl_janji, INTERVAL 1 DAY), CURDATE()) as selisih FROM pendaftaran");
  
  
  
  
  ?>