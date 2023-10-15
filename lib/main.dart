import 'package:flutter/material.dart';

void main() => runApp(
    AuthenticationApp()); //создается экземпляр класса AuthenticationApp и запускается приложение

class AuthenticationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lichess.org',
      theme: ThemeData(),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 2, 3),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                "   Lichess.org    игра   задачи   обучение   просмотр   сообщество   инструметы",
                style: TextStyle(
                  color: Colors.grey,
                )),
            Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 26,
                ),
                Icon(Icons.settings),
                SizedBox(
                  width: 26,
                ),
                Text(
                  "войти",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(130.0),
        child: Wrap(
            
            children: [
              Card(
                color: Color.fromRGBO(44, 39, 39, 1),
                margin: EdgeInsets.symmetric(horizontal: 600, vertical: 50),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget> [
                        Text(
                          'Войти',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 32.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 40),
                        Text(
                          'Логин или электронная почта',
                          textAlign: TextAlign.left,
                          
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey),
                          
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                                labelText: '',
                                border: OutlineInputBorder()),
                            onChanged: (value) {}),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Пароль',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey),
                          
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: '',
                              border: OutlineInputBorder()),
                          onChanged: (value) {},
                        ),
                        SizedBox(height: 45),
                        SizedBox(
                          height: 45,
                          child: ElevatedButton(
                            child: Text('ВОЙТИ',
                                style:
                                    TextStyle(color: Colors.white)),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        5)), 
                                backgroundColor: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Регистрация   Сброс пароля   Login in by email",
                              style: TextStyle(fontSize: 16,
                              color: Colors.blue),
                            ),
                          
                            
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
