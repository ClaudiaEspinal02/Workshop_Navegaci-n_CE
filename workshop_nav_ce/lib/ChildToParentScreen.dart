import 'package:flutter/material.dart'; // Import necesario para usar los widgets de Flutter.

class ChildToParentScreen extends StatefulWidget {
  @override
  _ChildToParentScreenState createState() => _ChildToParentScreenState();
}

class _ChildToParentScreenState extends State<ChildToParentScreen> {
  String dataFromChild =
      ''; // Variable para almacenar datos recibidos del widget hijo.

  // Función para actualizar el estado con los datos del widget hijo.
  void updateData(String data) {
    setState(() {
      dataFromChild = data; // Corregido: faltaba el cierre de paréntesis.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Child to Parent'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Data from Child: $dataFromChild'),
          ChildWidget(
              onDataChanged:
                  updateData), // Pasamos la función de actualización al widget hijo.
        ],
      ),
    );
  }
}

// Clase del widget hijo, que recibirá una función desde el widget padre.
class ChildWidget extends StatelessWidget {
  final Function(String) onDataChanged;

  ChildWidget({required this.onDataChanged});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Send Data to Parent'),
      onPressed: () {
        onDataChanged(
            'Hello from Child!'); // Cuando se presiona el botón, enviamos datos al widget padre.
      },
    );
  }
}
