import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class DialogAwesomePage extends StatefulWidget {
  const DialogAwesomePage({Key? key}) : super(key: key);

  @override
  State<DialogAwesomePage> createState() => _DialogAwesomePageState();
}

class _DialogAwesomePageState extends State<DialogAwesomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Awesome'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              AnimatedButton(
                text: 'Warning Dialog',
                color: Colors.orange,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: 'Warning',
                    desc: 'This is tje description of the awesome dialog box',
                    //Ações dos botões
                    // btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
              ),
              const SizedBox(height: 16),
              AnimatedButton(
                text: 'Erro Dialog',
                color: Colors.red,
                pressEvent: () {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.topSlide,
                          showCloseIcon: true,
                          title: 'Error',
                          desc:
                              'This is tje description of the awesome dialog box',
                          //Ações dos botões
                          btnOkOnPress: () {},
                          btnOkIcon: Icons.cancel,
                          btnOkColor: Colors.red)
                      .show();
                },
              ),
              const SizedBox(height: 16),
              AnimatedButton(
                text: 'Question Dialog',
                color: Colors.amber,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.question,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: 'Question',
                    desc: 'This is tje description of the awesome dialog box',
                    //Ações dos botões
                    // btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
              ),
              const SizedBox(height: 16),
              AnimatedButton(
                text: 'Success Dialog',
                color: Colors.green,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: 'Success',
                    desc: 'This is tje description of the awesome dialog box',
                    //Ações dos botões
                    // btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
