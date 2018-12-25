<table class="table table-sm table-inverse table-responsive">
    <thead class="thead-inverse">
        <tr>
            <th>nama</th>
            <th>jenis kelamin</th>
            <th>tempat lahir</th>
            <th>tanggal lahir</th>
            <th>alamat</th>
            <th>no telepon</th>
            <th>sip</th>
            <th>specialis</th>
        </tr>
        </thead>
        <tbody>
        <?php while( $row = mysqli_fetch_assoc($result1)) : ?>   
        <tr>
        
                <td><?= $row["nm_dokter"]; ?></td>
                <td><?= $row["jns_kelamin"]; ?></td>
                <td><?= $row["tempat_lahir"]; ?></td>
                <td><?= $row["tanggal_lahir"]; ?></td>
                <td><?= $row["alamat"] ?></td>
                 <td><?= $row["no_telepon"]; ?></td>
                <td><?= $row["sip"]; ?></td>
                <td><?= $row["spesialisasi"]; ?></td>
            </tr>
<?php endwhile; ?> 
        </tbody>
</table>