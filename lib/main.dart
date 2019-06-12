import 'package:flutter/material.dart';
import 'screens/MainScreen.dart';
import 'package:provider/provider.dart';
import 'models/BillionaireModel.dart';

void main() => runApp(
    MaterialApp(
      home: ChangeNotifierProvider<BillionaireModel>(
        builder: (context) => BillionaireModel(),
        child: MainScreen(),
      ),
    )
);
