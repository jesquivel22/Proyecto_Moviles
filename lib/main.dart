import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuScreen(),
        '/perfil': (context) => const PerfilScreen(),
        '/doc': (context) => const DocScreen(),
        '/reportes': (context) => const ReportesScreen(),
      },
      theme: AppTheme.lightTheme,
    );
  }
}
