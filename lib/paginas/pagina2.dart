import 'package:flutter/material.dart';
import '../services/constants.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Material Banner'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 75,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                ScaffoldMessenger.of(context)
                  ..removeCurrentMaterialBanner()
                  ..showMaterialBanner(
                      materialBanner(context, 'Passing banner message'));
              },
              child: const Text('Mostrar'),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              },
              child: const Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }
}

MaterialBanner materialBanner(BuildContext context, String message) {
  return MaterialBanner(
    backgroundColor: Colors.yellowAccent,
    leading: const Icon(
      Icons.person,
      color: Colors.black,
    ),
    content: Text(
      message,
      style: const TextStyle(color: Colors.black),
    ),
    actions: <Widget>[
      TextButton(
        child: const Text(
          'MORE INFO',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {},
      ),
      TextButton(
        child: const Text(
          'DISMISS',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
        },
      ),
    ],
  );
}
