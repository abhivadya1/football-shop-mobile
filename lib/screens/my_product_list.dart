import 'package:flutter/material.dart';
import 'package:football_shop/models/product_entry.dart';
import 'package:football_shop/widgets/left_drawer.dart';
import 'package:football_shop/screens/product_detail.dart';
import 'package:football_shop/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:football_shop/screens/user_session.dart';
import 'dart:convert';
import 'package:football_shop/screens/product_entry_list.dart'; 

class MyProductListPage extends StatefulWidget {
  const MyProductListPage({super.key});

  @override
  State<MyProductListPage> createState() => _MyProductListPageState();
}

class _MyProductListPageState extends State<MyProductListPage> {
  late Future<List<ProductEntry>> _futureMyProducts;

  @override
  void initState() {
    super.initState();
    final request = context.read<CookieRequest>();
    _futureMyProducts = fetchMyProducts(request);
  }

  // Fungsi untuk mengambil dan memfilter produk
  Future<List<ProductEntry>> fetchMyProducts(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');
    final jsonString = jsonEncode(response); 
    final List<ProductEntry> allProducts = productEntryFromJson(jsonString);

    final String? currentUsername = UserSession.currentUsername;
    
    // Hanya ambil produk yang username-nya cocok
    if (currentUsername != null) {
      final usernameLower = currentUsername.toLowerCase();
      return allProducts.where((product) {
        return product.username.toLowerCase() == usernameLower;
      }).toList();
    }
    
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Products'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_basket,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryListPage(),
                ),
              );
            },
            tooltip: 'Show All Products',
          ),
        ],
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: _futureMyProducts,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          List<ProductEntry> filteredProducts = snapshot.data ?? [];

          if (filteredProducts.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You have no products yet.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                  Text('Start adding your products now!'),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: filteredProducts.length,
            itemBuilder: (_, index) => ProductEntryCard(
              product: filteredProducts[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailPage(product: filteredProducts[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}