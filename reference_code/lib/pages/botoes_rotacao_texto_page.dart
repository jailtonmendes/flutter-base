import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ROTACIONANDO TEXTO
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.lime,
                    child: const Text(
                      'Jailton Mendes',
                      style: TextStyle(fontSize: 20, color: Colors.indigo),
                    ),
                  ),
                ),
                const Icon(Icons.ac_unit),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                padding: const EdgeInsets.all(40),
                minimumSize: const Size(50, 10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
              child: const Text('Salvar'),
            ),

            //ICONBUTTON
            IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.blueGrey,
                minimumSize: const Size(120, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
              child: const Text('Salvar'),
            ),
            const SizedBox(height: 20),

            //ELEVATEDBUTTON ICON
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_time_rounded),
              label: const Text('Timer'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.blueGrey,
                minimumSize: const Size(120, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            //ELEVATEDBUTTON
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.amber),
                minimumSize: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const Size(150, 150);
                  } else if (states.contains(MaterialState.hovered)) {
                    return const Size(180, 150);
                  }
                  return null;
                }),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.scrolledUnder)) {
                      return Colors.amber;
                    }
                    return Colors.green;
                  },
                ),
              ),
              child: const Text('Acessar'),
            ),
            const SizedBox(height: 20),

            //INKWELL
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),
            GestureDetector(
              child: const Text('Gesture detector'),
              onTap: () => debugPrint('Gesture clicado'),
              onVerticalDragStart: (_) => debugPrint('Gesture movimentado'),
            ),
            const SizedBox(height: 20),

            //Botão CUSTOMIZADO!!!
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.black,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      color: Colors.red,
                    )
                  ]),
              child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    debugPrint('Salvando...');
                  },
                  child: const Center(
                      child: Text(
                    'Botão Salvar',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
