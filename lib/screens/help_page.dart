import 'package:flutter/material.dart';
import 'package:kuis_barang_1/const/bantuan.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bantuan dan Dukungan"),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: ListView.builder(
            itemCount: helpItemList.length,
            itemBuilder: (context, index) {
              final help = helpItemList[index];
              return Column(
                children: [
                  if (index == 0)
                    Column(children: [
                      Image.asset(
                        'customerService.png',
                        height: 200,
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ]),
                  Text(
                    help.title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(help.desc),
                  const SizedBox(
                    height: 24,
                  )
                ],
              );
            },
          ),
        ));
  }
}
