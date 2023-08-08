import 'package:flutter/material.dart';

class CurrencyConverterBody extends StatelessWidget {
  const CurrencyConverterBody({super.key});

  @override
  Widget build(BuildContext context) {
    const borderProperties = OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(10)));
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "0",
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 80),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "please enter amount",
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.blueGrey.shade50,
                  focusedBorder: borderProperties,
                  enabledBorder: borderProperties),
              keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, signed: true),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
                onPressed: () {
                  debugPrint("button clicked");
                },
                style: ElevatedButton.styleFrom(
                  elevation: 7,
                  backgroundColor: (Colors.teal),
                  // padding: MaterialStatePropertyAll()
                  minimumSize: (const Size(double.infinity, 50)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )),
          )
        ],
      ),
    );
  }
}
