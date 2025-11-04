TUGAS 7

1.  Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
   widget tree pada flutter adalah struktur hierarki yang menunjukkan bagaimana widget tersusun dalam suatu tampilan aplikasi. setiap widget bisa punya parent (induk) dan child (anak). parent mengatur posisi, ukuran, dan perilaku anaknya, sedangkan child berada di dalam parent dan mewarisi konteksnya. hubungan ini membentuk pohon widget, di mana perubahan pada satu widget bisa memengaruhi bagian lain di bawahnya.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.

  scaffold – menjadi kerangka utama halaman yang berisi appbar dan body.
  appbar – menampilkan judul di bagian atas aplikasi.
  column – menyusun widget secara vertikal di dalam body.
  card – menampilkan informasi seperti npm, nama, dan kelas dalam bentuk kotak.
  gridview.count – menampilkan tombol-tombol (item) dalam bentuk grid tiga kolom.

3.  Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
  widget materialapp berfungsi sebagai wadah utama aplikasi yang menerapkan konsep material design dari google. widget ini mengatur tema, warna, rute navigasi, serta struktur dasar tampilan aplikasi. materialapp sering digunakan sebagai widget root karena menjadi titik awal yang menyediakan konteks dan konfigurasi global untuk semua widget di bawahnya, sehingga seluruh aplikasi memiliki tampilan dan perilaku yang konsisten.

4.  Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
statelesswidget adalah widget yang tidak memiliki keadaan (state) yang bisa berubah. tampilannya akan tetap sama selama aplikasi berjalan, contohnya untuk teks statis atau ikon tetap.
statefulwidget adalah widget yang memiliki state dan bisa berubah seiring waktu, misalnya saat pengguna menekan tombol atau memasukkan data.
kita memilih statelesswidget saat tampilan bersifat tetap dan tidak perlu diperbarui, sedangkan statefulwidget digunakan saat tampilan perlu merespons interaksi atau perubahan data.

5.  Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
buildcontext adalah objek yang menyimpan informasi tentang posisi suatu widget di dalam widget tree. context ini penting karena digunakan untuk mengakses data yang disediakan oleh widget di atasnya, seperti tema, ukuran layar, atau navigator.
di metode build, buildcontext dipakai untuk membangun tampilan widget berdasarkan lokasi dan konteksnya, misalnya saat memanggil theme.of(context) untuk mengambil warna tema atau scaffoldmessenger.of(context) untuk menampilkan snackbar.

6.  Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
hot reload adalah fitur flutter yang memperbarui kode yang sedang dijalankan tanpa mengulang seluruh aplikasi. perubahan pada tampilan atau logika langsung muncul di layar tanpa kehilangan state aplikasi.
sedangkan hot restart memulai ulang aplikasi dari awal, menghapus semua state yang sedang berjalan. hot restart digunakan jika perubahan menyangkut hal-hal yang tidak bisa diperbarui dengan hot reload, seperti perubahan pada variabel global atau struktur utama aplikasi.

