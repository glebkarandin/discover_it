import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            const Text('Введите поисковый запрос'),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Например vermeer',
              ),
            )
          ],
        )
    );
  }
}
