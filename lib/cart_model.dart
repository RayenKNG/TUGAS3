import 'package:flutter/material.dart';

// 1. STATE MODEL (BUSINESS LOGIC)
class CartModel extends ChangeNotifier {
  // Variabel private untuk menyimpan daftar makanan di keranjang
  final List<String> _items = [];

  // Getter supaya UI bisa membaca isi keranjang
  List<String> get items => _items;

  // Fungsi untuk nambah barang ke keranjang
  void add(String itemName) {
    _items.add(itemName);
    // Memberitahu UI untuk update! (Kunci utama Provider)
    notifyListeners();
  }

  // Fungsi untuk menghapus semua isi keranjang
  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
