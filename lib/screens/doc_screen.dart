import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DocScreen extends StatefulWidget {
  const DocScreen({Key? key}) : super(key: key);

  @override
  State<DocScreen> createState() => _DocScreenState();
}

class _DocScreenState extends State<DocScreen> {
  int _paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.primary,
          title: const Text("Reportes"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _paginaActual = index;
              });
            },
            currentIndex: _paginaActual,
            selectedItemColor: AppTheme.primary,
            selectedFontSize: 15,
            unselectedFontSize: 13,
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: 'Documentos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.upload_file),
                label: 'Importar',
              ),
            ]),
        body: _paginaActual == 0 ? DocDescargar() : DocImportar()
        // graficos(context),
        );
  }
}

class DocImportar extends StatelessWidget {
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
  const DocImportar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Row(children: <Widget>[
          //   ElevatedButton(onPressed: () {}, child: Text("Importar Documento")),
          //   Icon(Icons.upload)
          // ])
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(color: AppTheme.primary),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppTheme.primary)),
                onPressed: () {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Importar Documento",
                        style: TextStyle(fontSize: 17),
                      ),
                      Icon(Icons.upload)
                    ])),
          ),
          ...options
              .map((e) => Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.description_rounded,
                        color: AppTheme.primary,
                      ),
                      title: Text(e),
                      trailing: const Icon(Icons.remove_red_eye_outlined),
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}

class DocDescargar extends StatelessWidget {
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
  const DocDescargar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
