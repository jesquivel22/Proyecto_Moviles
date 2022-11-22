import 'package:fl_components/widgets/custom_info.dart';
import 'package:flutter/material.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double defaultSize = SizeConfig.defaultSize;
    return Column(
      children: const <Widget>[
        info(
          name: "Alexis maatilda Rosavel",
          email: "Alexis_maatilda@upeu.edu.pe",
          image: "assets/perfil.jpg",
        ),
        SizedBox(
          height: 30,
        ),
        ProfileMenuItem(
          icono: Icons.settings,
          router: "",
          title: "Configuración",
        ),
        ProfileMenuItem(
          icono: Icons.report,
          router: "",
          title: "Reportar algún problema",
        ),
        ProfileMenuItem(
          icono: Icons.dark_mode,
          router: "",
          title: "Tema Oscuro",
        ),
        ProfileMenuItem(
          icono: Icons.legend_toggle_sharp,
          router: "",
          title: "licencias",
        )
      ],
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
    required this.icono,
    required this.title,
    required this.router,
  }) : super(key: key);
  final IconData icono;
  final String title;
  final String router;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "$router");
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
        child: Row(
          children: <Widget>[
            Icon(
              icono,
              size: 20,
              color: Colors.grey[600],
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 17, color: Colors.grey[600]),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.grey[600],
            )
          ],
        ),
      ),
    );
  }
}
