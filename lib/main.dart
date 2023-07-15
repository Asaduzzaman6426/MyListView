import 'package:flutter/material.dart';

void main() {
  runApp(const MyListView());
}

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> myList = [];
  List<String> myListPrice = [];
  String p = "images/b.png";
  String m = "images/a.jpg";
  String name = "";
  String age = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Numeric List'),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: myList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            color: Colors.teal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  myList[index],
                                  style: TextStyle(
                                      fontSize: 38, color: Colors.white),
                                ),
                                Text(
                                  myListPrice[index],
                                  style: TextStyle(
                                      fontSize: 38, color: Colors.white),
                                ),
                                Image.asset(
                                  myList[index] == "plus" ? p : m,
                                  height: 50,
                                  width: 50,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                        ),
                        labelText: "Name",
                        hintText: "What do people call you?"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                        ),
                        labelText: "age",
                        hintText: "What is your age?"),
                    onChanged: (typed) {
                      age = typed;
                      setState(() {});
                    },
                  ),
                  InkWell(
                    onTap: () {
                      myList.add(name);
                      myListPrice.add(age);
                      setState(() {});
                    },
                    child: Container(
                      color: Colors.blueGrey,
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
