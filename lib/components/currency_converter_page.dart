import 'package:currency_converter/components/currency_converter_body.dart';
import 'package:flutter/material.dart';

class CurrnecyConverterPage extends StatelessWidget {
  const CurrnecyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Currency Converter"),
      ),
      body: const CurrencyConverterBody(),
    );
  }
}