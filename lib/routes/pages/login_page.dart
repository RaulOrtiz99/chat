import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:flutter/material.dart';

import '../../widgets/labels.dart';
import '../../widgets/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Logo(),
              _Form(),
              Labels(),
              Text(
                "Terminos y condiciones de uso",
                style: TextStyle(),
              )
            ],
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  const _Form({super.key});

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            CustomInput(
              icon: Icons.mail_outline_outlined,
              placeHolder: 'Correo',
              keyboardType: TextInputType.emailAddress,
              textController: emailCtrl,
            ),
            CustomInput(
              icon: Icons.mail_outline_outlined,
              placeHolder: 'Contraseña',
              keyboardType: TextInputType.emailAddress,
              textController: passCtrl,
              isPassword: true,
            ),
            BotonAzul(
              text: 'Ingrese',
              onPressed: () {
                print(emailCtrl.text);
                print(passCtrl.text);
              },
            )
          ],
        ),
      
    );
  }
}
