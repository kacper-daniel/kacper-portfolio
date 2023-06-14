// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'dart:js' as js;

class ETurystaDialogDesktop extends StatelessWidget {
  const ETurystaDialogDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Text("eTurysta - mobile app", style: TextStyle(fontWeight: FontWeight.bold),),
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text("As a result of my work in T2T System we ended up publishing eTurysta (", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                  Icon(Icons.copyright, size: 16,),
                  Text(" Opolskie) mobile app on Google Play and App Store in January 2023", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)
                ],
              ),
            ),
            Image.asset("assets/images/opolskie_logo.png", scale: 10,),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){
                    js.context.callMethod('open', ['https://t2t.opolskie.pl']);
                }, icon: const Icon(Icons.web), iconSize: 32, color: Colors.blue.shade900,),
                TextButton(
                  onPressed: (){
                    js.context.callMethod('open', ['https://play.google.com/store/apps/details?id=pl.opolskie.e_turysta']);
                }, child: Image.asset("assets/images/google_play_logo.png", scale: 48,))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PolishITExamsAnalysisDialogDesktop extends StatelessWidget {
  const PolishITExamsAnalysisDialogDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Polish IT exams analysis", style: TextStyle(fontWeight: FontWeight.bold),),
      content: SizedBox(
        height: 360,
        width: 400,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("In early 2022 I did an analysis of polish IT exams (INF.02 and INF.03) data as I was going to take the INF.02 exam in June 2022. I scrapped it by myself from databases available online using selenium and then I did EDA using python libraries such as pandas, seaborn, matplotlib and wordcloud.", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
            ),
            //Image.asset("assets/images/project_1_view.png"),
            const SizedBox(height: 20,),
            const Text("You can look at code and results on my github and kaggle!", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18), textAlign: TextAlign.center,),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  js.context.callMethod('open', ['https://github.com/kacper-daniel/egzamin-project']);
                }, icon: const ImageIcon(AssetImage("assets/images/github_icon.png"), color: Colors.black, size: 32,)),
                IconButton(
                  onPressed: (){
                    js.context.callMethod('open', ['https://www.kaggle.com/code/dzbaniel/exams-questions-data-eda']);
                }, icon: const ImageIcon(AssetImage("assets/images/kaggle_icon.png"), color: Colors.black, size: 32,))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PortfolioWebsiteDialogDesktop extends StatelessWidget {
  const PortfolioWebsiteDialogDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text("Portfolio website", style: TextStyle(fontWeight: FontWeight.bold),),
      content: SizedBox(
        height: 72,
        width: 270,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("You're on this website right now!", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
              Icon(Icons.waving_hand_rounded, color: Colors.amber,)
            ],
          )
        ),
      ),
    );
  }
}