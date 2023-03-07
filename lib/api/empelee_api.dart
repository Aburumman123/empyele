import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:empyele/models/empelope_model.dart';
import 'package:empyele/utils/app_constansts.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class EmployeeApi {
  bool isError = false;
  String error = '';
  List<EmployeeModel> listEmployee = [];

  Future<void> getAllEmployees(BuildContext context) async {
    listEmployee = [];
    try {
      http.Response response = await http.get(
        Uri.parse(
          '${AppConstants.baseUrl}Employee/GetAllEmployees/',
        ),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer ${AppConstants.token}',
        },
      );
      if (response.statusCode == 200) {
        isError = false;
        var jsonData = json.decode(response.body);
        jsonData.forEach((e) {
          EmployeeModel employeeModel = EmployeeModel.fromJson(e);
          listEmployee.add(employeeModel);
        });
      } else if (response.statusCode == 400) {
        isError = true;
        error = 'Error Occurred 400: Bad Request.';
      } else if (response.statusCode == 401) {
        isError = true;
        error = 'Error Occurred 401: Unauthorized.';
      } else if (response.statusCode == 403) {
        isError = true;
        error = 'Error Occurred 403: Forbidden.';
      } else if (response.statusCode == 404) {
        isError = true;
        error = 'Error Occurred 404: Not Found.';
      } else if (response.statusCode == 405) {
        isError = true;
        error = 'Error Occurred 405: Method Not Allowed.';
      } else if (response.statusCode == 500) {
        isError = true;
        error = 'Error Occurred 500: Internal Server Error.';
      }
    } on SocketException {
      isError = true;
      error = "No Internet Connection";
    } on HttpException {
      isError = true;
      error = "Cant Reached To Service";
    } on FormatException {
      isError = true;
      error = "Format Exception Occurred";
    } on TimeoutException {
      isError = true;
      error = "Timeout Exception Occurred";
    } catch (ex) {
      isError = true;
      error = ex.toString();
    }
  }
}
