import 'package:flutter/material.dart';


class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          // Aquí puedes agregar la lógica para enviar el mensaje
          print('Valor caja de texto  ');
        },
      ),
      hintText: 'Escribe un mensaje',
    );
    
    return TextFormField(
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          // Aquí puedes agregar la lógica para enviar el mensaje
          print('Submitted value: $value');
        },
        onChanged: (value) {
          // Aquí puedes agregar la lógica para manejar el cambio de texto
          print('Changed value: $value');
        },
      );
  }
}