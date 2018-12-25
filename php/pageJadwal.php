<h1>Jadwal Antrian </h1>
 
 <a href="?daftarAntri">daftar antri</a>
 <table class="table table-striped table-inverse table-responsive">
     <thead class="thead-inverse">
         <tr>
             <th>no daftar</th>
             <th>no rumah sakit</th>
             <th>tgl daftar</th>
             <th>tgl janji</th>
             <th>jam janji</th>
             <th>keluhan</th>
             <!-- <th>kd tindakan</th> -->
             <th>no antri </th>
             <!-- <th>petugas </th> -->
             <th>batas antrian </th>
             <th>ket </th>

         </tr>
         </thead>
         <tbody>
        
            <?php while($row = mysqli_fetch_assoc($query)) : ?>
             <tr>
             <th><?= $row["no_daftar"]; ?></th>
             <th><?= $row["nomor_rm"]; ?></th>
             <th><?= $row["tgl_daftar"]; ?></th>
             <th><?= $row["tgl_janji"]; ?></th>
             <th><?= $row["jam_janji"]; ?></th>
             <th><?= $row["keluhan"]; ?></th>
             <!-- <th><?= $row["kd_tindakan"]; ?></th> -->
             <th><?= $row["nomor_antri"]; ?> </th>
             <!-- <th><?= $row["kd_petugas"]; ?> </th> -->
             <th><?= $row["jatuh_tempo"]; ?> </th>
             <th><?= $row["selisih"]; ?> </th>
             </tr>
<?php endwhile; ?>
         </tbody>
 </table>
