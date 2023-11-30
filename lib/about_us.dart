import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import './helper/ui_helper.dart';

class AboutUs extends StatelessWidget {
  AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.contact_mail),
            ),
          ],
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text(
            'About Us',
          )),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: SweepGradient(colors: [
            Colors.pinkAccent,
            Colors.yellow,
            Colors.cyan,
            Colors.purpleAccent,
            Colors.blueAccent,
          ])),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: LottieBuilder.asset('asset/animation_lno10d0c.json'),
              ),
              Text(
                'In the standardized software development method, costs are predicted more accurately before the software is actually developed. Recently, software development cost estimation has received significant attention from analysts and has become a venture for the industry.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: FontStyle.italic.toString(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(50.0),
                child:
                    Image(image: AssetImage('asset/CostEstimation logo.png')),
              ),
              Text(
                'The project applied the method for software development is currently growing increasingly varied. The most motivating factor for this range inquiry has been the inaccurate estimation that was revealed during software development. The goal of this investigation was to present the current state of the art in measuring the effort and to suggest a modern strategy. There is not a single approach per definition that can be regarded as the guiding approach in this essay. It will be suggested that a combination of the techniques be used to provide an accurate set to take measures. The most widely used accuracy measurements are the Magnitude of Relative Error (MRE), Mean Magnitude of Relative Error (MMRE) and Prediction Accuracy (PRED). The datasets that are utilized the most common include ISBSG, COCOMO, Albrecht, and Kemerer.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: FontStyle.italic.toString(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('asset/how-to-estimate-project-costs.png'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Navigator.pushReplacementNamed(context, "loginpage");
        },
        child: const Icon(Icons.arrow_circle_right),
        // backgroundColor: Colors., // Customize the FAB background color
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
