import 'package:flutter/material.dart';
import 'package:kuis_barang_1/const/daftar_barang_dummy.dart';
import 'package:kuis_barang_1/screens/help_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.username});
  final String username;

  final String bantuan =
      "Butuh Bantuan? Klik untuk pergi ke halaman Panduan dan Dukungan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            Center(
              child: Text(
                "Selamat datang $username",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpPage()));
              },
              child: Container(
                  padding: const EdgeInsets.all(20), child: Text(bantuan)),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 12, crossAxisCount: 2),
                  itemCount: supermarketItemList.length,
                  itemBuilder: (context, index) {
                    final item = supermarketItemList[index];
                    return Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.network(
                                item.imageUrls[0],
                                fit: BoxFit.cover,
                              )),
                              Text(item.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                              Text("Stock: ${item.stock}"),
                              Text(item.price)
                            ],
                          ),
                        ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
