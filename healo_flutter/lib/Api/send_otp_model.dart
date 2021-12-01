import 'dart:convert';

/// success : true
/// Message : "OTP SEND, Status Pending"
/// userId : "+918770496665"
///
 SendOtpModel sendOtpFromJSON(String str) =>
    SendOtpModel.fromJson(json.decode(str));

 String sendOtpTOJSON(SendOtpModel data) =>
    json.encode(data.toJson());

class SendOtpModel {
  SendOtpModel({
      bool? success, 
      String? message, 
      String? userId,}){
    _success = success;
    _message = message;
    _userId = userId;
}

  SendOtpModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['Message'];
    _userId = json['userId'];
  }
  bool? _success;
  String? _message;
  String? _userId;

  bool? get success => _success;
  String? get message => _message;
  String? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['Message'] = _message;
    map['userId'] = _userId;
    return map;
  }

}