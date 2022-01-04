// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_web_libraries_in_flutter, avoid_returning_null_for_void
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/addproduct.dart';
import 'package:flutter_application_1/screens/home_/components/body.dart';
import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/screens/home_/components/subscreen_body.dart';
import 'package:flutter_application_1/screens/loginpage.dart';

import '../../editproduct.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 45.0,
          backgroundColor: KHighlightColor,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                showSearch(
                    context: context, delegate: CustomSearchDelegate());
              },
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "All products"),
              Tab(text: "Skin products"),
              Tab(text: "Hair products"),
              Tab(text: "Nails product"),
              Tab(text: "Discounts"),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: kDefaultPadding / 2),
          child: TabBarView(
            children: [
              Body(),
              subScreen(),
              subScreen(),      
              subScreen(),
              subScreen(),
              subScreen(),                                    
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: <Color>[KHighlightColor])),
                accountName: Text(''),
                accountEmail: Text(""),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text(' Add your product',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                onTap: () => AddProduct(),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit your product',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                        onTap: ()=> EditProduct(),
              ),
              Divider(),
              ListTile(
                title: Text('Log out',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                leading: Icon(Icons.logout_outlined),
                onTap: () => LoginPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'hand cream',
    'moistrizer',
    'cleanser',
    'body lotion',
    'body scrub',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var cleanser in searchTerms) {
      if (cleanser.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(cleanser);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var cleanser in searchTerms) {
      if (cleanser.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(cleanser);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
