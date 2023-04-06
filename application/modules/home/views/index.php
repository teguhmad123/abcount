<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<?= base_url(); ?>dist/css/bootstrap.min.css">

  <title>ABCount</title>
  <link rel="icon" type="image/x-icon" href="<?= base_url(); ?>dist/images/favicon.ico">
  <style>
    .ijo {
      background-color: #4b5320 !important;
    }

    .abu {
      background-color: #d3d3d3 !important;
      border-color: #c3c3c3 !important;
    }
  </style>
</head>

<body>
  <!-- <h1>Hello, world!</h1> -->
  <div class="container">
    <!-- Navbar Start -->
    <nav class="navbar fixed-top navbar-expand-md navbar-dark bg-dark ijo">
      <a class="navbar-brand" href="#">
        <img src="<?= base_url(); ?>dist/images/logo.png" height="32" alt="ABCount">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#main">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contactUs">Contact Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#videoTutorial">Video Tutorial</a>
          </li>
        </ul>
      </div>
    </nav>
    <!-- Navbar End -->
    <div id="main" class="mt-5">
      <form id="form" method="POST" action="<?= site_url(); ?>/home/save">
        <!-- Pilih Poli Start -->
        <div class="container" id="pilihPoli">
          <hr>
          <br>
          <br>
          <br>
          <h2 class="text-center">Selamat Datang di Aplikasi Penghitungan Unit Cost</h2>
          <br>
          <br>
          <div class="form-group row">
            <label for="unit_cost" class="col-md-3 col-sm-12 col-form-label"><b>Pilih Ruangan</b></label>
            <div class="col-md-9 col-sm-12">
              <select id="poli_id" name="poli_id" class="form-control">
                <?php foreach ($poli as $k => $v) : ?>
                  <option value="<?= $v['poli_id']; ?>"><?= $v['poli_nm']; ?></option>
                <?php endforeach; ?>
              </select>
            </div>
          </div>
          <div class="form-group row">
            <button id="simpanPoli" class="col-md-3 col-sm-12 btn btn-primary abu">Simpan</button>
          </div>
        </div>
        <!-- Pilih Poli End -->

        <!-- Main Start -->
        <div class="container d-none" id="home">
          <hr>
          <div class="form-group row">
            <label for="pelayanan_nm" class="col-md-3 col-sm-12 col-form-label"><b>Jenis Layanan</b></label>
            <div class="col-md-9 col-sm-12">
              <input type="text" class="form-control" id="pelayanan_nm" name="pelayanan_nm">
            </div>
          </div>
          <div class="form-group row">
            <label for="pelayanan_jml" class="col-md-3 col-sm-12 col-form-label"><b>Layanan/Tahun</b></label>
            <div class="col-md-9 col-sm-12">
              <input type="text" class="form-control" id="pelayanan_jml" name="pelayanan_jml">
            </div>
          </div>
          <div class="form-group row">
            <label for="aktivitasLayanan" class="col-md-3 col-sm-12 col-form-label"><b>Aktivitas Layanan</b></label>
            <table class="table table-striped" id="tableAktivitas">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Aktivitas</th>
                  <th scope="col">Waktu</th>
                  <th scope="col">Waktu Primer</th>
                  <!-- <th scope="col">Jumlah</th> -->
                </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
          <div class="container">
            <div class="form-group row">
              <label for="temp_aktivitas_nm" class="col-md-4 col-sm-12 col-form-label">Nama Aktivitas</label>
              <div class="col-md-8 col-sm-12">
                <input type="text" class="form-control" id="temp_aktivitas_nm" name="temp_aktivitas_nm">
              </div>
            </div>
            <div class="form-group row">
              <label for="temp_waktu_pelayanan" class="col-md-4 col-sm-12 col-form-label">Waktu Pelayanan</label>
              <div class="col-md-8 col-sm-12">
                <input type="text" class="form-control" id="temp_waktu_pelayanan" name="temp_waktu_pelayanan">
              </div>
            </div>
            <div class="form-group row">
              <label for="temp_waktu_primer_pelayanan" class="col-md-4 col-sm-12 col-form-label">Waktu Primer Pelayanan</label>
              <div class="col-md-8 col-sm-12">
                <input type="text" class="form-control" id="temp_waktu_primer_pelayanan" name="temp_waktu_primer_pelayanan">
              </div>
            </div>
            <div class="form-group row">
              <button id="btnTambahAktivitas" class="col-md-4 col-sm-12 btn btn-primary abu">Tambah</button>
            </div>
          </div>
          <div class="form-group row">
            <label class="col-md-3 col-sm-12 col-form-label"><b>BMHP</b></label>
            <table id="tableBahan" class="table table-striped">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Bahan</th>
                  <th scope="col">Kebutuhan</th>
                  <th scope="col">Harga</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
          <div class="container">
            <div class="form-group row">
              <label for="temp_bahan_nm" class="col-md-4 col-sm-12 col-form-label">Nama Bahan</label>
              <div class="col-md-8 col-sm-12">
                <input type="text" class="form-control" id="temp_bahan_nm" name="temp_bahan_nm">
              </div>
            </div>
            <div class="form-group row">
              <label for="temp_kebutuhan" class="col-md-4 col-sm-12 col-form-label">Kebutuhan</label>
              <div class="col-md-8 col-sm-12">
                <input type="text" class="form-control" id="temp_kebutuhan" name="temp_kebutuhan">
              </div>
            </div>
            <div class="form-group row">
              <label for="temp_bahan_harga" class="col-md-4 col-sm-12 col-form-label">Harga</label>
              <div class="col-md-8 col-sm-12">
                <input type="text" class="form-control" id="temp_bahan_harga" name="temp_bahan_harga">
              </div>
            </div>
            <div class="form-group row">
              <button id="btnTambahBahan" class="col-md-4 col-sm-12 btn btn-primary abu">Tambah</button>
            </div>
          </div>
          <div class="form-group row">
            <label for="aktivitasLayanan" class="col-md-3 col-sm-12 col-form-label"><b>Alat</b></label>
            <table id="tableAlat" class="table table-striped">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Alat</th>
                  <th scope="col">Umur</th>
                  <th scope="col">Harga</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
          <div class="container">
            <div class="form-group row">
              <label for="temp_alat_nm" class="col-md-4 col-sm-12 col-form-label">Nama Alat</label>
              <div class="col-md-8 col-sm-12">
                <input type="text" class="form-control" id="temp_alat_nm" name="temp_alat_nm">
              </div>
            </div>
            <div class="form-group row">
              <label for="temp_alat_umur" class="col-md-4 col-sm-12 col-form-label">Umur</label>
              <div class="col-md-8 col-sm-12">
                <input type="text" class="form-control" id="temp_alat_umur" name="temp_alat_umur">
              </div>
            </div>
            <div class="form-group row">
              <label for="temp_alat_harga" class="col-md-4 col-sm-12 col-form-label">Harga</label>
              <div class="col-md-8 col-sm-12">
                <input type="text" class="form-control" id="temp_alat_harga" name="temp_alat_harga">
              </div>
            </div>
            <div class="form-group row">
              <button id="btnTambahAlat" class="col-md-4 col-sm-12 btn btn-primary abu">Tambah</button>
            </div>
          </div>
          <div class="form-group row">
            <label for="unit_cost" class="col-md-3 col-sm-12 col-form-label"><b>Unit Cost</b></label>
            <div class="col-md-9 col-sm-12">
              <input type="text" class="form-control" id="unit_cost" name="unit_cost" disabled>
            </div>
          </div>
          <div class="form-check row col">
            <input class="form-check-input" type="checkbox" value="" id="check_yakin" required>
            <label class="form-check-label" for="check_yakin">
              <small><b>Saya yakin akta sudah diinput dengan benar</b></small>
            </label>
          </div>
          <div class="form-group row">
            <button type="submit" class="col-md-12 col-sm-12 btn btn-primary ijo">Simpan</button>
          </div>
        </div>
        <!-- Main End -->
      </form>
    </div>
    <div id="contactUs" class="d-none mt-5">
      <hr>
      <div class="container">
        <div class="form-group row">
          <button class="col-md-12 col-sm-12 btn btn-primary ijo">contactUs</button>
        </div>
        <div class="card">
          <div class="card-body">
            <div class="container">
              <image src="<?= base_url(); ?>dist/images/qr_wa.jpeg" class="rounded mx-auto d-block"></image>
            </div>
            <hr>
            <div>Prasetyo Sarwo P <br>
              081477006462
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="videoTutorial" class="d-none mt-5">
      <div class="container">
        <div class="form-group row">
          <button class="col-md-12 col-sm-12 btn btn-primary ijo">videoTutorial</button>
        </div>
      </div>
    </div>
    <!-- End of .container -->
  </div>

  <!-- Remove the container if you want to extend the Footer to full width. -->
  <div>

    <br>
    <br>
    <footer class="text-center text-lg-start ijo">
      <br>
      <br>
      <div class="container d-flex justify-content-center py-5">
        <!-- <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
            <i class="fab fa-facebook-f"></i>
          </button>
          <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
            <i class="fab fa-youtube"></i>
          </button>
          <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
            <i class="fab fa-instagram"></i>
          </button>
          <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
            <i class="fab fa-twitter"></i>
          </button> -->
      </div>

      <!-- Copyright -->
      <div class="text-center text-white p-3 ">
        designed by healthinovation <br>@ 2023
      </div>
      <!-- Copyright -->
    </footer>

  </div>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="<?= base_url(); ?>dist/js/jquery-3.6.3.min.js"></script>
  <script src="<?= base_url(); ?>dist/js/popper.min.js"></script>
  <script src="<?= base_url(); ?>dist/js/bootstrap.min.js"></script>
  <script>
    let parameter = [];
    let arr_bl_bahan = [];
    let arr_bl_alat = [];
    let total_bl = 0;
    let arr_aktivitas = [];
    let total_btl = 0;
    let unit_cost = 0;
    $(document).ready(() => {
      $(".nav-link").click(function(e) {
        selectedNav = $(this).attr("href");
        $(".nav-link").each(function(i, obj) {
          if (selectedNav != $(this).attr("href")) {
            $($(this).attr("href")).addClass('d-none');
          } else {
            $($(this).attr("href")).removeClass('d-none');
            if ($(this).attr("href") == "#main") {
              $("#pilihPoli").removeClass('d-none');
              $("#home").addClass('d-none');
            }
          };
        })
      })

      $("#simpanPoli").click((e) => {
        e.preventDefault();
        $.ajax({
          type: "GET",
          url: "<?= site_url('home/ajax/get_parameter') ?>",
          dataType: "json",
          async: true,
          data: {
            poli_id: function() {
              return $("#poli_id").val()
            }
          },
          beforeSend: function() {},
          success: function(data) {
            parameter = data.result;

            $("#pilihPoli").addClass("d-none");
            $("#home").removeClass("d-none");
          },
          error: function(textStatus, errorThrown) {
            alert('ERROR - GAGAL MENGAMBIL PARAMETER');
          }
        });
      });

      $("#btnTambahAktivitas").click((e) => {
        e.preventDefault();
        no = parseInt($('#tableAktivitas tr:last th').data('id') ? $('#tableAktivitas tr:last th').data('id') : '0');
        aktivitas_nm = $('#temp_aktivitas_nm').val();
        waktu_pelayanan = $('#temp_waktu_pelayanan').val();
        waktu_primer_pelayanan = $('#temp_waktu_primer_pelayanan').val();
        kategori = 'S';
        if ((parseInt($('#temp_waktu_primer_pelayanan').val()) || 0) > 0) {
          kategori = 'P';
        }

        arr_aktivitas.push({
          aktivitas_nm,
          waktu_pelayanan,
          waktu_primer_pelayanan,
          kategori
        })

        val_hide = '<input type="hidden" class="form-control" name="aktivitas_nm[]" value="' + aktivitas_nm + '">' +
          '<input type="hidden" class="form-control" name="waktu_pelayanan[]" value="' + waktu_pelayanan + '">' +
          '<input type="hidden" class="form-control" name="waktu_primer_pelayanan[]" value="' + waktu_primer_pelayanan + '">' +
          '<input type="hidden" class="form-control" name="kategori[]" value="' + kategori + '">';
        html = '<tr>' +
          val_hide +
          '<th scope="row" data-id="' + (no + 1) + '">' + (no + 1) + '</th>' +
          '<td>' + aktivitas_nm + '</td>' +
          '<td>' + waktu_pelayanan + '</td>' +
          '<td>' + waktu_primer_pelayanan + '</td>' +
          ' <!-- <td>1</td> -->' +
          '</tr>';
        $('#tableAktivitas tr:last').after(html);

        $('#temp_aktivitas_nm').val('');
        $('#temp_waktu_pelayanan').val('');
        $('#temp_waktu_primer_pelayanan').val('');

        hitung_total_bl();
      })

      $("#btnTambahBahan").click((e) => {
        e.preventDefault();
        no = parseInt($('#tableBahan tr:last th').data('id') ? $('#tableBahan tr:last th').data('id') : '0');
        bahan_nm = $('#temp_bahan_nm').val();
        kebutuhan = $('#temp_kebutuhan').val();
        bahan_harga = $('#temp_bahan_harga').val();

        arr_bl_bahan.push({
          bahan_nm,
          kebutuhan,
          bahan_harga
        })

        val_hide = '<input type="hidden" class="form-control" name="bahan_nm[]" value="' + bahan_nm + '">' +
          '<input type="hidden" class="form-control" name="kebutuhan[]" value="' + kebutuhan + '">' +
          '<input type="hidden" class="form-control" name="bahan_harga[]" value="' + bahan_harga + '">';
        html = '<tr>' +
          val_hide +
          '<th scope="row" data-id="' + (no + 1) + '">' + (no + 1) + '</th>' +
          '<td>' + bahan_nm + '</td>' +
          '<td>' + kebutuhan + '</td>' +
          '<td>' + bahan_harga + '</td>' +
          '</tr>';
        $('#tableBahan tr:last').after(html);

        $('#temp_bahan_nm').val('');
        $('#temp_kebutuhan').val('');
        $('#temp_bahan_harga').val('');

        hitung_total_bl();
      })

      $("#btnTambahAlat").click((e) => {
        e.preventDefault();
        no = parseInt($('#tableAlat tr:last th').data('id') ? $('#tableAlat tr:last th').data('id') : '0');
        alat_nm = $('#temp_alat_nm').val();
        alat_umur = $('#temp_alat_umur').val();
        alat_harga = $('#temp_alat_harga').val();

        arr_bl_alat.push({
          alat_nm,
          alat_umur,
          alat_harga
        })

        val_hide = '<input type="hidden" class="form-control" name="alat_nm[]" value="' + alat_nm + '">' +
          '<input type="hidden" class="form-control" name="alat_umur[]" value="' + alat_umur + '">' +
          '<input type="hidden" class="form-control" name="alat_harga[]" value="' + alat_harga + '">';
        html = '<tr>' +
          val_hide +
          '<th scope="row" data-id="' + (no + 1) + '">' + (no + 1) + '</th>' +
          '<td>' + alat_nm + '</td>' +
          '<td>' + alat_umur + '</td>' +
          '<td>' + alat_harga + '</td>' +
          '</tr>';
        $('#tableAlat tr:last').after(html);

        $('#temp_alat_nm').val('');
        $('#temp_alat_umur').val('');
        $('#temp_alat_harga').val('');

        hitung_total_bl();
      })


    })

    function hitung_total_bl() {
      // Hitung BL Bahan
      bl_bahan = 0;

      $.each(arr_bl_bahan, function(i, item) {
        if (arr_bl_bahan[i] != '') {
          bl_bahan = bl_bahan + (parseInt(item.kebutuhan) || 0) * (parseInt(item.bahan_harga) || 0);
        }
      });
      //END Hitung BL Bahan

      // Hitung BL Alat
      bl_alat = 0;
      bl_alat_per_menit = 0;
      waktu_primer_pelayanan = 0;
      $.each(arr_aktivitas, (i, a) => {
        waktu_primer_pelayanan = waktu_primer_pelayanan + (parseInt(a.waktu_primer_pelayanan) || 0)
      })

      $.each(arr_bl_alat, function(i, item) {
        if (arr_bl_alat[i] != '') {
          bl_alat_per_menit = bl_alat_per_menit + ((parseInt(item.alat_harga) || 0) / (parseInt(item.alat_umur) || 0) / parseInt(parameter.wp));
        }
      });
      bl_alat = bl_alat_per_menit * waktu_primer_pelayanan;
      //END Hitung BL Alat

      // BL Sdm
      bl_sdm = parseInt(parameter.bl.sdm) * waktu_primer_pelayanan;
      //END BL Sdm

      total_bl = parseInt(bl_bahan + bl_alat + bl_sdm);

      hitung_total_btl();
    }

    function hitung_total_btl() {
      // Persiapan data
      // jml pelayanan per tahun
      pelayanan_jml = parseInt($("#pelayanan_jml").val()) || 0;
      // total btl poli
      total_btl_poli = parseInt(parameter.btl.total) || 0;
      // total cost btl rs sekunder
      total_cost_rs = parseInt(parameter.btl.total_cost_rs) || 0;

      // hitung semua cd(cost driver)
      cd_pelayanan = 0;
      $.each(arr_aktivitas, function(i, item) {
        if (arr_aktivitas[i] != '') {
          cd_pelayanan = cd_pelayanan + ((parseInt(item.waktu_pelayanan) || 0) * pelayanan_jml);
        }
      });
      cd_total = (parseInt(parameter.btl.total_cd) || 0) + cd_pelayanan;

      // hitung cost driver primer saja
      cd_primer_pelayanan = 0;
      $.each(arr_aktivitas, function(i, item) {
        if (arr_aktivitas[i] != '') {
          cd_primer_pelayanan = cd_primer_pelayanan + ((parseInt(item.waktu_primer_pelayanan) || 0) * pelayanan_jml);
        }
      });
      cd_primer_total = (parseInt(parameter.btl.total_cd_primer) || 0) + cd_primer_pelayanan;

      // hitung cost tindakan sekunder
      total_cost_pelayanan_sekunder = 0;
      $.each(arr_aktivitas, function(i, item) {
        if (item.kategori == 'S') {
          total_cost_pelayanan_sekunder = total_cost_pelayanan_sekunder + (((parseInt(item.waktu_pelayanan) || 0) * pelayanan_jml) / cd_total * total_btl_poli);
          // console.log(i + ' ' + (((parseInt(item.waktu_pelayanan) || 0) * pelayanan_jml) / cd_total * total_btl_poli));
        }
      });

      // END Persiapan data

      // Hitung BTL per Aktivitas
      let total_btl_aktivitas = 0;
      $.each(arr_aktivitas, function(i, item) {
        if (item.kategori == 'P') {
          let btl_aktivitas = 0
          btl_aktivitas = btl_aktivitas + (((((parseInt(item.waktu_pelayanan) || 0) * pelayanan_jml) / cd_primer_total * total_cost_rs) + (((parseInt(item.waktu_pelayanan) || 0) * pelayanan_jml) / cd_primer_pelayanan * total_cost_pelayanan_sekunder)) / pelayanan_jml);
          // console.log(i + ' ' + btl_aktivitas);
          // console.log(i + '(((((parseInt(' + item.waktu_pelayanan + ') || 0) * ' + pelayanan_jml + ') / ' + cd_primer_total + ' * ' + total_cost_rs + ') + (((parseInt(' + item.waktu_pelayanan + ') || 0) * ' + pelayanan_jml + ') / ' + cd_primer_pelayanan + ' * ' + total_cost_pelayanan_sekunder + ')) / ' + pelayanan_jml + ')');
          total_btl_aktivitas = total_btl_aktivitas + parseInt(btl_aktivitas);
        }
      })
      // END Hitung BTL per Aktivitas
      total_btl = total_btl_aktivitas;

      hitung_unit_cost();
    }

    function hitung_unit_cost() {
      unit_cost = total_bl + total_btl;
      $("#unit_cost").val(unit_cost);
    }
  </script>
</body>

</html>