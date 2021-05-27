import 'package:flutter/material.dart';

void main() => runApp(SusiApp());

class SusiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pagina del sams',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),// fin del theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),// fin del dark theme
      home: IngresoSistema(),
    ); //fin materialpp
  } // fin de widget
} //fin susiapp
class Entrar extends StatefulWidget {
  @override
  _EntrarState createState() => _EntrarState();
} //fin entrar

class _EntrarState extends State<Entrar> {
  bool acceso = false;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),// fin de icon
          onPressed: () {
            print('Menu button');
          },// fin de onpressed
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),// fin de icon
            onPressed: () {
              print('Search button');
            },// fin del onpressed
          ),// fin de appbar
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),// fin de icon
            onPressed: () {
              print('Filter button');
            },// fin de on pressed
          ),
        ], //fin de widget
        title: Text('Susanita en el sams'),
      ), //fin de app bar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/im4.jpg'),
                SizedBox(height: 16.0),
              ], //fin del <widget>
            ), //fin de column
            if (!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Nombre de usuario',
                    ),// fin decoration
                  ),// fin de textfield
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Contraseña',
                    ),// fin decoration
                    obscureText: true,
                  ),// fin textfield
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('CANCELAR'),
                          onPressed: () {
                            setState(() {
                              acceso = false;
                            });// fin setstate
                          },// fin onpressed
                        ), //fin de flatbutton
                        RaisedButton(
                          child: Text(
                            'siguiente',
                          ),// fin raised
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          },
                        ), //fin del raised
                      ], //fin de <widget>
                    ),// fin de row
                  ) //fin de pading
                ], //fin de widget child
              ) //fin de column
            else
              Center(
                child: Column(
                  children: <Widget>[
                    Text('registro exitoso'),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('CERRAR SESION'),
                      onPressed: () {
                        setState(() {
                          acceso = false;
                        });
                      },
                    )
                  ],
                ),
              )//fin widget
          ], //fin children widget
        ), //fin list view
      ), //fin safe area
    ); //fin de scaffold
  } //fin de widget
} //fin susi app
