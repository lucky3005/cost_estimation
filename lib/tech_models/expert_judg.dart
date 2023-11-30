import 'package:cost_estimation/helper/ui_helper.dart';
import 'package:flutter/material.dart';

class ExpertJudgment extends StatefulWidget {
  const ExpertJudgment({super.key});

  @override
  State<ExpertJudgment> createState() => _ExpertJudgmentState();
}

class _ExpertJudgmentState extends State<ExpertJudgment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("ExpertJudgment"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.person,
              color: appBarColor,
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
            title: Text('Lucky Parihar'),
            subtitle: Text('Flutter Developer'),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: appBarColor,
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
            title: Text('Kuldeep Rajput'),
            subtitle: Text('SDE @Microsoft 45-LPA'),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: appBarColor,
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
            title: Text('Piyush Malviya'),
            subtitle: Text('UI/UX Designer'),
          )
        ],
      ),
    );
  }
}
