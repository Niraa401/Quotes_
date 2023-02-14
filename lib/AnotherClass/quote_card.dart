import 'package:flutter/material.dart';
import '_quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              quote.author,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: () {
                delete();
              },
              label: const Text("Delete Quote"),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
