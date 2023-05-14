import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    debugPrint('Largura ${mediaQuery.size.width}');
    debugPrint('Altura ${mediaQuery.size.height}');
    debugPrint('Orientação ${mediaQuery.orientation}');
    debugPrint('Padding TOP ${mediaQuery.padding.top}');
    debugPrint('Tamanho AppBarDefault $kToolbarHeight');

    var appBar = AppBar(
      title: const Text('MediaQuery'),
    );

    const statusBar = kToolbarHeight;
    final heightBody = mediaQuery.size.height - statusBar;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.cyan,
                width: mediaQuery.size.width * .5,
                height: heightBody * .5,
              ),
              Container(
                color: Colors.grey,
                width: mediaQuery.size.width,
                height: heightBody * .5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
