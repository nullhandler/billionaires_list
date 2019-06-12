import 'package:billionaire_list/models/BillionaireModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  BillionaireModel model;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Can't put this in initState() due to provider
    model = Provider.of<BillionaireModel>(context);
    model.fetchList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Billionaire's List")),
      body: ListView.builder(
          itemCount: model.list.length,
          itemBuilder: (context, pos){
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(model.list[pos].imageUrl)),
                title: Text(model.list[pos].name),
              ),
            );
          }
      ),
    );
  }
}
