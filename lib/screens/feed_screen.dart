import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../routes/app_routes.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Papacapim'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.perfil);
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.postagem);
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: const [
          PostCard(usuario: 'rafa', texto: 'Meu primeiro post!'),
          PostCard(usuario: 'ana', texto: 'Olá Papacapim 🌿'),
        ],
      ),
    );
  }
}