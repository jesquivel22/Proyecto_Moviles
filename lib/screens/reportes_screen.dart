import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/custom_grafico.dart';
import 'package:flutter/material.dart';

class ReportesScreen extends StatelessWidget {
  const ReportesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reportes"),
      ),
      body: SingleChildScrollView(
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
      ),
    );
  }
}
