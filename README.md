<details>
<Summary><b>Tugas 7</b></Summary>

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

</details>

<details>
<Summary><b>Tugas 8</b></Summary>

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
   Perbedaan utama antara Navigator.push() dan Navigator.pushReplacement() adalah pada cara mereka mengatur halaman. Navigator.push() menambahkan halaman baru di atas halaman yang sedang aktif sehingga pengguna      masih bisa kembali ke halaman sebelumnya. Sedangkan Navigator.pushReplacement() mengganti halaman aktif dengan halaman baru dan menghapus halaman lama dari tumpukan, sehingga tidak bisa kembali lagi.

   Dalam aplikasi Football Shop, Navigator.push() cocok digunakan saat membuka halaman form dari halaman utama agar pengguna bisa kembali ke Home. Sementara Navigator.pushReplacement() sebaiknya digunakan setelah    menyimpan data produk, supaya pengguna langsung kembali ke HomePage tanpa bisa kembali ke halaman form.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
   Saya memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk menjaga struktur halaman aplikasi agar konsisten dan mudah digunakan. Scaffold menjadi kerangka utama setiap halaman karena menyediakan struktur dasar seperti area untuk AppBar, body, dan Drawer. AppBar saya gunakan untuk menampilkan judul halaman dan navigasi agar pengguna tahu di mana mereka berada. Sedangkan Drawer digunakan untuk menampilkan menu navigasi ke halaman lain seperti Home, Tambah Produk, dan Lihat Produk. Dengan kombinasi ini, semua halaman di aplikasi Football Shop memiliki tampilan dan navigasi yang seragam, sehingga pengalaman pengguna menjadi lebih mudah dan konsisten.

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
   Dalam konteks desain antarmuka, penggunaan widget seperti Padding, SingleChildScrollView, dan ListView memberikan tampilan form yang lebih rapi, responsif, dan nyaman digunakan.

Padding berfungsi untuk memberi jarak antar elemen agar tampilan tidak terlalu rapat dan lebih mudah dibaca. SingleChildScrollView memungkinkan seluruh isi form dapat digulir ke bawah, sehingga form tetap bisa diakses dengan nyaman pada layar kecil tanpa terpotong. Sementara ListView berguna saat jumlah elemen form cukup banyak dan dinamis, karena otomatis menyediakan fitur scroll dan efisien dalam menampilkan widget berulang.

Contohnya dalam aplikasi Football Shop, saya menggunakan Padding pada setiap TextFormField agar tiap input seperti Nama Produk dan Harga Produk memiliki jarak yang rapi. Seluruh form dibungkus dengan SingleChildScrollView supaya pengguna tetap bisa menggulir halaman saat mengisi form di layar kecil. Dengan begitu, tampilan form menjadi lebih bersih, fleksibel, dan mudah digunakan di berbagai ukuran perangkat.

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
   Saya menyesuaikan warna tema aplikasi Football Shop dengan menentukan palet warna utama yang mencerminkan identitas visual brand toko. Warna utama yang digunakan adalah hijau.

</details>
