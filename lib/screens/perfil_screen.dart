import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Rafa Silva',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text('@rafa'),

            const SizedBox(height: 10),

            const Text('Apaixonado por tecnologia 🌿'),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.editarPerfil);
              },
              child: const Text('Editar Perfil'),
            ),

            const SizedBox(height: 30),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Minhas Postagens',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                title: const Text('Meu primeiro post!'),
                trailing: const Icon(Icons.favorite_border),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Papacapim é top 🚀'),
                trailing: const Icon(Icons.favorite_border),
              ),
            ),
          ],
        ),
      ),
    );
  }
}