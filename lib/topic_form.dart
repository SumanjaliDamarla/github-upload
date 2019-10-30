import 'package:flutter/material.dart';

class TopicForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var _value;
    return new AlertDialog(
      title: const Text('Learning new!'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
                child:
                  Center(
                    child:
                    Column(
                      children: [
                        new TextField(
                         decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: 'Topic Name here'
                         ),
                        ),
                        new TextField(
                         decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: 'Subject Name here'
                         ),
                        ),
                   ],
                  )
                  )
        )
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Generate Notes'),
        ),
      ],
    );
  }
}