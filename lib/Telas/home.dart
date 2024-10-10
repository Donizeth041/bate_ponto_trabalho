import 'package:flutter/material.dart';
import 'login.dart'; // Importe as telas que serão usadas no Drawer

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        // A Drawer está sendo adicionada aqui
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login, color: Colors.blue),
              title: Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            // Adicione outras ListTile aqui para as outras telas
          ],
        ),
      ),
      body: Center(
        child: Text('Bem-vindo ao sistema de bate-ponto!'),
      ),
    );
  }
}
