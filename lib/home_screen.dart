import 'package:cost_estimation/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cost Estimation',
        ),
        backgroundColor: appBarColor,
        elevation: 0,
      ),
      drawer: Drawers(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Colors.cyan, Colors.purpleAccent],
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "expertjudgment");
                  },
                  child: Text(
                    "Expert Judgment",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey, Colors.deepOrange],
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "analogousestimation");
                  },
                  child: Text(
                    "Analogous Estimation",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Colors.pinkAccent, Colors.amber],
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "parametricestimation");
                  },
                  child: Text(
                    "Parametric Estimation",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.blue],
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "COCOMO Model",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.pink],
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Function Point Analysis",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.grey],
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "3-Point Estimation",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//

//

Widget Drawers() {
  return Drawer(
    child: Column(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: appBarColor),
          child: Center(child: Image.asset('asset/CostEstimation logo.png')),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            color: appBarColor,
          ),
          title: Text('Home'),
        ),
        ListTile(
          leading: Icon(
            Icons.history,
            color: appBarColor,
          ),
          title: Text('History'),
        ),
        ListTile(
          leading: Icon(
            Icons.star,
            color: appBarColor,
          ),
          title: Text('Rate us'),
        ),
        ListTile(
          leading: Icon(
            Icons.support,
            color: appBarColor,
          ),
          title: Text('Support'),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: appBarColor,
          ),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            color: appBarColor,
          ),
          title: Text('Log out'),
        ),
      ],
    ),
  );
}
