import 'package:flutter/material.dart';
import 'package:task2/item.dart';
import 'item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<item> items = [
    item(
        name: 'Rezi Makarov',
        message: 'good to know',
        date: 'today',
        image:
            '8.webp'),
    item(
        name: 'Kris Bent',
        message: 'its been a while',
        date: 'today',
        image:
            '2.jpg'),
    item(
        name: 'Gustov Lemelo',
        message: 'hey, where are u?',
        date: 'Yesterday',
        image:
            '3.jpg'),
    item(
        name: 'Bob Ryder',
        message: 'its over!',
        date: '28 jan',
        image:
            '5.jpg'),
    item(
        name: 'Ken simade',
        message: 'Your Welcome!',
        date: '24 jan',
        image:
            '6.jpg'),
    item(
        name: 'Emma Walkins',
        message: 'i am going out!',
        date: '19 jan',
        image:
        '7.jpg'),
    item(
        name: 'Bella Hammers',
        message: 'The UI is sexy',
        date: '19 jan',
        image:
        '7.jpg'),
  ];

  Widget itemtemplate(item) {
    return Card(
        elevation: 0,
        margin: const EdgeInsets.fromLTRB(8, 1.3, 8, 1.3),
        child: ListTile(
            onTap: () {},
            title: Text(item.name),
            subtitle: Text(item.message),
            trailing: Text(item.date),
            leading: CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage('assets/${item.image}'),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text("Conversations",
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.9,
                    color: Colors.black)),
            actions: [
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                child: TextButton(
                  onPressed: () {},
                  child: Row(children: const [
                    Icon(
                      Icons.add,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Text(" Add New",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ]),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(189, 171, 171, 200),
                    ),
                  ),
                ),
              )
            ]),
        body:

        Column(children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 13, right: 13),
            height: 50,
            child: const TextField(
                decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(189, 171, 171, 235),
              prefixIcon: Icon(Icons.search),
              hintText: ("Search..."),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                borderSide: BorderSide(color: Colors.transparent, width: 10),
              ),
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(children: items.map((item) => itemtemplate(item)).toList()),
          const SizedBox(
            height: 10,
          ),
        ]),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies_rounded),
            label: 'Channels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_rounded),
            label: 'Profile',
          ),
        ]),


    );
  }
}
