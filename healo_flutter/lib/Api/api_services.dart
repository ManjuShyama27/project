import 'dart:convert';

import 'package:healo_flutter/Api/config.dart';
import 'package:healo_flutter/Api/send_otp_model.dart';
import 'package:http/http.dart' as http;


class ApiService {

  static var client = http.Client();

  static Future<SendOtpModel?> sendOtp(String phone) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',

    };
    var url = Uri.http(Config.Apiurl, Config.sendOtpApi);

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(<String, String>{
        'phone': phone,
      }),
    );


    if (response.statusCode == 201 || response.statusCode == 200) {
      final String responseString = response.body;
      return sendOtpFromJSON(responseString);
    }else{
      return null;
      //throw Exception('Failed to submit.');
    }
       //return sendOtp(response.body);
         //sendOtp(response.body);
     // return SendOtpModel.fromJson(response.body);
    //  } else {
    //
    //  }
  }
}
