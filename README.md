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
<details>
<Summary><b>Tugas 9</b></Summary>
   1.Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
      Membuat model Dart diperlukan agar data JSON yang diambil dari backend memiliki struktur dan tipe data yang jelas. JSON pada dasarnya hanya berupa Map<String, dynamic>, sehingga tidak memiliki jaminan tipe. Dengan menggunakan model, setiap field memiliki tipe yang pasti sehingga kesalahan data dapat terdeteksi lebih awal di compile-time, bukan saat aplikasi sedang berjalan. Model juga membantu penerapan null-safety karena kita bisa menentukan mana field yang wajib dan mana yang boleh bernilai null. Jika kita langsung menggunakan Map<String, dynamic> tanpa model, aplikasi menjadi rawan error seperti “unexpected null value” atau kesalahan tipe karena semua data dianggap dynamic. Selain itu, kode menjadi sulit dirawat, sulit di-refactor, dan mudah terjadi typo pada key JSON. Dengan model, kode lebih rapi, mudah dibaca, mudah dikembangkan, dan lebih aman terhadap perubahan API.

  2.Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
   Package http digunakan untuk melakukan permintaan HTTP dasar seperti GET dan POST secara langsung ke server. Paket ini tidak menyimpan sesi login, tidak mengelola cookie, dan setiap request berdiri sendiri. Karena itu, jika backend membutuhkan autentikasi berbasis session (misalnya login Django), package http tidak otomatis membawa cookie sehingga server tidak mengenali pengguna.

Sementara itu, CookieRequest berfungsi sebagai client yang menyimpan dan mengelola cookie secara otomatis, termasuk session ID yang diberikan Django setelah login. Dengan CookieRequest, setiap permintaan berikutnya (GET/POST) akan membawa cookie tersebut, sehingga server mengetahui bahwa pengguna sudah login dan dapat mengakses endpoint yang membutuhkan autentikasi.

Jadi perbedaannya: http = request biasa tanpa session, sedangkan CookieRequest = request dengan manajemen cookie dan session login, sehingga penting untuk fitur seperti login, logout, dan akses data yang membutuhkan otentikasi.

  3.Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
     Instance CookieRequest perlu dibagikan ke seluruh komponen aplikasi Flutter karena objek ini menyimpan cookie dan status autentikasi pengguna (misalnya apakah pengguna sudah login, siapa penggunanya, dan session ID dari Django). Agar setiap halaman bisa mengakses informasi tersebut dan bisa melakukan request yang tetap membawa cookie login, semua widget harus menggunakan instance CookieRequest yang sama, bukan membuat instance baru.
     
  4.Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
  Agar Flutter dapat terhubung dengan Django, beberapa konfigurasi perlu dilakukan karena keduanya berjalan di lingkungan yang berbeda. Django harus menambahkan 10.0.2.2 pada ALLOWED_HOSTS supaya server mengizinkan request dari Android emulator, karena emulator tidak bisa langsung memakai localhost. Django juga perlu mengaktifkan CORS dan mengatur cookie/SameSite, karena Flutter mengakses server dari origin berbeda dan membutuhkan cookie untuk autentikasi. Tanpa pengaturan ini, request lintas origin atau pengiriman cookie akan diblokir sehingga login dan akses API tidak berjalan. Di sisi Flutter/Android, kita juga harus memberikan izin internet agar aplikasi di emulator dapat mengakses jaringan. Bila salah satu konfigurasi ini tidak dilakukan dengan benar, aplikasi tidak akan bisa memanggil API, login gagal, atau permintaan ke Django ditolak.

  5.Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
   -Pengguna mengisi data di Flutter
   Flutter menampilkan form (misalnya nama produk, harga, deskripsi). Ketika pengguna menekan tombol submit, data tersebut dikumpulkan ke dalam bentuk Map/String atau objek yang kemudian dikirimkan ke backend.
   
   -Flutter mengirim data ke Django (via HTTP / CookieRequest)
   Flutter mengirim data menggunakan POST ke endpoint Django, biasanya menggunakan:
   http.post() untuk request biasa, atau
   CookieRequest.post() jika butuh autentikasi dan cookie.
   Data dikirim dalam format JSON.
   
   -Django menerima request dan memproses data
   Django membaca data JSON melalui view, memvalidasinya, lalu:
   menyimpannya ke database lewat model Django, atau
   mengembalikan respon JSON berisi status keberhasilan.
   
   -Django mengirim respons kembali ke Flutter
   Django mengirim JSON response yang berisi data baru atau konfirmasi (misal: { "status": "success" }).
   
   -Flutter menerima JSON dan memetakan ke model Dart
   JSON yang diterima dipetakan ke dalam model Dart seperti ProductEntry.fromJson(...).
   Ini memastikan tipe data benar dan terstruktur.
   
   -Flutter menampilkan data ke layar
   Data yang sudah diubah menjadi objek Dart ditampilkan melalui widget (misal ListView.builder), sehingga pengguna dapat melihat data yang telah diinput atau disimpan sebelumnya.

  6.Mekanisme Autentikasi dari Login, Register, hingga Logout
   Register (Pendaftaran Akun)
   Pengguna mengisi form register di Flutter, lalu Flutter mengirim data melalui POST ke Django. Django membuat akun baru di database dan mengirim respons bahwa proses pendaftaran berhasil. Flutter kemudian menampilkan pesan sukses dan pengguna dapat lanjut ke halaman login.
   
   Login (Autentikasi)
   Pengguna memasukkan username dan password di Flutter. Flutter mengirim data login menggunakan CookieRequest.login(). Django memverifikasi kredensial, dan jika benar, Django membuat session lalu mengirim kembali cookie session. CookieRequest menyimpan cookie ini agar bisa digunakan pada request berikutnya. Flutter kemudian masuk ke menu utama.
   
   Akses Fitur yang Membutuhkan Autentikasi
   Setelah login, setiap request dari Flutter otomatis menyertakan cookie session. Django memeriksa cookie tersebut untuk memastikan pengguna masih terautentikasi sebelum mengirim data JSON. Jika valid, data akan ditampilkan di UI Flutter.
   
   Logout
   Flutter memanggil endpoint logout Django menggunakan CookieRequest. Django menghapus session pengguna, dan CookieRequest menghapus cookie yang disimpan di Flutter. Setelah itu, pengguna diarahkan kembali ke halaman login.

   7.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
   Membuat app baru di projek football shop saya -> membuat model di dart dengan informasi dari localhost jsonnya -> nambahin beberapa file pendukung lalu integrasi si django dengan flutter -> implementasi fungsi logout.
</details>
