// ignore_for_file: no_logic_in_create_state, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation Activity',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VistaA(), // Pantalla inicial
    );
  }
}
// Vista A
class VistaA extends StatefulWidget {
  const VistaA({super.key});

  @override
  _VistaAState createState() => _VistaAState();
}

class _VistaAState extends State<VistaA> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //TITULO
          const Text(
            '¡Bienvenido a la Vista A!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          //CAJA
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 400),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinea los textos a la izquierda
                  children: [
                    Text('Mirador de Montepinar', style: TextStyle(fontSize: 16)),
                    Text('C/Ave del Paraíso 7, Madrid, España', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              Icon(Icons.star, size: 40, color: Colors.yellow), // Icono
              SizedBox(height: 20, width: 20),
              Text(
                '47',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)
              ),
              SizedBox(height: 20, width: 500),
            ],),
          //BOTON
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VistaB()),
              );
            },
            child: const Text('Ir a la Segunda Pantalla'),
          ),
        ])
      ),
    );
  }
}

// Vista B
class VistaB extends StatefulWidget {
  const VistaB({super.key});

  @override
  _VistaBState createState() => _VistaBState();
}

class _VistaBState extends State<VistaB> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                      'https://as01.epimg.net/epik/imagenes/2020/06/28/portada/1593345651_114487_1593345905_noticia_normal_recorte1.jpg', // Imagen desde URL
                  height: 350,
                  width: 350,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 50, width: 200,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 200.0),
                  decoration: BoxDecoration(
                    color: Colors.white, // Color de fondo (opcional)
                    border: Border.all(
                      color: Colors.black, // Color del borde
                      width: 1.0,         // Ancho del borde
                    ),
                  ),
                  child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 50, width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Alinea los textos a la izquierda
                        children: [
                          Text('Mirador de Montepinar', style: TextStyle(fontSize: 28)),
                          Text('C/Ave del Paraíso 7, Madrid, España', style: TextStyle(fontSize: 24)),
                        ],
                      ),
                    ),
                    Icon(Icons.star, size: 45, color: Colors.yellow), // Icono
                    SizedBox(height: 20, width: 20),
                    Text(
                      '47',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal)
                    ),
                    SizedBox(height: 20, width: 70),
                  ],),
                ),
                const SizedBox(height: 50, width: 100),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.phone, size: 40, color: Colors.yellow),
                        Text(
                          'CALL'
                        )
                    ],),
                    Column(
                      children: [
                        Icon(Icons.room_outlined, size: 40, color: Colors.yellow),
                        Text(
                          'LOCATION'
                        )
                    ],),
                    Column(
                      children: [
                        Icon(Icons.share, size: 40, color: Colors.yellow),
                        Text(
                          'SHARE'
                        )
                    ],)
                  ]
                ),
                const SizedBox(height: 50, width: 20),
                const Padding(
                padding: EdgeInsets.symmetric(horizontal: 200.0), // Espaciado horizontal (izquierda y derecha)
                  child: Text(
                    'Descubre la Urbanización Mirador de Montepinar\n\n'
                    'Mirador de Montepinar es una urbanización de alto standing y primeras calidades, ideal para quienes buscan combinar comodidad, ocio y un entorno vecinal vibrante. '
                    'Este residencial cuenta con una piscina comunitaria rodeada de un amplio solárium, perfecto para disfrutar del buen tiempo y relajarse en un ambiente tranquilo.\n'
                    'En el corazón de la urbanización se encuentra un encantador bar-restaurante "Max&Henry", conocido por ser el punto de encuentro de los Leones de Montepinar. '
                    'Aquí se respira un ambiente familiar y social, ideal para quienes valoran la convivencia y el sentido de comunidad.\n'
                    'El complejo también dispone de instalaciones deportivas y zonas comunes donde los residentes pueden disfrutar de actividades al aire libre o simplemente pasear. '
                    'Además, la urbanización está diseñada pensando en la seguridad y tranquilidad de sus habitantes, contando con una garita de control en la entrada.\n'
                    'Ubicado estratégicamente, Mirador de Montepinar combina la cercanía a servicios esenciales como supermercados, colegios y transporte público, con la tranquilidad de un entorno residencial en la periferia de la ciudad de Madrid. '
                    'Es el lugar ideal para quienes buscan un estilo de vida relajado sin renunciar a la comodidad y las conexiones urbanas.\n'
                    'Mirador de Montepinar no es solo una urbanización, es un lugar donde la vida cotidiana se vive con estilo y una pizca de diversión.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.justify, // Opcional: Para justificar el texto
                  ),
                ),
                const SizedBox(height: 20, width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Regresar a la Pantalla Anterior'),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
