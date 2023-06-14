import 'package:flutter/material.dart';
import 'package:portfolio/routes/routes.dart';

class NavigationItem extends StatefulWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function? onHighlight;

  const NavigationItem({super.key, required this.title, required this.routeName, required this.selected, this.onHighlight});

  @override
  State<NavigationItem> createState() => _NavigationItemState();
}

class _NavigationItemState extends State<NavigationItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 36,
      color: Colors.white,
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: (){
          navKey.currentState?.pushNamed(widget.routeName);
          if (widget.onHighlight != null){
            widget.onHighlight!(widget.routeName);
          }
          Scaffold.of(context).closeDrawer();
        },
        onHover: (val){
          setState(() {
            isHover = val;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Text(
            widget.title,
            style: widget.selected ? const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0) : isHover ? const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0) : const TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}