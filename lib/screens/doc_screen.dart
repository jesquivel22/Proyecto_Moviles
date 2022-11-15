import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DocScreen extends StatelessWidget {
  final options = const [
    "Carta de aceptación",
    "Requisitos",
    "Formulario",
    "Presentación",
    "Carta de aceptación",
    "Requisitos",
    "Formulario",
    "Presentación"
  ];
  const DocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Documentos"),
      ),
      body: ListView(
        children: [
          ...options
              .map((e) => Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.description_rounded,
                        color: AppTheme.primary,
                      ),
                      title: Text(e),
                      trailing: const Icon(Icons.download),
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
