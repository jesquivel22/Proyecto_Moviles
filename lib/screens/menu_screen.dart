import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAvatar(
            avatar: 'assets/perfil.jpg',
            name: "josefina Fina Atencia",
            codigo: "202011154",
            ciclo: "VI Ciclo",
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomBottonMenu(
                        icono: Icons.edit_note,
                        herotag: "btn1",
                        router: "/perfil"),
                    SizedBox(
                      width: 15,
                    ),
                    CustomBottonMenu(
                        icono: Icons.work_history_outlined,
                        herotag: "btn2",
                        router: "/reportes"),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomBottonMenu(
                        icono: Icons.description_rounded,
                        herotag: "btn3",
                        router: "/doc"),
                    SizedBox(
                      width: 15,
                    ),
                    CustomBottonMenu(
                        icono: Icons.timer_outlined,
                        herotag: "btn4",
                        router: "/reportes"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
