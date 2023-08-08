import 'package:flutter/material.dart';

class CurrencyConverterBody extends StatefulWidget {
  const CurrencyConverterBody({super.key});

  @override
  State<CurrencyConverterBody> createState() => _CurrencyConverterBodyState();
}

class _CurrencyConverterBodyState extends State<CurrencyConverterBody> {
  double result = 0;
  String formattedResult ='0';
  final TextEditingController currencyTextEditingController =
      TextEditingController();

      void convert(){
        setState(() {
          result = double.parse(currencyTextEditingController.text) * 136;
          formattedResult =  result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0);
          
        });
      }
      @override
  void dispose() {
    currencyTextEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    const borderProperties = OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(10)));

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "NPR",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                Text(
                  formattedResult,
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 80),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: currencyTextEditingController,
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
                onPressed: convert,
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
// class CurrencyConverterBodyy extends StatelessWidget {
//   const CurrencyConverterBodyy({super.key});

  
// }
