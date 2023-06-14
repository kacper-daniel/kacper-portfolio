// ignore_for_file: body_might_complete_normally_nullable, dead_code

import 'package:flutter/material.dart';
import 'package:portfolio/routes/routes.dart';
import 'package:portfolio/ui/about.dart';
import 'package:portfolio/ui/contact.dart';
import 'package:portfolio/ui/home.dart';
import 'package:portfolio/ui/projects.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return PageRouteBuilder(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          settings: settings,
          pageBuilder: (_, __, ___) => const HomePage()
        );
        break;
      case routeAbout:
        return PageRouteBuilder(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          settings: settings,
          pageBuilder: (_, __, ___) => const AboutPage()
        );
        break;
      case routeContact:
        return PageRouteBuilder(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          settings: settings,
          pageBuilder: (_, __, ___) => const ContactPage()
        );
        break;
      case routeProjects:
        return PageRouteBuilder(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          settings: settings,
          pageBuilder: (_, __, ___) => const ProjectsPage()
        );
        break;
    } 
  }
}