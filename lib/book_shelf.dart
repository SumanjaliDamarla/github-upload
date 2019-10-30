import 'package:sample2/book_row.dart';
import 'package:sample2/subject_row.dart';
import 'package:flutter/material.dart';
import 'package:sample2/topic_form.dart';


class BookShelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.blue[900],
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Container(
              height: 75.0,
              width: double.infinity,
              child: new Column(
                  children: <Widget>[
                        new MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TopicForm()),
                            );
                          },
                          splashColor: Colors.lightBlueAccent,
                          child: new Text('Add Topic',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500)),
                        ),
                  ],
                ),
            ),
            new Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: new Text('Discover. Learn. Elevate.',
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w200)),
            ),
            new Container(
              height: 450.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.only(topLeft: const Radius.circular(30.0), topRight: const Radius.circular(30.0)),
                color: Colors.white,
              ),
              child: new DefaultTabController(
                length: 3,
                  child: Scaffold(
                    appBar: TabBar(
                        indicatorWeight: 2.0,
                        isScrollable: true,
                        labelColor: Colors.black87,
                        tabs: <Widget> [
                        Tab(text: 'Recent Notes'),
                        Tab(text: 'Subjects'),
                        Tab(text: 'To Read'),
                      ],
                      ),
                    body: TabBarView(
                      children: [
                      new BookRow(),
                      new SubjectRow(),
                      new BookRow(),
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
}