<!DOCTYPE html>
<html>
<head>
  <title>Pembayaran</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>./assets/css/ryan/bootstrap-4/bootstrap.css" type="text/css" />
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>./assets/css/ryan/bootstrap-3/bootstrap.css" type="text/css" />
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>./assets/css/ryan/style.css" type="text/css" />
  <!--Open Iconic-->
  <link rel="stylesheet" href="<?php echo base_url().'assets/open-iconic-master/font/css/open-iconic-bootstrap.css';?>">

  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-light fixed-top header-navbar">
    <a class="navbar-brand" href="<?php echo site_url('Home_C')?>"><img src="<?php echo base_url(); ?>./assets/img/logowhite.png" alt="danusyuk"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto ml-2">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><b>Tipe event</b></a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Event</a>
            <a class="dropdown-item" href=#"">Seminar</a>
          </div>
        </li>
      </ul>
      <form class="form-inline w-75 col-md-9">
        <input class="nav-search-input form-control w-75" type="search" placeholder="Cari Event..." aria-label="Search">
        <button class="btn nav-search-btn" type="submit"><span class="oi oi-magnifying-glass" title="magnifying glass" aria-hidden="true"></span></button>
      </form>
      <div class="btn-group" role="group" aria-label="Basic example">
        <a role="button" class="btn btn-login btn-link nav-btn mx-2" href="Login.html">Login</a>
        <a class="btn btn-daftar btn-outline-primary rounded mr-4" href="regispelanggan.html">Daftar</a>
      </div>
    </div>
  </nav>

</div>
  <div class="container">
     
  <table class="table table-condensed">
    <thead>
      <tr>
        <th>ParamaBudaya2018</th>
       
      </tr>
    </thead>
    <tbody>
    <tr>
      <td style="color: grey;"><img src="<?php echo base_url(); ?>./assets/img/ukm-icon/ukm-djawa.jpg" width="20" height="20">UKM DJAWA</td>
    </tr>
    </tbody>
  </table>
</div>
<div class="container">

  <div align="center" ><h1>Pilih Produk</h1></div>    
  <table class="table table-condensed">
  <?php
        $no=1;
        $qty = 1;
        $totalHarga = 0;
        $shipping = 10000;
        foreach ($produk as $prd) {
          $totalHarga += ($prd->harga * $prd->chart);
    ?> 
    <tbody>
    
      <tr>
      
      <td><img src="<?php echo base_url(); ?>./assets/img/<?php echo $prd->gambar;?> " height="200" width="200" ></td>
     <td><h1><a href="html.html" style="color: black; text-decoration: none;" ><?php echo $prd->nama_produk; ?></a></h1><br>
      <p><?php echo $prd->penjelasan;?></p><br>
      <h2>Rp.<?php echo ($prd->harga * $prd->chart);?></h2></td>
     <td><h1 style="color: green">Quantity</h1><br>
    <a href="<?php echo base_url().'index.php/Bayar_C/addQtyController/'.$prd->id; ?>"><img class="image" border="0" title="#" src="<?php echo base_url(); ?>./assets/img/add.png" width="20px" height="20px" style="margin-right: 30px "></a>
      <?php 
          echo $prd->chart;
       ?>
    <a href="<?php echo base_url().'index.php/Bayar_C/subsQtyController/'.$prd->id; ?>"><img class="image" border="0" title="#" src="<?php echo base_url(); ?>./assets/img/substract.png" width="20px" height="20px" style="margin-left: 30px" ></a></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
</div>
<!--<div class="container" style="margin-top: 80px">
 
</div>
-->
<div class="container">
  
  <!-- Trigger the modal with a button -->
 <div align="center">
  <button type="button" class="btn btn-primary btn-block" id="pay-button" data-toggle="modal" data-target="#myModal">Lanjut Pembayaran</button>
 </div>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
        <form method="POST" action="<?php echo base_url().'index.php/Bayar_C/paymentController'; ?>">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Alamat</label>
            <textarea class="form-control" id="alamat" name="alamat"></textarea>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Metode Pembayaran</label>
            <br>
            <input type="radio" name="method" value="Transfer"> Transfer
            <br>
            <input type="radio" name="method" value="Transfer"> Bayar Di Tempat
          </div>
        
          <table class="table table-condensed">
    <thead>
      <tr>
        <th>Detail Pembayaran</th>
       
      </tr>
    </thead>
    <tbody>
    <tr>
      <td>Total Harga Barang<br>Rp <?php echo $totalHarga; ?><input type="hidden" name="total" value="<?php echo $totalHarga; ?>"></td>
      <td>Biaya Pengiriman<br>Rp <?php echo $shipping; ?><input type="hidden" name="shipping" value="<?php echo $shipping; ?>"></td>
    </tr>
    </tbody>
  </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <input type="submit" name="bayar" class="btn btn-info" value="Bayar">
    </form>
          <div class="modal fade" id="bayar" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
          <div class="input-group">
          
  <div class="input-group-prepend">
    <div class="input-group-text">
<form>
    <table>
  <td><input type="radio" name="bayar" value="transfer" id="transfer"><h5>Transfer</h5></td>
  <td><input type="radio" name="bayar" value="tunai" id="tunai"><h5>Bayar Ditempat</h5></td>
</form>
</table>
    </div>
  </div>

</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info" data-dismiss="modal">Bayar</button>
        </div>
      </div>
      
    </div>
  </div>
  
        </div>
      </div>
    </div>
  </div>
</div>
</div>
  <div>
    <div class="footer-1 container-fluid mt-5">
      <div class="row pt-3">
        <div class="col-6 pl-5"><img src="<?php echo base_url(); ?>./assets/img/logo.png" alt="danusyuk"></div>
        <div class="col-6">
          <div class="row float-right">
            <p class="pr-4"><b>Temukan kami di:</b></p>
            <ul class="list-inline">
              <li class="list-inline-item"><a href="#"><img class="w-50" src="<?php echo base_url(); ?>./assets/img/facebook.png" alt=""></a></li>
              <li class="list-inline-item"><a href="#"><img class="w-50" src="<?php echo base_url(); ?>./assets/img/twitter.png" alt=""></a></li>
              <li class="list-inline-item"><a href="#"><img class="w-50" src="<?php echo base_url(); ?>./assets/img/instagram.png" alt=""></a></li>
              <li class="list-inline-item"><a href="#"><img class="w-50" src="<?php echo base_url(); ?>./assets/img/google-plus.png" alt=""></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="pt-3">
      <div class="col-lg-3 col-md-5 col-sm-5 pl-4">
        <p class="text-justify footer-text1">
          <a class="footer-brand"><b>danusKuy</b></a> adalah platform untuk membantu penggalangan
          dana usaha untuk event-event di sekitar anda secara
          online
        </p>
      </div>
      <p class="pl-4 footer-text2">
        <b>Copyright 2018 &copy; PT. Bantu Yuk All Rights Reserved</b>
      </p>
    </div>
  </div>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
  $(document).ready( function () {
      $('#table_id').DataTable();
  } );
</script>
</body>
</html>