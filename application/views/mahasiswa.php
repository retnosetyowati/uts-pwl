<div class="content-wrapper">
	<section class="content-header">
      <h1>
        Data Mahasiswa
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Data Mahasiswa</li>
      </ol>
    </section>

    <section class="content">
    	<button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
    	data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Data Mahasiswa</button>
    	<table class="table">
    		<tr>
    			<th>NO</th>
    			<th>NAMA MAHASISWA</th>
    			<th>NIM</th>
    			<th>TANGGAL LAHIR</th>
    			<th>JURUSAN</th>
    		</tr>

    		<?php

    		$no = 1;
    		foreach ($mahasiswa as $mhs) : ?> 
    		<tr>
    			<td><?php echo $no++ ?></td>
    			<td><?php echo $mhs->nama ?></td>
    			<td><?php echo $mhs->nim ?></td>
    			<td><?php echo $mhs->tgl_lahir ?></td>
    			<td><?php echo $mhs->jurusan ?></td>
    		</tr>

    		<?php endforeach;1 ?>
    	</table>
    </section>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">FORM INPUT DATA MAHASISWA</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url().'mahasiswa/tambah_aksi'; ?>">

        	<div class="form-group">
        		<label>Nama Mahasiswa</label>
        		<input type="text" name="nama" class="form-control">
        	</div>

        	<div class="form-group">
        		<label>NIM</label>
        		<input type="text" name="nim" class="form-control">
        	</div>

        	<div class="form-group">
        		<label>Tanggal Lahir</label>
        		<input type="text" name="tgl_lahir" class="form-control">
        	</div>

        	<div class="form-group">
        		<label>Jurusan</label>
        		<input type="text" name="jurusan" class="form-control">
        	</div>

        	<button type="reset" class="btn btn-danger" data-dismiss="modal">Reset</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
        	
        </form>
      
    </div>
  </div>
</div>
</div>