import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:terapevt/my_store.dart';

void main() {
  runApp(const MyApp());
}

final store = MyStore();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: Observer(
        builder: (_) => PageView(
          controller: controller,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Вопрос',
                    style: TextStyle(),
                  ),
                  GestureDetector(
                      child: Text(
                        'Первый ответ',
                        style: TextStyle(
                          color: store.firstPageAnswer == 1
                              ? Colors.green
                              : Colors.grey,
                        ),
                      ),
                      onTap: () {
                        if (store.firstPageAnswer != 0) {
                        } else {
                          store.addTenPoints(1, 1);
                        }
                      }),
                  GestureDetector(
                    child: Text(
                      'Второй ответ',
                      style: TextStyle(
                        color: store.firstPageAnswer == 2
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                    onTap: () {
                      if (store.firstPageAnswer != 0) {
                      } else {
                        store.addTenPoints(2, 1);
                      }
                    },
                  ),
                  GestureDetector(
                    child: Text(
                      'Третий ответ',
                      style: TextStyle(
                        color: store.firstPageAnswer == 3
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                    onTap: () {
                      if (store.firstPageAnswer != 0) {
                      } else {
                        store.minusTenPoints(3, 1);
                      }
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Второй вопрос',
                  ),
                  GestureDetector(
                      child: Text(
                        'Первый ответ',
                        style: TextStyle(
                          color: store.secondPageAnswer == 1
                              ? Colors.green
                              : Colors.grey,
                        ),
                      ),
                      onTap: () {
                        if (store.secondPageAnswer != 0) {
                        } else {
                          store.addTenPoints(1, 2);
                        }
                      }),
                  GestureDetector(
                    child: Text(
                      'Второй ответ',
                      style: TextStyle(
                        color: store.secondPageAnswer == 2
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                    onTap: () {
                      if (store.secondPageAnswer != 0) {
                      } else {
                        store.addTenPoints(2, 2);
                      }
                    },
                  ),
                  GestureDetector(
                    child: Text(
                      'Третий ответ',
                      style: TextStyle(
                        color: store.secondPageAnswer == 3
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                    onTap: () {
                      if (store.secondPageAnswer != 0) {
                      } else {
                        store.minusTenPoints(3, 2);
                      }
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Итого'),
                  Text(store.total.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
