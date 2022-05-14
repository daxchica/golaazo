import 'package:flutter/material.dart';

class BetGuidePage extends StatelessWidget {
  const BetGuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guía de Apuestas'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Sobre el Campeonato Nacional',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'El Campeonato Nacional es el máximo nivel de fútbol profesional en Ecuador y usted puede encontrar las probabilidades de apostar en la Liga Pro en nuestro portal. \nLa Categoría Primera "A" de Ecuador fue fundada en 1957 y solo ocho equipos han logrado campeonar en la historia de la Liga y cuatro equipos combinados han logrado el 45% de esos campeonatos. \nBarcelona y El Nacional son los 2 equipos mas exitosos de la Categoría "A" de Clubes y los 2 siempre empiezan las temporadas como los favoritos ofreciendo gran valor de probabilidades. Deportivo Quito vs LDU de Quito no solamente mantienen una gran rivalidad en la Liga sino que también son muy populares en su oferta de probabilidades en los juegos de la Categoría "A" y su tabla de comparaciones. \nExiste un nuevo formato de la Liga en la cual los equipos se enfrentan entre todos y los ganadores de cada etapa se enfrentan entre si por la final. El Campeón de la Primera División califica para la Copa Libertadores.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
