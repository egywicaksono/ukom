<?php
include "conn.php";
?>
<?php

include "conn.php";

if (isset($_POST['bsimpan'])){

    $simpan = mysqli_query($connection,"INSERT INTO siswa(nis, nama, tempat_lahir, tgl_lahir,jenis_kelamin, agama, alamat
    VALUES ('$_POST[nis]',
    '$_POST[nama]',
    '$_POST[tempat_lahir]',
    '$_POST[tgl_lahir]',
    '$_POST[jenis_kelamin]',
    '$_POST[agama]',
    '$_POST[alamat]') ");
    if($simpan){
        echo "<script>
             alert('Simpan data berhasil!');
                      document.location='admin_siswa.php';
                </script>";
    }  else{
        echo "<script>
                    alert('Simpan data gagal!');
                    document.location='admin_siswa.php';
                </script>";
    }                                          
}