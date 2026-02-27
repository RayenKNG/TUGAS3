import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';
// Nanti kita bikin dua file ini di langkah selanjutnya:
import 'catalog_page.dart';
import 'cart_page.dart';

void main() {
  runApp(
    // Membungkus aplikasi dengan ChangeNotifierProvider
    // agar State bisa diakses di mana saja
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

// 2. UI LAYER
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // Mengatur rute/navigasi pindah halaman
      routes: {
        '/': (context) => const MyCatalog(),
        '/cart': (context) => const MyCart(),
      },
    );
  }
}
