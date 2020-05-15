import 'package:flutter/material.dart';
import 'package:megaponto/tela_de_login.dart';

class CriarConta extends StatefulWidget {
  @override
  _CriarContaState createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {

  // esta tela está sujeita a alterações e melhorias no seu design

  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset("images/fundo_principal.png",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(90),
                              topRight: Radius.circular(90))),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 15, right: 15),
                            child: Container(
                              height: 50,
                              alignment: Alignment.topRight,
                              child: FlatButton(
                                child: Text(
                                  "Voltar >",
                                  textAlign: TextAlign.right,
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
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("images/logo_mega_simbolo.png"),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Material(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(32),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: 'Nome',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32)),
                                ),
                                style: TextStyle(fontSize: 15),
                              ),
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
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: 'Sobrenome',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32)),
                                ),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),Padding(
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
                                ),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),Padding(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Material(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(32),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  hintText: 'Senha',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32)),
                                ),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),Padding(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Material(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(32),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  hintText: 'Confirmar Senha',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32)),
                                ),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),Padding(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Material(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(32),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: 'Apelido',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(32)),
                                ),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 38,right: 20),
                            child: Text(
                              "Sitema Operacional:",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25,right: 20),
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: group,
                                  activeColor: Colors.black,
                                  onChanged: (T){
                                    print(T);
                                    setState(() {
                                      group = T;
                                    });
                                  },
                                ),
                                Text("IOS", style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                Radio(
                                  value: 2,
                                  groupValue: group,
                                  activeColor: Colors.black,
                                  onChanged: (T){
                                    print(T);
                                    setState(() {
                                      group = T;
                                    });
                                  },
                                ),
                                Text("Android",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
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
                                        "Criar",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}