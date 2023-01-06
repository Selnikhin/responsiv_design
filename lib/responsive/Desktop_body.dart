import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('DESKTOP'),
      ),

      // Предположительно Видео

      body: Row(
        children: [
          // ПЕРВАЯ КОЛОНКА

          Expanded(    //заполняет все свободное пространство
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9, // задает прапорции
                    child: Container(
                      color: Colors.purple[400],
                    ),
                  ),
                ),
                // Коментарии к видео
                Expanded(
                    child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(color: Colors.purple[300], height: 120),
                          );
                        })),
              ],
            ),
          ),
          // ВТОРАЯ КОЛОНКА
          Container(
            width: 200,color: Colors.deepPurple[300],
          )
        ],
      ),
    );
  }
}
