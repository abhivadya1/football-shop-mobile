import 'package:flutter/material.dart';
import 'package:football_shop/models/product_entry.dart';
import 'package:football_shop/widgets/left_drawer.dart';
import 'package:football_shop/screens/product_detail.dart';
import 'package:football_shop/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'dart:convert';
import 'package:football_shop/screens/user_session.dart'; 
import 'package:football_shop/screens/my_product_list.dart'; 

class ProductEntryListPage extends StatefulWidget {
  const ProductEntryListPage({super.key});

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  late Future<List<ProductEntry>> _futureProducts;

  @override
  void initState() {
    super.initState();
    final request = context.read<CookieRequest>();
    _futureProducts = fetchProduct(request);
  }

  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');
    final jsonString = jsonEncode(response);
    return productEntryFromJson(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    // Dapatkan status login dan username saat ini
    final request = context.watch<CookieRequest>();
    final String? currentUsername = UserSession.currentUsername; //

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
        actions: [
          if (currentUsername != null && request.loggedIn) 
            IconButton(
              icon: const Icon(
                Icons.person_pin,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProductListPage(), 
                  ),
                );
              },
              tooltip: 'Show My Products Only',
            ),
        ],
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: _futureProducts,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || (snapshot.data as List<ProductEntry>).isEmpty) {
            return const Center(
              child: Text(
                'There are no products in football product yet.',
                style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
              ),
            );
          }

          List<ProductEntry> allProducts = snapshot.data!;
          
          return ListView.builder(
            itemCount: allProducts.length,
            itemBuilder: (_, index) => ProductEntryCard(
              product: allProducts[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailPage(product: allProducts[index]),
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