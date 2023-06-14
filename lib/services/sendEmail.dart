// ignore_for_file: file_names, unused_local_variable

import 'dart:convert';

import 'package:http/http.dart' as http;

Future sendEmail({required String email, required String title, required String message}) async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json'
    },
    body: jsonEncode({
      'service_id': "service_zuhiwic",
      'template_id': "template_uvu8p77",
      'user_id': "JVqwx2yu5MwJwBhOT",
      'template_params': {
        'user_title': title,
        'user_email': email,
        'user_message': message
      }
    })
  );

  //print(response.body);
}