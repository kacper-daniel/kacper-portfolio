import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {

  final String title;

  const ProjectCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
          ],
        ),                 
      ),
    );
  }
}