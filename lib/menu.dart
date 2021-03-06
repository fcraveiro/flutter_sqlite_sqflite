import 'package:flutter/material.dart';
import '/services/constants.dart';
import 'package:get/get.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 85,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pagina1/");
              },
              child: const Text('SQLite - SQFlite 1'),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pagina3/");
              },
              child: const Text('SQLite - SQFlite 2'),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed("/pagina2/");
              },
              child: const Text('Show Material Banner'),
            ),
          ],
        ),
      ),
    );
  }
}
