import 'package:flutter/material.dart';
import 'package:portfolio/widgets/projects_card.dart';
import 'package:portfolio/widgets/projects_dialogs_desktop.dart';
import 'package:portfolio/widgets/projects_dialogs_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ProjectsPageMobile(),
      tablet: (BuildContext context) => const ProjectsPageDesktop(),
      desktop: (BuildContext context) => const ProjectsPageDesktop()
    );
  }
}

class ProjectsPageMobile extends StatelessWidget {
  const ProjectsPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ListView(
            children: [
              GestureDetector(
                onTap: (){
                  showDialog(
                    context: context, 
                    builder: (BuildContext context) {
                      return const ETurystaDialogMobile();
                    });               
                },
                child: Card(
                  elevation: 4,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("eTurysta - mobile app", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        const SizedBox(height: 16.0),
                        Image.asset("assets/images/opolskie_logo.png", scale: 12,)
                      ],
                    ),                 
                  ),
                ),
              ),              
              GestureDetector(
                onTap: (){
                  showDialog(
                   context: context, 
                   builder: (BuildContext context){
                     return const PolishITExamsAnalysisDialogMobile();
                   }
                  );
                },
                child: const ProjectCard(title: "Polish IT exams analysis")
              ),
              GestureDetector(
                onTap: (){
                  showDialog(
                   context: context, 
                   builder: (BuildContext context){
                     return const PortfolioWebsiteDialogMobile();
                   }
                  );  
                },
                child: const ProjectCard(title: "Portfolio website")
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectsPageDesktop extends StatelessWidget {
  const ProjectsPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
          child: SizedBox(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              primary: true,
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context, 
                      builder: (BuildContext context){
                        return const ETurystaDialogDesktop();
                      }
                    );
                  },
                  child: Card(
                    elevation: 4,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("eTurysta - mobile app", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                          const SizedBox(height: 16.0),
                          Image.asset("assets/images/opolskie_logo.png", scale: 12,)
                        ],
                      ),                 
                    ),
                  ),
                ),            
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context, 
                      builder: (BuildContext context){
                        return const PolishITExamsAnalysisDialogDesktop();
                      }
                    );
                  },
                  child: const ProjectCard(title: "Polish IT exams analysis")
                ),
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context, 
                      builder: (BuildContext context){
                        return const PortfolioWebsiteDialogDesktop();
                      }
                    );
                  },
                  child: const ProjectCard(title: "Portfolio website")
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}