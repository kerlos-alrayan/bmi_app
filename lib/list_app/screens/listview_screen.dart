import 'package:flutter/material.dart';
import 'package:quiz_app/list_app/model/services/data_model.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Users'),
      ),
      body: ListView.builder(
          itemCount: getData.listOfData.length,
          itemBuilder: (context, index) => ListViewBody(index:index)),
    );
  }
}


GetData getData = GetData();
class ListViewBody extends StatelessWidget {
   const ListViewBody({super.key,required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final listOfItem = getData.listOfData[index];
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(listOfItem.image),
          ),
          title: Text(listOfItem.name),
          titleTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subtitle: Text(listOfItem.number),
        ),
        Divider(
          color: Colors.black12,
        )
      ],
    );
  }
}

