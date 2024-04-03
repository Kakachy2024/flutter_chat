import 'package:flutter/material.dart';

class HerMessageBuble extends StatelessWidget {
  const HerMessageBuble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              //asignando color al boxdecoration
              color: colors.secondary,
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            //asignando estilo al padding
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'mensaje de her',
              //asignando estilo a las letras
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        //agregando espacio entre la imagen y el texto
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //saber el tamano del dispositivo
    //final size = MediaQuery.of(context).size;
    //envolviendo la imagen en un nuevo widget Cliprrect que nos permite editar
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        "https://yesno.wtf/assets/no/21-05540164de4e3229609f106e468fa8e7.gif",
        width: 250,
        height: 150,
        //ajustando la caja de la imagen
        fit: BoxFit.cover,
        //colocar algo mientas la imagen se carga
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Cargado la imagen "\u23F3" ...'),
          );
        },
      ),
    );
  }
}
