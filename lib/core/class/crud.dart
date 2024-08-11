import 'dart:convert';
import 'package:dartz/dartz.dart';

import 'package:farm/core/class/status_request.dart';
import "package:http/http.dart" as http;


class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    // if (await chickIntrnet()) {

   
    var response = await http.post(Uri.parse(linkurl), body: data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var responsebody = jsonDecode(response.body);
      return Right(responsebody);
    } else {
      return left(StatusRequest.serverfaliure);
    }
    // } else {
    //   return left(StatusRucust.offlinefaliure);
    // }
  }

  Future<Either<StatusRequest, Map>> getData(String linkurl) async {
    // if (await chickIntrnet()) {
    var response = await http.get(
      Uri.parse(linkurl),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      var responsebody = await jsonDecode(response.body);
      return Right(responsebody);
    } else {
      return left(StatusRequest.serverfaliure);
    }
    // } else {
    //   return left(StatusRucust.offlinefaliure);
    // }
  }
}
