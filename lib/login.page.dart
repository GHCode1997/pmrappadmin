import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  Widget build(BuildContext context){
    return Scaffold( 
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: <Widget>[
            SizedBox(height: 60,),
            Image(image: AssetImage('assets/images/logo2.png'),alignment: Alignment.center,),
            SizedBox(width: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'RUN',
                hintText: 'Ingrese el run con puntos y guión'
              ),
              controller: _username,
              validator: (String value){
                if(value.length <9){
                  return 'No tiene el largo del run';
                }
                return '';
              },
              autovalidate: true,
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                hintText: 'Ingrese contraseña',
                icon:   Icon(Icons.visibility_off),
              ),
              obscureText: true,
              controller: _password,
            ),
            SizedBox(height: 10,),
            MaterialButton(
              color: Colors.blueAccent,
              child: Text('Entrar'),
              onPressed: (){
                
            })
          ],
        ),
      ),
    );
  }
}