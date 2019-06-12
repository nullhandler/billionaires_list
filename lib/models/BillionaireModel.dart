import 'package:flutter/foundation.dart';
import 'package:billionaire_list/podo/BillionaireItem.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class BillionaireModel extends ChangeNotifier{

  String url = "https://forbes400.herokuapp.com/api/forbes400/getAllBillionaires";
  var list = List<BillionaireItem>();

  // Fetches the list from the api
  fetchList() async{
    var fetchedContent = await http.get(url);
    var jsonContent = json.decode(fetchedContent.body);
    for(var billionaire in jsonContent){
      list.add(BillionaireItem(billionaire));
    }
    notifyListeners();
  }

  BillionaireItem getBillionaire(int pos){
    list[pos];
  }
}