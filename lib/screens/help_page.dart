import 'package:flutter/material.dart';
import 'package:kuis_barang_1/const/bantuan.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bantuan dan Dukungan"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: ListView.builder(
            itemCount: helpItemList.length,
            itemBuilder: (context, index) {
              final help = helpItemList[index];
              return Column(
                children: [
                  Text(
                    help.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(help.desc),
                  SizedBox(
                    height: 24,
                  )
                ],
              );
            },
          ),
        ));
  }
}
