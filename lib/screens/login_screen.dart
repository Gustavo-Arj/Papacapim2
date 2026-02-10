import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return: Scaffold(
      body: Padding(
        padding: const
EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        const TextField(decoration: InputDecoration(labelText: 'Email')),
        const TextField(
          decoration: InputDecoration(labelText: 'Senha'),
          obscureText: true,
        ),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: (){
          Navigator.pushReplacementNamed(context, AppRoutes.feed);
        },
        child: const Text('Entrar'),
        ),
        TextButton(onPressed: (){
Navigator.pushNamed(context, AppRoutes.cadastro);
        },
        child: const Text('Criar conta'),
        )
      ],
      ),
    ),
    );
  }
}
