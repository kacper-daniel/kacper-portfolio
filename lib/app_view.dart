import 'package:flutter/material.dart';
import 'package:portfolio/routes/routes.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/navigation_bar.dart';
import 'package:portfolio/widgets/navigation_item.dart';

class AppView extends StatelessWidget {

  final Widget child;

  const AppView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(
        backgroundColor: Colors.white,     
        child: Container(
          color: Colors.white,
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [ 
              SizedBox(height: 32,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: NavigationItem(title: "Home", routeName: routeHome, selected: false),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: NavigationItem(title: "About me", routeName: routeAbout, selected: false),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: NavigationItem(title: "Projects", routeName: routeProjects, selected: false),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: NavigationItem(title: "Contact", routeName: routeContact, selected: false),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const TopNavigationBar(),
          const SizedBox(height: 3),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background_one.jpg"),
                  fit: BoxFit.cover
            )),
            child: child,
          )),
          const Footer()
        ],
      ),
    );
  }
}