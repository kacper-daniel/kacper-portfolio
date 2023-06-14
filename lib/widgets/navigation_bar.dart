import 'package:flutter/material.dart';
import 'package:portfolio/routes/routes.dart';
import 'package:portfolio/widgets/navigation_item.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const TopNavigationBarMobile(),
      tablet: (BuildContext context) => const TopNavigationBarDesktop(),
      desktop: (BuildContext context) => const TopNavigationBarDesktop()
    );
  }
}

class TopNavigationBarDesktop extends StatefulWidget {
  const TopNavigationBarDesktop({super.key});

  @override
  State<TopNavigationBarDesktop> createState() => _TopNavigationBarDesktopState();
}

class _TopNavigationBarDesktopState extends State<TopNavigationBarDesktop> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15.0,
            offset: Offset(0.0, 0.75)
          )
        ],
        color: Colors.white
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                //Image.asset("assets/images/kacper_logo.png", height: 70, width: 200,),
                //const Spacer(),
                Row(
                  children: [
                    NavigationItem(title: "Home", routeName: routeHome, selected: index == 0, onHighlight: onHighlight,),
                    NavigationItem(title: "About me", routeName: routeAbout, selected: index == 1, onHighlight: onHighlight),
                    NavigationItem(title: "Projects", routeName: routeProjects, selected: index == 2, onHighlight: onHighlight),
                    NavigationItem(title: "Contact", routeName: routeContact, selected: index == 3, onHighlight: onHighlight),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeHome:
        changeHighlight(0);
        break;
      case routeAbout:
        changeHighlight(1);
        break;
      case routeProjects:
        changeHighlight(2);
        break;
      case routeContact:
        changeHighlight(3);
        break;
    }
  }

  void changeHighlight(int newIndex){
    setState(() {
      index = newIndex;
    });
  }
}

class TopNavigationBarMobile extends StatelessWidget {
  const TopNavigationBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Scaffold.of(context).openDrawer();
                }, icon: const Icon(Icons.menu, color: Colors.black,)),
                //const Spacer(),
                //Image.asset("assets/images/kacper_logo.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

