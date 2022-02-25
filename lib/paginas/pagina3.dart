import 'package:flutter/material.dart';

class Pagina3 extends StatefulWidget {
  const Pagina3({Key? key}) : super(key: key);

  @override
  State<Pagina3> createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
