import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: CustomBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppTheme.primary,
      leading: SizedBox(),
      centerTitle: true,
      title: Text("Profile"),
      actions: <Widget>[
        FloatingActionButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
