import 'package:megaponto/tela_de_login.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset("images/fundo_principal.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 110,
              ),
              CategorySelector(),
              Expanded(
                child: Container(
                  //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  width: MediaQuery.of(context).size.width,
                  height: 430,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70))),
                  child: Column(
                    children: <Widget>[
                      Online(),
                      SizedBox(
                        height: 100,
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(70))
                          ),
                          child: Column(
                            children: <Widget>[
                              Info(),
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(70))
                                    ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Partiu entregar alguns projetos?!",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("Inicie seu Plantão!",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 80, left: 80),
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(32))),
                                          child: SizedBox.expand(
                                            child: FlatButton(
                                              onPressed: () {},
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Inciar",
                                                    style: TextStyle(
                                                        color: Colors.white, fontSize: 20),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}