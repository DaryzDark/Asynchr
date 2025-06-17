import 'package:flutter/material.dart';

class CodeEditor extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onParsePressed;
  
  const CodeEditor({
    Key? key,
    required this.controller,
    required this.onParsePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Редактор кода',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('Разобрать'),
                  onPressed: onParsePressed,
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                maxLines: null,
                expands: true,
                style: TextStyle(
                  fontFamily: 'Courier', // Моноширинный шрифт для кода
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Введите код Asynchr...',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}