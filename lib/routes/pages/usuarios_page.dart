import 'package:chat/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioPage extends StatefulWidget {
  const UsuarioPage({Key? key}) : super(key: key);

  @override
  State<UsuarioPage> createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  final usuarios = [
    Usuario(uid: '1', nombre: 'Maria', email: 'test@test.com', online: true),
    Usuario(uid: '2', nombre: 'Melisa', email: 'test@test.com', online: true),
    Usuario(
        uid: '3', nombre: 'Fernando', email: 'test@test.com', online: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.check_circle,
              color: Colors.blue,
            ),
          )
        ],
        title: Text(
          'Mi nombre',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.black87,
            )),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, i) => ListTile(
          title: Text(usuarios[i].nombre),
          leading: CircleAvatar(
            child: Text(usuarios[i].nombre.substring(0, 2)),
          ),
          trailing: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color:
                    usuarios[i].online ? Colors.lightGreen : Colors.redAccent,
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
        separatorBuilder: (_, i) => Divider(),
        itemCount: usuarios.length,
      ),
    );
  }
}
