import 'package:flutter/widgets.dart';
import 'package:sample2/subject.dart';
import 'package:flutter/material.dart';

class SubjectRow extends StatelessWidget {
  PageController pageController = new PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 380.0,
      width: double.infinity,
      child: new PageView(
          controller: pageController,
          children: subjects.map((Subject subject) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.circular(10.0),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                        color: Colors.black38,
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        offset: new Offset(0.0, 2.0)),
                  ],
                ),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                        height: 220.0,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topRight: Radius
                              .circular(10.0), topLeft: Radius.circular(10.0)),
                          child: new Image.asset(subject.asset, fit: BoxFit.cover),
                        )
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, bottom: 10.0, top: 10.0),
                      child: new Text(subject.title,
                          style: const TextStyle(fontSize: 20.0),
                          textAlign: TextAlign.left),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: new Text(subject.domain),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(20.0)),
                      child: new ClipRRect(
                        borderRadius: new BorderRadius.circular(50.0),
                        child: new MaterialButton(
                          minWidth: 70.0,
                          onPressed: () {},
                          color: Colors.blue[900],
                          splashColor: Colors.lightBlueAccent,
                          child: new Text('Read',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}