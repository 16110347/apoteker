<?php 
 $conn = mysqli_connect("localhost","root","","klinik_apotekdb");
$id = $_GET["id"];

  $result4 = mysqli_query($conn,"SELECT*FROM pasien WHERE nomor_rm ='$id'");
  $baris = mysqli_fetch_assoc($result4);
if (isset($_POST["daftarAntrian"])){

        var_dump($_POST);

}


?>



<h1>formulir antrian</h1>
<form action="" method="post">
<table class="table table-sm table-inverse table-responsive">
        <tbody>
        <tr>
            <th>nomor_rm</th>
            <td><input type="text" name="nomor_rm" id="" value ="<?= $baris["nomor_rm"]; ?>" ></td>
        </tr>

        <tr>
             <th>tgl daftar</th>
             <td>
                <div class="form-group">
                    <input type="date" class="form-control" name="tgl_daftar" id="" aria-describedby="helpId" placeholder="">
                    <small id="helpId" class="form-text text-muted">Help text</small>
                </div>                                                 
             </td>           
        </tr>
             
            <tr>
                <th>tgl janji</th>
                <td>
                <input type="date" name="janji" id="">
                </td>
            </tr>
            
             <tr>
                <th>jam janji</th>
                <td>
                <input type="checkbox" name="jam" id="" value="08.00" >08.00
                <input type="checkbox" name="jam" id="" value="09.00" >09.00
                <input type="checkbox" name="jam" id="" value="14.00" >14.00
                <input type="checkbox" name="jam" id="" value="16.25" >16.25
                </td>
             </tr>
            
            <tr>             
                <th>keluhan</th>
                <td>
                    <div class="form-group">
                        <textarea class="form-control" name="keluhan" id="" rows="3"></textarea>
                    </div>
                </td>
            </tr>
            
            <tr>
                <th>kd tindakan</th>
                <td> 
                    <input type="text" name="kd_tindakan" id="">
                </td>
             </tr>
             
             <tr>
                <th>no antri </th>
                <td>
                    <input type="text" name="nomor_antri" id=""></td>
                </tr>   
        
    <tr>
    
    <input type="submit" name="daftarAntrian" value="daftar antrian">

    </tr>
        </tbody>
</table>
</form>