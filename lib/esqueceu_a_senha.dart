import 'package:flutter/material.dart';
import 'package:megaponto/tela_de_login.dart';

class EsqueceuSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // será que compensa realmente o singlechildsr... e não algum outro?
        child: Container(
          width: double.maxFinite, 
          height: double.maxFinite,
          child: Stack(
            children: <Widget>[
              Image.asset("images/fundo_principal"),
              Positioned(
                top: 180,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                      topRight: Radius.circular(90)
                    )
                  ),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 50,
                        alignment: Alignment.topLeft,
                        child: FlatButton(
                          child: Text(
                            "< Voltar",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Home()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset("images/esqueceu_senha.png"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Esqueceu sua senha?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 28
                        ),
                      ),
                      Text(
                        "Por favor, informe o E-mail associado à sua conta que inviaremos um link para restauração de sua senha.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20,right: 20),
                        child: Material(
                          elevation: 5,
                          shadowColor: Colors.grey,
                          borderRadius: BorderRadius.circular(32),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: 'E-mail',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding:
                                EdgeInsets.fromLTRB(20, 10, 20, 10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32)),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Icon(
                                    Icons.email,
                                    color: Colors.grey,
                                  ),
                                )),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 80, left: 80),
                        child: Container(
                          height: 60,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius:
                              BorderRadius.all(Radius.circular(32))),
                          child: SizedBox.expand(
                            child: FlatButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Enviar",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        ),

      ),
    );
  }
}