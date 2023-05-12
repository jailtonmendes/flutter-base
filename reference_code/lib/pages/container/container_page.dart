import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration:  BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const[
              BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                offset: Offset(10, 10) //Posição da sombra no eixo X e Y

              ),
              BoxShadow(
                color: Colors.green,
                blurRadius: 20,
                offset: Offset(-10, -10) //Posição da sombra no eixo X e Y
              )
            ]
          ),
          
        ),
      ),
    );
  }
}