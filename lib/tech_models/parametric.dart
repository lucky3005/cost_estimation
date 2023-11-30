import 'package:cost_estimation/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class ParametricEstimation extends StatefulWidget {
  const ParametricEstimation({super.key});

  @override
  State<ParametricEstimation> createState() => _ParametricEstimationState();
}

var costperfun = TextEditingController();

class _ParametricEstimationState extends State<ParametricEstimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Parametric Estimation'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'If Parameter is Function Point',
                      style: TextStyle(fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        // controller: sizeOfOld,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.code,
                          ),
                          label: Text(
                            'Cost per Function Point',
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
                        // controller: sizeOfOld,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.code,
                          ),
                          label: Text(
                            'Number of Function Point',
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Calculate"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Estimated Cost:', style: TextStyle(fontSize: 18),
                      // style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text('If Parameter is Number of Hours',
                        style: TextStyle(fontSize: 22)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        // controller: sizeOfOld,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.code,
                          ),
                          label: Text(
                            'Cost per Hour',
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
                        // controller: sizeOfOld,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.code,
                          ),
                          label: Text(
                            'Number of hours',
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Calculate"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Estimated Cost:', style: TextStyle(fontSize: 18),
                      // style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
