import 'package:flutter/material.dart';
import 'esqueceu_a_senha.dart';
import 'package:megaponto/criar_conta.dart';
import 'package:megaponto/home_tela_inicio_tudo.dart';

main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( //Faz com que a tela possa ser rolada, porém acredito que não está da forma certa
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: <Widget>[
              Image.asset("images/fundo_principal.png"),
              Padding(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text("<MegaPonto/>", style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: "Futura"))
              ),
              Positioned(
                top: 180,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(90), topRight: Radius.circular(90))
                  ),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("images/logo_mega_simbolo.png"),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
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
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        elevation: 5,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(32),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Senha',
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(0),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                              )),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          child: Text(
                            "Esqueci minha senha",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        EsqueceuSenha()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50, left: 50),
                        child: Container(
                          height: 60,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32))),
                          child: SizedBox.expand(
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            TelaPrincipal()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Entrar",
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
                        height: 30,
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text(
                            "Criar uma conta",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        CriarConta()));
                          },
                        ),
                      )
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