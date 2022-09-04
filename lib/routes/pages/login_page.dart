import 'package:flutter/material.dart';

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
              _Logo(),
              _Form(),
              _Labels(),
              Text(
                "Terminos y condiciones de uso",
                style: TextStyle(),
              )
            ],
          ),
        ));
  }
}

class _Logo extends StatelessWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/tag-logo.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Messenger",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({super.key});

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          TextField(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset(0, 5),
                    blurRadius: 5)
              ],
              color: Colors.white,
            ),
            child: TextField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              // obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text('pressed'),
          // ),
        ],
      ),
    );
  }
}

class _Labels extends StatelessWidget {
  const _Labels({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "No tienes cuenta?",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Crea una ahora",
          style: TextStyle(
            color: Colors.blue[600],
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
