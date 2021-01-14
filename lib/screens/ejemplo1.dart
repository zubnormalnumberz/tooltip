import 'package:flutter/material.dart';

class Ejemplo1Tab extends StatefulWidget {
  const Ejemplo1Tab({Key key}) : super(key: key);

  @override
  _Ejemplo1TabState createState() => _Ejemplo1TabState();
}

class _Ejemplo1TabState extends State<Ejemplo1Tab> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Usuario',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Row(
            children: [
              Flexible(
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña',
                  ),
                ),
              ),
              Tooltip(
                message: 'Mínimo 8 caracteres',
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.help),
                ),
              ),
            ],
          ),
        ),
        RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text('Login'),
          onPressed: () {
            FocusScope.of(context).requestFocus(new FocusNode());
            _showMyDialog();
          },
        )
      ],
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login correcto'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Los datos se han enviado correctamente'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
