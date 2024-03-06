Urutan Kegiatan Hari Ini :

1. Script Untuk Koneksi Dengan Database
----------------------------------------------------------------------------------------------------------
<?php

$server = "localhost";
$user = "root";
$password = "";
$database = "ujian";

$connection = mysqli_connect($server, $user, $password, $database) or die(mysqli_error($connection));
?>
----------------------------------------------------------------------------------------------------------

2. Script Untuk Menghubungkan Halaman dengan Database
----------------------------------------------------------------------------------------------------------
<?php
include "koneksi.php";
?>
----------------------------------------------------------------------------------------------------------

3. Script untuk Tambah & Edit Data ke Tabel Database (Sesuaikan data dengan nama tabel & nama variabel)
----------------------------------------------------------------------------------------------------------
<?php

include "koneksi.php";

if (isset($_POST['bsimpan'])){

    $simpan = mysqli_query($connection,"INSERT INTO siswa(nis, nama, tempat_lahir, tgl_lahir,jenis_kelamin, agama, alamat)
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

if (isset($_POST['bedit'])){

    $edit = mysqli_query($connection,"UPDATE siswa SET 
                                                    nis = '$_POST[nis]',
                                                    nama = '$_POST[nama]',
                                                    tempat_lahir = '$_POST[tempat_lahir]',
                                                    tgl_lahir = '$_POST[tgl_lahir]',
                                                    jenis_kelamin = '$_POST[jenis_kelamin]',
                                                    agama = '$_POST[agama]',
                                                    alamat = '$_POST[alamat]'
                                                WHERE id_siswa = '$_POST[id_siswa]'
                                                ");
    if($edit){
        echo "<script>
                    alert('Edit data berhasil!');
                    document.location='admin_siswa.php';
                    </script>";
    }  else{
        echo "<script>
                    alert('Edit data gagal!');
                    document.location='admin_siswa.php';
                </script>";
    }                                          
}

?>
--------------------------------------------------------------------------------------------------------

4. Fungsi untuk Menampilkan Data pada Tabel(Tutup endwhile diatas penutup script tabel(</table>))
--------------------------------------------------------------------------------------------------------
<?php        
                        $no = 1;
                        $tampil = mysqli_query($connection,"SELECT * FROM siswa ORDER BY id_siswa DESC");
                        while($data = mysqli_fetch_array($tampil)) :
                        ?>
 <?php endwhile; ?>
--------------------------------------------------------------------------------------------------------

5. Fungsi untuk memanggil data sesuai dengan variabelnya yang ada di Database
--------------------------------------------------------------------------------------------------------
<?= $data['nis'] ?>
--------------------------------------------------------------------------------------------------------

6. Fungsi hapus data
--------------------------------------------------------------------------------------------------------

//Button hapus
<a href="hapusdata_siswa.php?id_siswa=<?php echo $data['id_siswa']; ?>">Hapus</a>

//Halaman dari fungsi hapus
<?php 
include 'koneksi.php';
$id_siswa = $_GET['id_siswa'];
$hapus = mysqli_query($connection,"DELETE FROM siswa WHERE id_siswa='$id_siswa'");
if($hapus){
    echo "<script>
                alert('Hapus data berhasil!');
                document.location='admin_siswa.php';
                </script>";
}  else{
    echo "<script>
                alert('Hapus data gagal!');
                document.location='admin_siswa.php';
            </script>";

}
?>
-------------------------------------------------------------------------------------------------------
