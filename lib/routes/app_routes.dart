import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/cadastro_screen.dart';
import '../screens/feed_screen.dart';
import '../screens/perfil_screen.dart';
import '../screens/editar_perfil_screen.dart';
import '../screens/postagem_screen.dart';

class AppRoutes {
  static const login = '/';
  static const cadastro = '/cadastro';
  static const feed = '/feed';
  static const perfil = '/perfil';
  static const editarPerfil = '/editar-perfil';
  static const postagem = '/postagem';

  static Map<String, WidgetBuilder> routes = {
    login: (_) => const LoginScreen(),
    cadastro: (_) => const CadastroScreen(),
    feed: (_) => const FeedScreen(),
    perfil: (_) => const PerfilScreen(),
    editarPerfil: (_) => const EditarPefilScreen(),
    postagem: (_) => const PostagemScreen(),
  };
}
