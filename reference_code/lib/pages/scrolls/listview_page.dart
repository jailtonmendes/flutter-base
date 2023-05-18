import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: 50,
        itemBuilder: (context, index) {
          debugPrint('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            leading: const CircleAvatar(),
            trailing: SizedBox(
              width: 80,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.of(context).pushNamed('/scrolls/single_child');
                    //   },
                    //   child: const Icon(Icons.north_east_outlined, size: 30),
                    // ),
                    Column(
                      children: const [
                        Text('Nota'),
                        Text('9.0'),
                        Icon(Icons.star_border_outlined)
                      ],
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.of(context).pushNamed('/');
                    //   },
                    //   child: const Icon(Icons.local_activity, size: 30),
                    // ),
                  ]),
            ),
            subtitle: const Text('Flutter é Top'),
            // onTap: () {
            //   Navigator.of(context).pushNamed('/scrolls/single_child');
            // },
          );
        },
      ),
    );
  }
}
