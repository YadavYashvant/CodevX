import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void openPostBox() {
    showDialog(
      context: context, 
    builder: (context) => const AlertDialog(
      content: TextField(),
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: openPostBox,
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List demo = ["Yashvant", "Yashvant", "Yashvant", "Yashvant", "Yashvant"];

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.04,
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              // Step 3: Populate the ListView with instances of your custom list item class
              _buildListItem(MyListItem(
                title: 'Item 1',
                subtitle: 'Subtitle 1',
                iconData: CupertinoIcons.star,
              )),
              _buildListItem(MyListItem(
                title: 'Item 2',
                subtitle: 'Subtitle 2',
                iconData: CupertinoIcons.circle,
              )),
              _buildListItem(MyListItem(
                title: 'Item 3',
                subtitle: 'Subtitle 3',
                iconData: CupertinoIcons.square,
              )),
              _buildListItem(MyListItem(
                title: 'Item 3',
                subtitle: 'Subtitle 3',
                iconData: CupertinoIcons.square,
              )),
              _buildListItem(MyListItem(
                title: 'Item 3',
                subtitle: 'Subtitle 3',
                iconData: CupertinoIcons.square,
              )),
              _buildListItem(MyListItem(
                title: 'Item 3',
                subtitle: 'Subtitle 3',
                iconData: CupertinoIcons.square,
              )),
              _buildListItem(MyListItem(
                title: 'Item 3',
                subtitle: 'Subtitle 3',
                iconData: CupertinoIcons.square,
              )),
              _buildListItem(MyListItem(
                title: 'Item 3',
                subtitle: 'Subtitle 3',
                iconData: CupertinoIcons.square,
              )),
              _buildListItem(MyListItem(
                title: 'Item 3',
                subtitle: 'Subtitle 3',
                iconData: CupertinoIcons.square,
              )),
              // Add more items as needed
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(MyListItem item) {
    return Card(
      child: ListTile(
        leading: Icon(item.iconData),
        title: Text(item.title),
        subtitle: Text(item.subtitle),
        onTap: () {
          // Add any onTap functionality here
        },
      ),
    );
  }
}

class MyListItem {
  final String title;
  final String subtitle;
  final IconData iconData;

  MyListItem({
    required this.title,
    required this.subtitle,
    required this.iconData,
  });
}
*/