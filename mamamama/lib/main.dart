import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Авторизация',
      home: const Authorization(),
    );
  }
}

class Authorization extends StatelessWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Авторизация",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Логин',
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 239, 243),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Пароль',
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 239, 243),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.all(Colors.transparent),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  const Text(
                    "Запомнить меня",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Войти'),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    padding: const EdgeInsets.all(16),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Регистрация'),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Восстановить пароль',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
