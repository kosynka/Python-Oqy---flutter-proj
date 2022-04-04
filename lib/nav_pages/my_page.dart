import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_python/widgets/app_large_text.dart';
import 'package:learn_python/widgets/app_text.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)),
                ),
              ],
            ),
          ), //menu button
          SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: 'Python Oqy'),
          ), //python oqy
        ],
      ),
    );
  }
}
