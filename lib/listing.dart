

import 'package:flutter/material.dart';
import 'package:society/api_call.dart';
import 'package:society/constants.dart';

class Listing extends StatefulWidget {
  const Listing({super.key});

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {

  List<dynamic> data = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
      APICall api = APICall();
      data = await api.getToDoList();
      setState(() { });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(kToolbarHeight), child: NavBar2(title: "Listing")),
      body: data.isEmpty?
      const Center(child: Text("No data"))
      :
      ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data.length,
        itemBuilder: (context, index){
          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(

              border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.4)))
            ),
            child: Text('${data[index]['userId']}. ${data[index]['title'] ?? ''}'));
        }),
    );
  }
}