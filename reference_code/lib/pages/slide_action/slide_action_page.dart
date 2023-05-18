import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideActionPage extends StatefulWidget {
  const SlideActionPage({Key? key}) : super(key: key);

  @override
  State<SlideActionPage> createState() => _SlideActionPageState();
}

class _SlideActionPageState extends State<SlideActionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SlideAction(
            borderRadius: 12,
            elevation: 0,
            innerColor: Colors.deepPurple,
            outerColor: Colors.deepPurple[200],
            sliderButtonIcon: const Icon(
              Icons.lock_open,
              color: Colors.white,
            ),
            text: 'Desbloquear',
            textStyle: const TextStyle(color: Colors.white, fontSize: 24),
            sliderRotate: false,
            onSubmit: () {
              debugPrint('Deslizando...');
              Navigator.of(context).pushNamed('/');
            },
          ),
        ),
      ),
    );
  }
}
