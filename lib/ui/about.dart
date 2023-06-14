import 'package:flutter/material.dart';
import 'package:portfolio/widgets/rounded_image.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const AboutPageMobile(),
      tablet: (BuildContext context) => const AboutPageDesktop(),
      desktop: (BuildContext context) => const AboutPageDesktop()
    );
  }
}

class AboutPageMobile extends StatelessWidget {
  const AboutPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
              child: Text("I'm a 19 years old coder from a small village in Poland. I started my programming journey almost 6 years ago although i had some breaks and wasn't consistent for a while, especially in the beggining. I worked for 5 months as a Junior Flutter Developer in T2T System. However, now I graduated from high school and I'm developing my algorithmic as well as coding skills in Python and Flutter. My two main interests are AI and mobile apps. I like to know how things work and dive deeply into the topic.  I'm looking forward to study maths at the Wrocław Univeristy of Science and Technology. ", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("I love to learn. I'm passionate about science, programming, fitness, geography, music and many more. When I'm not learning or coding, I like to do some calisthenics. My biggest achievements in this discipline until now are straddle planche, 90 degree push up, one arm pull up and front lever press. Also, I'm a big fan of basketball. ", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: RoundedImage(image: "assets/images/handstand.jpg", height: MediaQuery.of(context).size.height * 0.35),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 48.0),
              child: Divider(color: Colors.black87, thickness: 1,),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8), 
              child: Text("• Flutter  • Python  • Data analysis  • Mobile apps  • Maths", style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Text("If you feel like I can help you with something, just contact me. I will be glad to help.", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600),),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPageDesktop extends StatelessWidget {
  const AboutPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RoundedImage(image: "assets/images/handstand.jpg", height: 400,),
            const SizedBox(width: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 24.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: const Text("I'm a 19 years old coder from a small village in Poland. I started my programming journey almost 6 years ago although i had some breaks and wasn't consistent for a while, especially in the beggining. I worked for 5 months as a Junior Flutter Developer in T2T System. However, now I graduated from high school and I'm developing my algorithmic as well as coding skills in Python and Flutter. I like to know how things work and dive deeply into the topic. ", textAlign: TextAlign.justify, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: const Text("I'm looking forward to study maths at the Wrocław Univeristy of Science and Technology. I love to learn. I'm passionate about science, programming, fitness, geography, music and many more. When I'm not learning or coding, I like to do some calisthenics. My biggest achievements in this discipline until now are straddle planche, 90 degree push up, one arm pull up and front lever press. Also, I'm a big fan of basketball. ", textAlign: TextAlign.justify, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
                      ),
                    ],
                  ),
                  const SizedBox(height: 60,),
                  const Align(
                    alignment: Alignment.center,
                    child: Text("If you feel like I can help you with something, just contact me. I will be glad to help.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                    )
                ],
              ),
            ),
            const SizedBox(
              height: 360,
              child: VerticalDivider(thickness: 2, color: Colors.black87, )
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100.0, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Flutter", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  Text("• Python", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  Text("• Data analysis", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  Text("• Mobile apps", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  Text("• Maths", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}