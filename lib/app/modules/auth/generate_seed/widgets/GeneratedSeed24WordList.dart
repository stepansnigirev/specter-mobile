import 'package:flutter/material.dart';

class GeneratedSeed24WordList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var values = [
        'A', 'B', 'C', 'D', 'A', 'B', 'C', 'D',  'A', 'B', 'C', 'D',
        'A', 'B', 'C', 'D',  'A', 'B', 'C', 'D',  'A', 'B', 'C', 'D'
    ];

    int inColumnLength = 12;
    int columnsCount = (values.length / inColumnLength).ceil();

    var idx = 0;
    List<Widget> columns = [];
    for (int columnIdx = 0; columnIdx < columnsCount; columnIdx++) {
        List<Widget> rows = [];
        for (var i = 0; i < inColumnLength; i++) {
            if (idx >= values.length) {
              break;
            }
            var el = values[idx];
            rows.add(Container(
                child: Row(
                    children: [
                      Text((idx + 1).toString(), style: TextStyle(fontSize: 18)),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(el, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                      )
                    ]
                )
            ));
            idx++;
        }
        columns.add(Container(
            margin: EdgeInsets.only(left: (columns.isEmpty)?0:20),
            child: Column(
                children: rows
            )
        ));
    }
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: columns
    );
  }
}