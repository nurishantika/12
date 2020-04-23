<?php
include('koneksiformulir.php');
require_once("dompdf/autoload.inc.php");
use Dompdf\Dompdf;
$dompdf = new Dompdf();
$query = mysqli_query($koneksi,"select * from formulir");
$html = '<center><h3>Daftar Nama Siswa</h3></center><hr/><br/>';
$html .= '<table border="1" width="100%">
 <tr>
 <th>No</th>
 <th>Nama Lengkap</th>
 <th>Jenis Kelamin</th>
 <th>NISN</th>
 <th>NIK/No. KITAS</th>
 <th>Tempat Lahir</th>
 <th>Tanggal Lahir</th>
 <th>No Registrasi Akta Lahir</th>
 <th>Agama & Kepercayaan</th>
 <th>Kewarganegaraan</th>
 <th>Berkebutuhan Khusus</th>
 <th>Alamat Jalan</th>
 <th>RT</th>
 <th>RW</th>
 <th>Nama Dusun</th>
 <th>Nama Kelurahan/Desa</th>
 <th>Kecamatan</th>
 <th>Kode Pos</th>
 <th>Lintang</th>
 <th>Bujur</th>
 <th>Tempat Tinggal</th>
 <th>Moda Transportasi</th>
 <th>Nomor KKS</th>
 <th>Anak ke-berapa</th>
 <th>Penerima KPS/PKH</th>
 <th>No KPS/PKH</th>
 </tr>';
$no = 1;
while($row = mysqli_fetch_array($query))
{
 $html .= "<tr>
 <td>".$no."</td>
 <td>".$row['nama']."</td>
 <td>".$row['jkel']."</td>
 <td>".$row['nisn']."</td>
 <td>".$row['nik']."</td>
 <td>".$row['tptlahir']."</td>
 <td>".$row['tgllahir']."</td>
 <td>".$row['noreg']."</td>
 <td>".$row['agama']."</td>
 <td>".$row['kwn']."</td>
 <td>".$row['berkebutuhan']."</td>
 <td>".$row['alamat']."</td>
 <td>".$row['rt']."</td>
 <td>".$row['rw']."</td>
 <td>".$row['dusun']."</td>
 <td>".$row['kel']."</td>
 <td>".$row['kec']."</td>
 <td>".$row['kodepos']."</td>
 <td>".$row['lintang']."</td>
 <td>".$row['bujur']."</td>
 <td>".$row['tpttinggal']."</td>
 <td>".$row['transport']."</td>
 <td>".$row['kks']."</td>
 <td>".$row['anakke']."</td>
 <td>".$row['kps']."</td>
 <td>".$row['nokps']."</td>
 </tr>";
 $no++;
}
$html .= "</html>";
$dompdf->loadHtml($html);
// Setting ukuran dan orientasi kertas
$dompdf->setPaper('A2', 'landscape');
// Rendering dari HTML Ke PDF
$dompdf->render();
// Melakukan output file Pdf
$dompdf->stream('report_siswa.pdf');
?>