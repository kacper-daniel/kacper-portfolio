// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:js' as js;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const HomePageMobile(),
      tablet: (BuildContext context) => const HomePageDesktop(),
      desktop: (BuildContext context) => const HomePageDesktop()
    );
  }
}

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            const Text("Hello there,", style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w500)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I'm ", style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w500)),
                Text("Kacper", style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic))
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
              child: Divider(height: 8, thickness: 1, color: Colors.black87,),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Programmer", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(Icons.all_inclusive, color: Colors.black,),
                ),
                Text("Athlete", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),)
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
              child: Divider(height: 8, thickness: 1, color: Colors.black87,),
            ),
            Image.asset("assets/images/avatar.png", scale: 2,),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  showDialog(
                    context: context, 
                    builder: (BuildContext context){
                      return const AlertDialog(                              
                        title: Text("Discord", style: TextStyle(fontWeight: FontWeight.bold),),
                        content: SizedBox(
                          height: 40,
                          child: Center(
                            child: Text("Dzbaniel#7622", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          ),
                        ),
                      );
                    }
                  );
                }, icon: const Icon(Icons.discord, color: Colors.black, size: 36,)),
                IconButton(onPressed: (){
                  js.context.callMethod('open', ['https://www.kaggle.com/dzbaniel']);
                }, icon: const ImageIcon(AssetImage("assets/images/kaggle_icon.png")), color: Colors.black, iconSize: 36,),
                IconButton(onPressed: (){
                  js.context.callMethod('open', ['https://github.com/kacper-daniel']);
                }, icon: const ImageIcon(AssetImage("assets/images/github_icon.png")), color: Colors.black, iconSize: 36,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                children: [
                  const Text("Hello there,", style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500),),
                  const Row(
                    children: [
                      Text("I'm ", style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500),),
                      Text("Kacper", style: TextStyle(fontSize: 32.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  const SizedBox(height: 25.0,),
                  const Row(
                    children: [
                      Text("Programmer", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Icon(Icons.all_inclusive, color: Colors.black,),
                      ),
                      Text("Athlete", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),)
                    ],
                  ),
                  const SizedBox(height: 25.0,),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        showDialog(
                          context: context, 
                          builder: (BuildContext context){
                            return const AlertDialog(                              
                              title: Text("Discord", style: TextStyle(fontWeight: FontWeight.bold),),
                              content: SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text("Dzbaniel#7622", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                                ),
                              ),
                            );
                          }
                        );
                      }, icon: const Icon(Icons.discord, color: Colors.black, size: 35,)),
                      IconButton(onPressed: (){
                        js.context.callMethod('open', ['https://www.kaggle.com/dzbaniel']);
                      }, icon: const ImageIcon(AssetImage("assets/images/kaggle_icon.png")), color: Colors.black, iconSize: 35,),
                      IconButton(onPressed: (){
                        js.context.callMethod('open', ['https://github.com/kacper-daniel']);
                      }, icon: const ImageIcon(AssetImage("assets/images/github_icon.png")), color: Colors.black, iconSize: 35,)
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 50,),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Column(
              children: [
                Image.asset('assets/images/avatar.png', scale: 1.4,)
              ],
            ),
          )
        ],
      ),
    );
  }
}