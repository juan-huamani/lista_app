import 'package:flutter/material.dart';
import 'package:flutter_application_2/util/my_button.dart';

class DialogBox extends StatelessWidget {
  //const DialogBox({super.key});
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.cyan,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Agregar una Nueva Tarea"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Guardar", onPressed: onSave),
                const SizedBox(width: 8),
                MyButton(text: "Cancelar", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
