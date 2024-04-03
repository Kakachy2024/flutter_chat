import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    //definiendo variable para el focus
    final focusNode = FocusNode();
    //definiendo variable para editar el texto
    final textEdittingControll = TextEditingController();
    //definiendo colores personalizados
    //final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    //creando variable de decoracion
    final inputdecoration = InputDecoration(
        //agregando texto de pordefecto
        hintText: 'Estas seguro ?',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        //creando el boton del chat
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          //provocando el evento del mensaje
          onPressed: () {
            final textValue = textEdittingControll.value.text;
            print('button:$textValue');
            textEdittingControll.clear();
          },
        ));

    return TextFormField(
      //asignando arreglos al teclado
      onTapOutside: (event) {
        //desaparesca o aparesca el teclado
        focusNode.unfocus();
      },
      //asignando el foco
      focusNode: focusNode,
      //utilizando la variable del editor de texto
      controller: textEdittingControll,
      //decorando el formulario de texto
      decoration: inputdecoration,
      //obteniendo la informacion del mensaje
      onFieldSubmitted: (value) {
        print("valor del onFieldSubmit: $value");
        //borrando lo que se escribio
        textEdittingControll.clear();
        focusNode.requestFocus();
      },
      //obteniendo el valor de cada tecla
      //onChanged: (value) {
      //print('valor de cada tecla onChanged: $value');
      //},
    );
  }
}
