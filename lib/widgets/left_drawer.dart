import 'package:flutter/material.dart';
import 'package:football_shop/screens/menu.dart';
import 'package:football_shop/screens/newlist_form.dart';
// TODO: Impor halaman NewsFormPage jika sudah dibuat

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            // Bagian drawer header
            decoration: BoxDecoration(
              color: Colors.lightGreen,
            ),
            child: Column(
              children: [
                Text(
                  'Louis Ballton',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Seluruh product sepak bola di sini!",
                    // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
              ],
            ),
          ),
          // Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Add Product'),
            // Bagian redirection ke NewsFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductFormPage(),
                  ));
              /*
              TODO: Buatlah routing ke NewsFormPage di sini,
              setelah halaman NewsFormPage sudah dibuat.
              */
            },
          ),
        ],
      ),
    );
  }
}