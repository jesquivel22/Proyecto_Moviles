import 'package:fl_components/size_config.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double defaultSize = SizeConfig.defaultSize;
    return Column(
      children: <Widget>[
        SizedBox(
          height: 300,
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: 200,
                  color: AppTheme.primary,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/perfil.jpg"))),
                    ),
                    Text(
                      "Josefina Villalva",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("jose.villava@upeu.edu.pe",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8492A2),
                          fontSize: 15,
                        ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }
}
