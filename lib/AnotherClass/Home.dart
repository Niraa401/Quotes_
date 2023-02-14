// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'quote_card.dart';

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List quotes = [
    Quote(
        author: "Oscar Wilde",
        text: "Be yourself; everyone else is already taken.."),
    Quote(
        author: "Ken Poirot",
        text: "Today is your Opportunity to build the tomorrow you want.."),
    Quote(
        author: "Mark Twain",
        text:
            "The two most important days in your life are the dat you're born and the day you find out why.."),
    Quote(
        author: "Abraham Lincoln",
        text:
            "Folks are usually about as happy as they make their minds up to be.."),
    Quote(
        author: "Albert Einstein",
        text:
            "Be a loner. That gives you time to wonder,to search for the truth. Have holy curiosity. Make your life worth living.."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      )),
    );
  }
}
