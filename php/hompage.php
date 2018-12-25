<div class="container">
      <div class="row">
        <div class="card-columns">

          <?php while($row = mysqli_fetch_assoc($result)) : ?>
        <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title"><?= $row["nm_obat"]; ?></h5>
    <h6 class="card-subtitle mb-2 text-muted"><?= $row["keterangan"]; ?></h6>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="card-link">Rp <?= $row["harga_modal"] ?></a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
        <?php endwhile; ?>

        </div>
      </div>
    </div>