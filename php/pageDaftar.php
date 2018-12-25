<h2>halaman daftar passien</h2>

<form action="" method="post">
 
        <table class="table">
            <thead>
                <tr>
                    <th>nama pasien</th>
                    <th>no identitas</th>
                    <th>jenis kelamin</th>
                    <th>golongan darah</th>
                    <th>agama</th>
                    <th>tempat_lahir</th>
                    <th>tanggal_lahir</th>
                    <th>no_telepon</th>
                    <th>alamat</th>
                    <th>status nikah</th>
                    <th>pekerjaan</th>
                    <th>keluarga status</th>
                    <th>keluarga nama</th>
                    <th>kelaurga telepon</th>
                    <th>tanggal rekam</th>
                    <th>kd petugas</th>
                    <th>keterangan</th>
                    
                </tr>
            </thead>
            <tbody>
                <?php while($row = mysqli_fetch_assoc($result3)) : ?>
                <tr>
                    <th><?= $row["nm_pasien"]; ?></th>
                    <th><?= $row["no_identitas"]; ?></th>
                    <th><?= $row["jns_kelamin"]; ?></th>
                    <th><?= $row["gol_darah"]; ?></th>
                    <th><?= $row["agama"]; ?></th>
                    <th><?= $row["tempat_lahir"]; ?></th>
                    <th><?= $row["tanggal_lahir"]; ?></th>
                    <th><?= $row["no_telepon"]; ?></th>
                    <th><?= $row["alamat"]; ?></th>
                    <th><?= $row["stts_nikah"]; ?></th>
                    <th><?= $row["pekerjaan"]; ?></th>
                    <th><?= $row["keluarga_status"]; ?></th>
                    <th><?= $row["keluarga_nama"]; ?></th>
                    <th><?= $row["keluarga_telepon"]; ?></th>
                    <th><?= $row["tgl_rekam"]; ?></th>
                    <th><?= $row["kd_petugas"]; ?></th>
                    <th> <a href="?id=<?= $row["nomor_rm"]; ?>">antri</a> | inap</th>

                </tr>
<?php endwhile; ?>  
            </tbody>
        </table>







</form>