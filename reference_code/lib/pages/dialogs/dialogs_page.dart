import 'package:flutter/material.dart';
import 'package:reference_code/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return DialogCustom(context);
                  },
                );
              },
              child: const Text('Dialog'),
            ),

            // SimpleDialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Simple Dialog'),
                      contentPadding: const EdgeInsets.all(10),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('TituloX'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Fechar Dialog'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Simple Dialog'),
            ),

            // Alert Dialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Alert Dialog'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: const [
                            Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Deseja realmente salvar???')),
                          ],
                        ),
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text('Cancelar')),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Confirmar'))
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Alert Dialog'),
            ),

            // ShowTimerPicker - Selecionar horário
            ElevatedButton(
              onPressed: () async {
                final selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                debugPrint('Horário selecionado: $selectedTime');
              },
              child: const Text('Time Picker'),
            ),

            // ShowDatePicker - Selecionar Data
            ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );

                  debugPrint('Data selecionada: $selectedDate');
                },
                child: const Text('Date Picker')),
          ],
        ),
      ),
    );
  }
}
