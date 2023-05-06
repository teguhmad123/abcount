<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <!-- <link rel="stylesheet" href="<?= base_url(); ?>dist/css/bootstrap.min.css"> -->

  <title>DAFTAR LAYANAN POLI</title>
</head>

<body onload='window.print()'>
  <center><h1>DAFTAR LAYANAN POLI</h1></center>
  <div class="container">
    <div id="main">
      
          <table border="solid" width="100%">
            <thead>
              <tr>
                <th width="5%">No</th>
                <th width="30%">Poli</th>
                <th width="55%">Layanan</th>
                <th width="10%">Cost</th>
              </tr>
            </thead>
            <tbody id='tabel_daftar'>
              <?php $no=1; foreach ($data as $dt): ?>
                <tr>
                  <td><?=$no++?></td>
                  <td><?=$dt['poli_nm']?></td>
                  <td><?=$dt['pelayanan_nm']?></td>
                  <td><?="Rp " . number_format($dt['pelayanan_jml'], 0, ".", ".");?></td>
                </tr>
              <?php endforeach ?>
            </tbody>
          </table>
    </div>
    
    <!-- End of .container -->
  </div>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <!-- <script src="<?= base_url(); ?>dist/js/jquery-3.6.3.min.js"></script> -->
  <!-- <script src="<?= base_url(); ?>dist/js/popper.min.js"></script> -->
  <!-- <script src="<?= base_url(); ?>dist/js/bootstrap.min.js"></script> -->
  
</body>

</html>