import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/custom_grafico.dart';
import 'package:flutter/material.dart';

class ReportesScreen extends StatefulWidget {
  const ReportesScreen({Key? key}) : super(key: key);

  @override
  State<ReportesScreen> createState() => _ReportesScreenState();
}

class _ReportesScreenState extends State<ReportesScreen> {
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
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.auto_graph_sharp),
                label: 'Graficos',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  children: <Widget>[
                    Icon(Icons.list_alt_outlined),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      // child: Icon(
                      //   Icons.brightness_1,
                      //   size: 8,
                      //   color: AppTheme.primary,
                      // ),
                      child: Container(
                        child: Text(
                          "6",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                        alignment: Alignment.center,
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: AppTheme.primary, //blue
                            shape: BoxShape.circle),
                      ),
                    )
                  ],
                ),
                label: 'historial',
              ),
            ]),
        body: _paginaActual == 0 ? graficos(context) : Historial()
        // graficos(context),
        );
  }

  SingleChildScrollView graficos(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              color: AppTheme.primary, //blue
              borderRadius: BorderRadius.circular(45),
            ),
            child: buildChart(context, "horas realizadas", 220, Colors.orange,
                "horas faltantes", 180, Colors.indigo, "Horas Comunitarias"),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              color: AppTheme.primary, //blue
              borderRadius: BorderRadius.circular(45),
            ),
            child: buildChart(context, "hora realizadas", 50, Colors.green,
                "horas faltantes", 350, Colors.pink, "Horas Practicas"),
          ),
        ],
      ),
    );
  }
}

class Historial extends StatelessWidget {
  const Historial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("HISTORIAL DE REPORTES DE REPORTES"),
    );
  }
}
