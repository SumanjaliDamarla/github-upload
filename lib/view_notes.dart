import 'package:flutter/material.dart';
import 'package:sample2/screen_args.dart';

class ViewNotes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return new Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: new Container(
        color: Colors.blue[900],
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Container(
              height: 550.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Colors.white,
              ),
              child: new Text( "\n\n Definition: \n\n\n\n Short Description:",
                  style: const TextStyle(
                      color: Colors.indigo,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}