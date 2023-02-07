import 'package:barbershop/service/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BarberShop());
}

class BarberShop extends StatelessWidget {
  const BarberShop({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barber Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const SplashScreen(),
      initialRoute: RouteManager.splash,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
