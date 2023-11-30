import 'package:cost_estimation/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class AnalogousEstimation extends StatefulWidget {
  AnalogousEstimation({super.key});

  @override
  State<AnalogousEstimation> createState() => _AnalogousEstimationState();
}

var amount = TextEditingController();
var sizeOfOld = TextEditingController();
var sizeOfNew = TextEditingController();
var result = 0.0;

void Calculate() {
  var damount = double.parse(amount.text);
  var dsizeofold = double.parse(sizeOfOld.text);
  var dsizeofnew = double.parse(sizeOfNew.text);

  var ratio = dsizeofnew / dsizeofold;
  result = (damount * ratio);
}

class _AnalogousEstimationState extends State<AnalogousEstimation> {
  @override
  Widget build(BuildContext context) {
    print(result + 2);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Analogous Estimation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: amount,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.currency_rupee,
                  ),
                  label: Text(
                    'Cost of Historical Project',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: sizeOfOld,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.code,
                  ),
                  label: Text(
                    'Size of Historical Project(LOC)',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: sizeOfNew,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.code,
                  ),
                  label: Text(
                    'Size of Current Project',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Calculate();
                setState(() {});
                print(result);
              },
              child: Text("Calculate"),
            ),
            SizedBox(height: 20),
            Text(
              'Estimated Cost: ${result}', style: TextStyle(fontSize: 18),
              // style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
