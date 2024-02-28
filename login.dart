import 'package:flutter/material.dart';
import 'package:login/components/my_button.dart';
import 'package:login/components/my_textfield.dart';
import 'package:login/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text controllers
  final usernameControler = TextEditingController();
  final passwordController = TextEditingController();
  void userSignIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              //icone de fechadura
              Image.network('https://cdn2.iconfinder.com/data/icons/general-ui-outlined/16/profile-256.png',
              height: 70),
              const SizedBox(height: 50),
              //texto oi princeso
              Text(
                'Seja bem-vindo!',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              //nome
              MyTextField(controller: usernameControler,obscureText: false,hintText: 'Login',),//username
              const SizedBox(height: 25),
              //senha
              MyTextField(controller: passwordController,obscureText: true,hintText: 'password',),//password
              const SizedBox(height: 10),
              //esqueceu a senha?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Esqueceu a senha?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              MyButton(
                onTap: userSignIn),
              const SizedBox(height: 10),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color:  Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                        'Ou continue com',
                          style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ))
                  ],
                ),
              ),
              //google e apple
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png'),
                  SizedBox(width:10),
                  SquareTile(imagePath: 'https://cdn3.iconfinder.com/data/icons/picons-social/57/16-apple-512.png')
                ],
              ),
              const SizedBox(height: 50),
              const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 4),
                Text('Registre-se', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}
