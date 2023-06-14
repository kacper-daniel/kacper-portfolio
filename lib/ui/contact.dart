import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/services/sendEmail.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final emailAddressController = TextEditingController();
  final titleController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          width: getValueForScreenType(context: context, mobile: true, desktop: false) ? MediaQuery.of(context).size.width * 0.8 : MediaQuery.of(context).size.width * 0.5,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Text("Let's be in touch!", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.0),),
                const SizedBox(height: 16.0,),
                TextFormField(
                  controller: emailAddressController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email'
                  ),
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return 'Required*';
                    } else if (!EmailValidator.validate(email)) {
                      return 'Please enter a valid Email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8.0,),
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Title' 
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*Required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8.0,),
                TextFormField(
                  controller: messageController,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Message' 
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*Required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8.0,),
                ElevatedButton(
                  onPressed: (){
                    if (_formKey.currentState!.validate()){
                      sendEmail(email: emailAddressController.text, title: titleController.text, message: messageController.text);
                      emailAddressController.text = "";
                      titleController.text = "";
                      messageController.text = "";
                      setState(() {
          
                      });
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Email sent!")));
                    } else{
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Enter valid data")));
                    }                     
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    foregroundColor: Colors.black
                  ), 
                  child: const Text("Send!"),
                ),
                const SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: Colors.grey.shade200),
                  height: 72,
                  width: getValueForScreenType(context: context, mobile: true, desktop: false) ? MediaQuery.of(context).size.width * 0.9 : MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.email, size: 16,),
                      const SizedBox(width: 6,),
                      const Text("daniel.kacper@outlook.com", style: TextStyle(fontSize: 14),),
                      SizedBox(width: getValueForScreenType(context: context, mobile: true, desktop: false) ? 8.0 : 100),
                      const Icon(Icons.discord, size: 16,),
                      const SizedBox(width: 6,),
                      const Text("Dzbaniel#7622", style: TextStyle(fontSize: 14),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}