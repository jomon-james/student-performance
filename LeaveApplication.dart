import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

class LeaveApplication extends StatefulWidget {

  @override
  _MyDatePickerWidgetState createState() => _MyDatePickerWidgetState();
}
class _MyDatePickerWidgetState extends State<LeaveApplication> {
  TextEditingController reason=TextEditingController();
  // Variable to store selected date
  DateTime selectedDate = DateTime.now();

  // Function to show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8), // Adjust as needed
      lastDate: DateTime(2101), // Adjust as needed
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leave Application'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child:
          Column(
            children: [
              Container(
                padding:EdgeInsets.only(top:45,right:35,left:35),
                child:
                  Text(
                    selectedDate != null
                        ? 'Selected Date: ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'
                        : 'Select a date',
                    style: TextStyle(fontSize: 20),
                  ),
              ),
              SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('Select date'),
              ),
      SingleChildScrollView(
              child:Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children:<Widget>[
                      TextField(
                        controller: reason,
                        decoration: InputDecoration(
                          fillColor:Colors.grey.shade100,
                          filled:true,
                          hintText:'Reason.',
                          border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10)
                          ),
                        ),

                      ),
                      const SizedBox(height: 30),
                      Column(
                        children: [
                          ElevatedButton(
                              onPressed:(
                                  ) {
                                send();
                              },
                               child: const Text('Submit'),
                              ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
      ),
                ],
              ),
          ),
        );
  }

  void send() async {
    if (reason.text == "" ) {
      Fluttertoast.showToast(
          msg: "Please enter a valid reason",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.redAccent,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    var url = "https://shubhodayalodgesringeri.com/Shreshtha/clg";
    Map mapdata = {
      "name": "abc"
    };
    http.Response rep = await http.get(Uri.parse(url));
    print(rep.body.toString());
    String result = rep.body.toString();
    print(result);
  }
}



