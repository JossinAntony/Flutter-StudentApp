import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  void _tapButton() {
    debugPrint('Tapped button');
  }
  TextEditingController sNameController = TextEditingController();
  TextEditingController sRollNoController = TextEditingController();

  TextEditingController sAdmnNoController = TextEditingController();
  TextEditingController sCollegeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Student App",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.info),
                onPressed: () => debugPrint('info button clicked')),
            IconButton(icon: Icon(Icons.access_alarm), onPressed: _tapButton),
          ],
        ),
        backgroundColor: Colors.lightGreenAccent.shade50,
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20.0),
              //color: Colors.blueAccent.shade50,
              //alignment: Alignment.topLeft,
              child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      //Text("Name:",),
                      TextField(
                          controller: sNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Student name",
                            prefixIcon: Icon(Icons.person),
                          )
                      ),
                      SizedBox(height: 20),
                      //Text("Roll no:"),
                      TextField(
                          controller: sRollNoController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Roll number",
                            prefixIcon: Icon(Icons.format_list_numbered_rtl),
                          )
                      ),
                      SizedBox(height: 20),
                      //Text("Admission no:"),
                      TextField(
                          controller: sAdmnNoController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Admission number",
                            prefixIcon: Icon(Icons.format_list_numbered),
                          )
                      ),
                      SizedBox(height: 20),
                      //Text("College"),
                      TextField(
                          controller: sCollegeController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter College name",
                            prefixIcon: Icon(Icons.place),
                          )
                      ),
                      SizedBox(height: 20),
                      /*
                      RaisedButton(
                        onPressed: (){
                          var sName = sNameController.text;
                          var sRoll= sRollNoController.text;
                          var sAdmn= sAdmnNoController.text;
                          var sCollege= sCollegeController.text;

                          print(sName);
                          print(sRoll);
                          print(sAdmn);
                          print(sCollege);

                        },
                        child: Text("Submit"),
                        color: Colors.cyanAccent,
                      ),
                      */
                      Container(
                        height: 60,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text('Submit'),
                        ),
                      ),
                    ],
                  ))),
        ),
      ),
    );
  }
}
