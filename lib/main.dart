import 'package:flutter/material.dart';

void main() => runApp(MyloginApp());

class MyloginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'web master',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //fin app
  } // fin de de widget
} //fin de login

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} //fin ingreso al sistema

class _IngresoSistemaState extends State<IngresoSistema> {
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
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //accion widget
        title: Text('Susanita en el sams'),
      ), //app bar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/im4.jpg'),
                SizedBox(height: 16.0),
              ], //children<wi>
            ), //final colum
            if (!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      // fillColor,
                      labelText: 'Nombre de usuario',
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),

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
                            });
                          },
                        ), //fin flatbutton
                        RaisedButton(
                          child: Text(
                            'siguiente',
                          ),
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          },
                        ), //finrisebutton
                      ], //fin de niños
                    ),
                  ) //fin pading
                ], //fin widget child
              ) //fin de columna
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
              )

            //fin widget
          ], //fin children widget
        ), //fin list view
      ), //fin safe area
    ); //fin de scaffold
  } //fin de widget
} //fin
