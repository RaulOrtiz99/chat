import 'package:chat/routes/pages/chat_page.dart';
import 'package:chat/routes/pages/loading_page.dart';
import 'package:chat/routes/pages/login_page.dart';
import 'package:chat/routes/pages/register_page.dart';
import 'package:chat/routes/pages/usuarios_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext context)> appRoutes = {
  'usuarios': (_) => UsuarioPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};
