import 'package:flutter/material.dart';

class MyMessageBuble extends StatelessWidget {
  const MyMessageBuble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            //asignando color al boxdecoration
            color: colors.primary,
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          //asignando estilo al padding
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'desde mymessagebuble',
            //asignando estilo a las letras
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      )
    ]);
  }
}
