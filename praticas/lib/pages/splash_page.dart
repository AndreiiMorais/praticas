import 'package:flutter/material.dart';
import 'package:praticas/services/prefs_services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.wait([
      PrefsServices.isAuth(),
      Future.delayed(const Duration(seconds: 2))
    ]).then((value) => value[0]
        ? Navigator.of(context).pushReplacementNamed('/home')
        : Navigator.of(context).pushReplacementNamed('/login'));

    // Future.delayed(Duration(seconds: 3)).then(
    //   (_) => Navigator.of(context).pushReplacementNamed('/login'),
    //   //aqui poderia chamar alguma api de execuçao antes do app iniciar.
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade600,
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white60,
        ),
      ),
    );
  }
}
