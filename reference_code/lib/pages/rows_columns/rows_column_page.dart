import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column'),
      ),
      body: Container(
        color: Colors.amber,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
              child: const Text('Elemento 1'),
            ),
            Container(
              color: Colors.red,
              child: const Text('Elemento 1'),
            ),
            Container(
              color: Colors.green,
              child: const Text('Elemento 1'),
            ),
            Container(
              height: 200,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.white,
                    child: const Text('Elemento 1'),
                  ),
                  Container(
                    color: Colors.cyan,
                    child: const Text('Elemento 1'),
                  ),
                  Container(
                    color: Colors.brown,
                    child: const Text('Elemento 1'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
