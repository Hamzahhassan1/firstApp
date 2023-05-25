import 'package:flutter/material.dart';

import 'first.dart';
import 'home.dart';

void main() {
  runApp(const MaterialApp(
    home: Root(),
  ));
}

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentIndex = 2;
  bool g = false;
  String title = "Home";
  Widget body = Container();

  List<category> catss = [
    category(id: 1, name: "coffe", icon: Icons.category_outlined),
    category(id: 2, name: "tea", icon: Icons.e_mobiledata_outlined),
    category(id: 3, name: "guies", icon: Icons.yard_outlined),
    category(id: 4, name: "pipse", icon: Icons.padding_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Hamza Hassan"),
                currentAccountPicture: Image.asset("images/h.png"),
                accountEmail: Text("hamza776977309@gmail.com")),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              subtitle: Text("settings"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              subtitle: Text("settings"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              subtitle: Text("settings"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              subtitle: Text("settings"),
              trailing: Icon(Icons.arrow_forward),
            ),
            Text("Hamza"),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ExpansionTile(
                      initiallyExpanded: true,
                      title: Text("cataegroy"),
                      children: [
                        for (int i = 0; i < catss.length; i++)
                          CheckboxListTile(
                              secondary: Icon(catss[i].icon!),
                              title: Text(catss[i].name!),
                              value: catss[i].select,
                              onChanged: (value) {
                                setState(() {
                                  catss[i].select = value!;
                                });
                              }),
                      ],
                    ),
                    ExpansionTile(
                      initiallyExpanded: true,
                      title: Text("color"),
                      children: [
                        for (int i = 0; i < catss.length; i++)
                          CheckboxListTile(
                              secondary: Icon(catss[i].icon!),
                              title: Text(catss[i].name!),
                              value: catss[i].select,
                              onChanged: (value) {
                                setState(() {
                                  catss[i].select = value!;
                                });
                              }),
                      ],
                    ),
                    ExpansionTile(
                      initiallyExpanded: true,
                      title: Text("color"),
                      children: [
                        for (int i = 0; i < catss.length; i++)
                          CheckboxListTile(
                              secondary: Icon(catss[i].icon!),
                              title: Text(catss[i].name!),
                              value: catss[i].select,
                              onChanged: (value) {
                                setState(() {
                                  catss[i].select = value!;
                                });
                              }),
                      ],
                    ),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("filter"))
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          switch (index) {
            case 0:
              title = "Account";
              body = Container(
               // color: Colors.red,
              );
              break;
            case 1:
              title = "Notification";
              body = Container(
                color: Colors.green,
              );
              break;
            case 2:
              title = "Home";
              body = Container(
                color: Colors.white,
              );
              break;
            case 3:
              title = "Message";
              body = Container(
                color: Colors.yellow,
              );
              break;
            case 4:
              title = "favirote";
              body = Container(
                color: Colors.orange,
              );
              break;
          }
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => first()));
                  },
                  child: Icon(Icons.person
                  ),
              ),
              label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Not"),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => HomePage()));
                },
                child: Icon(Icons.home
                ),
              ),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "favorite"),
        ],
      ),
    );
  }
}

class category {
  int? id;
  String? name;
  IconData? icon;
  bool? select;

  category({this.id, this.icon, this.name, this.select = false});
}
