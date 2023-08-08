import 'package:flutter/material.dart';

class CurrencyConverterBody extends StatelessWidget {
  const CurrencyConverterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("0", style:  TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold
          ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "please enter amount",
              prefixIcon:const  Icon(Icons.monetization_on_outlined),
              prefixIconColor: Colors.black,
              filled: true,
              fillColor: Colors.blueGrey.shade50,
              
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  style:  BorderStyle.solid
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
              ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))
            )
            ),
          ),
        ],
      ),
    );
  }
}