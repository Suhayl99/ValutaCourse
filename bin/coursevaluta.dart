import 'dart:convert';

import 'package:coursevaluta/coursevaluta.dart' as coursevaluta;
import 'package:http/http.dart';

import 'currency_model.dart';
Future GetCourse() async {
 List<CurrencyModel>  currencyModel = [];
  var response = await get(Uri.parse('https://cbu.uz/oz/arkhiv-kursov-valyut/json/'));
    if(response.statusCode == 200){
    currencyModel = [
      for(final item in jsonDecode(response.body)) CurrencyModel.fromJson(item)
    ];
  }
  return currencyModel;
}
