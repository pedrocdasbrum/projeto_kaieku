import 'package:email_validator/email_validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_final_flutter/DAO/usersDAO.dart';
import 'package:projeto_final_flutter/models/user.dart';

class FormRegister extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/kaieku_logo.png",
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Kaieku",
                    style: GoogleFonts.roboto(),
                  ),
                ],
              ),
              Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    backgroundColor: Colors.red,
                  ),
                  labelText: "Nome",
                ),
                keyboardType: TextInputType.name,
                controller: nameController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    backgroundColor: Colors.red,
                  ),
                  labelText: "E-mail",
                ),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    backgroundColor: Colors.red,
                  ),
                  labelText: "Crie uma senha",
                ),
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
              ),
              //Validação de senha
              FlutterPwValidator(
                controller: passwordController,
                minLength: 6,
                uppercaseCharCount: 2,
                numericCharCount: 3,
                specialCharCount: 1,
                width: 400,
                height: 150,
                onSuccess: () {},
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  saveRegister(context);
                },
                child: Text(
                  "Cadastrar",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Entrar",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveRegister(BuildContext mainContext) async {
    String name = nameController.text;
    String email = emailController.text;
    String message;

    //Validação de e-mail
    if (!EmailValidator.validate(email)) {
      showDialog(
        context: mainContext,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red,
          title: Text(
            "Mensagem do Sistema!",
          ),
          content: Text(
            "Endereço de E-mail inválido!",
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "OK",
              ),
            ),
          ],
        ),
      );
    } else {
      User user = User(
        name: name,
        email: email,
      );
      int result = await UsersDAO.insertRecord("users", user.toMap());

      if (result != 0) {
        message = "Usuário $name cadastrado com êxito!";
      } else {
        message = "Usuário $name não pode ser cadastrado!";
      }

      showDialog(
        context: mainContext,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red,
          title: Text(
            "Mensagem do Sistema!",
          ),
          content: Text(
            message,
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "OK",
              ),
            ),
          ],
        ),
      );
    }
  }
}
