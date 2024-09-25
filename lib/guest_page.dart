import 'package:flutter/material.dart';

class GuestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estrada Encomiendas'),
        backgroundColor: Colors.yellow[700], // Color dorado
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow[700],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Invitado',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    'Regístrate para más funciones',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Destinos'),
              onTap: () {
                // Navegar a la página de destinos
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Cotizar Envío'),
              onTap: () {
                // Navegar a la página de cotizar
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contáctanos'),
              onTap: () {
                // Navegar a la página de contacto
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Imagen de fondo cargada desde una URL
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://estradaencomiendas.netlify.app/Catedral_Santa_Ana.jpg'), // Imagen de la catedral desde Netlify
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay para oscurecer la imagen de fondo
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Contenido del overlay
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo cargado desde una URL
                Image.network(
                  'https://estradaencomiendas.netlify.app/Logo.png', // Logo desde Netlify
                  width: 120,
                ),
                SizedBox(height: 20),
                Text(
                  'Hola, Invitado',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontFamily: 'Acumin Variable Concept',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Rastree su envío de Estrada Encomiendas',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Acumin Variable Concept',
                  ),
                ),
                SizedBox(height: 20),
                // Input para el número de seguimiento
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Número de Seguimiento',
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.yellow),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Botón para buscar el paquete
                ElevatedButton.icon(
                  onPressed: () {
                    // Funcionalidad de búsqueda
                  },
                  icon: Icon(Icons.search),
                  label: Text('Buscar Paquete'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Color del botón
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
