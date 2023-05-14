import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
      ),
      body: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.cyan,
                width: constraints.maxWidth * .75,
                height: constraints.maxHeight * .5,
              ),
              Container(
                color: Colors.grey,
                width: constraints.maxWidth,
                height: constraints.maxHeight * .5,
              ),
            ],
          );
        }),
      ),
    );
  }
}
