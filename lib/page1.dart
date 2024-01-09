import 'package:flutter/material.dart';
import 'package:flutter_page_transition_animation/page2.dart';
import 'package:flutter_page_transition_animation/transition_type.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue,
          child: Column(
           children: [
             Text("Page1",style: TextStyle(color: Colors.black),),
             ElevatedButton(
                 onPressed: (){
                // PageRouteBuilder
                   Navigator.of(context).push(
                     Transitions(
                         transitionType: TransitionType.slideLeft,
                         duration: Duration(milliseconds: 200),
                         curve: Curves.bounceInOut,
                         reverseCurve: Curves.fastOutSlowIn,
                         widget: Page2()
                     ),
                   );
                   /*.then((editedValue) {
                      if (editedValue != null) _routeTransitionTypeList[index].title = editedValue;
                    });*/
                 },
                 child: Text("Go to Page 2",style: TextStyle(color: Colors.black))
             )
           ],
          ),
        ),
      ),
    );
  }
}

/*   // MaterialPageRoute
//                  Navigator.of(context).push(
//                    MaterialPageRoute(
//                        builder: (BuildContext context) => Details(routeType: _routeTransitionTypeList[index].title)
//                    ),
//                  ).then((editedValue) {
//                    if (editedValue != null) _routeTransitionTypeList[index].title = editedValue;
//                  });

                  // PageRouteBuilder
//                Navigator.of(context).push(
//                  PageRouteBuilder(
//                    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
//                      return Details(routeType: _routeTransitionTypeList[index].title);
//                    },
//                    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
//                      return Align(
//                        child: SizeTransition(
//                          sizeFactor: animation, // CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
//                          child: child,
//                        ),
//                      );
//                    },
//                    transitionDuration: Duration(milliseconds: 500),
//                  ),
//                ).then((editedValue) {
//                  if (editedValue != null) _routeTransitionTypeList[index].title = editedValue;
//                });

                  // PageRouteBuilder Class
//                Navigator.of(context).push(
//                    SizeTransitionRoute(
//                        widget: Details(routeType: _routeTransitionTypeList[index].title))).then((editedValue) {
//                  if (editedValue != null) _routeTransitionTypeList[index].title = editedValue;
//                });

                  // Transition Class to handle multiple Animation Transitions
                  if (_routeTransitionTypeList[index].transitionType == TransitionType.defaultTransition) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) => Details(routeType: _routeTransitionTypeList[index].title)
                      ),
                    ).then((editedValue) {
                      if (editedValue != null) _routeTransitionTypeList[index].title = editedValue;
                    });
                  }
                  else {
                    Navigator.of(context).push(
                      Transitions(
                          transitionType: _routeTransitionTypeList[index].transitionType,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.bounceInOut,
                          reverseCurve: Curves.fastOutSlowIn,
                          widget: Details(routeType: _routeTransitionTypeList[index].title)
                      ),
                    ).then((editedValue) {
                      if (editedValue != null) _routeTransitionTypeList[index].title = editedValue;
                    });
                    //print('ModalRoute: ${ModalRoute.of(context).animation}');
                  }*/