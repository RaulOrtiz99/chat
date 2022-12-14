import 'package:chat/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsuarioPage extends StatefulWidget {
  const UsuarioPage({Key? key}) : super(key: key);

  @override
  State<UsuarioPage> createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  RefreshController _refreshController = RefreshController(
    initialRefresh: false,
  );

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
        body: SmartRefresher(
          controller: _refreshController,
          enablePullDown: true,
          onRefresh: _cargarUsuarios(),
          header: WaterDropHeader(
            complete: Icon(
              Icons.check,
              color: Colors.blue[400],
            ),
            waterDropColor: Colors.blue,
          ),
          child: _listViewUsuarios(),
        ));
  }

  ListView _listViewUsuarios() {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (_, i) => _usuarioListTile(usuarios[i]),
      separatorBuilder: (_, i) => Divider(),
      itemCount: usuarios.length,
    );
  }

  ListTile _usuarioListTile(Usuario usuario) {
    return ListTile(
      title: Text(usuario.nombre),
      subtitle: Text(usuario.email),
      leading: CircleAvatar(
        child: Text(
          usuario.nombre.substring(0, 2),
        ),
        backgroundColor: Colors.blue[200],
      ),
      trailing: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: usuario.online ? Colors.lightGreen : Colors.redAccent,
            borderRadius: BorderRadius.circular(100)),
      ),
    );
  }

  _cargarUsuarios() {}

  // _cargarUsuarios() async {
  //   await Future.delayed(Duration(milliseconds: 1000));
  //   _refreshController.refreshCompleted();
  // }
}
