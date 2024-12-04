import 'package:flutter/material.dart';
class TestReports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Reports'),
        backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                 image: AssetImage("assets/images/grey.jpeg"),
                 fit:BoxFit.cover,
              ),
          ),
          padding:EdgeInsets.only(top:45,right:15,left:15),
          child: Table(
            border:  TableBorder.symmetric(inside: BorderSide(width: 1, color: Colors.grey), outside: BorderSide(width: 1)),
            columnWidths: {
              0: FixedColumnWidth(80),
              1: FixedColumnWidth(80)
            },

            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.cyan),
                children: [
                  TableCell(child: Center(child: Text('Subject',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Obtained Marks',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Grade',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Remarks',textAlign: TextAlign.center,)))
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('Physics',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('45',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('B+',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Pass',textAlign: TextAlign.center,))),
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('Row 2, Cell 1',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Row 2, Cell 2',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Row 2, Cell 3',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Row 2, Cell 4',textAlign: TextAlign.center,))),
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('Row 3, Cell 1',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Row 3, Cell 2',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Row 3, Cell 3',textAlign: TextAlign.center,))),
                  TableCell(child: Center(child: Text('Row 3, Cell 4',textAlign: TextAlign.center,))),
                ],
              ),
            ],
          ),
        ),
      );
  }
}