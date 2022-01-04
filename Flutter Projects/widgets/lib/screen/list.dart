import 'package:flutter/material.dart';

// List examples :- ListView(), ListView.builder(),ListView.separated(), Gridview.count()

List<String> country = [
  'Nepal',
  'India',
  'Pakistan',
  'Bhutan',
  'Bangladesh',
  'Maldivs',
  'Sri Lanka',
  'Afganistan'
];

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of country"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              debugPrint("You have clicked phone.");
            },
            leading: Icon(Icons.phone),
            title: Text("Phone"),
          ),
          Divider(
            thickness: 3,
            color: Colors.cyan,
          ),
          ListTile(
            title: Text(country[1]),
          ),
          ListTile(
            title: Text(country[2]),
          ),
          ListTile(
            title: Text(country[3]),
          ),
          ListTile(
            title: Text(country[4]),
          ),
          ListTile(
            title: Text(country[5]),
          ),
          ListTile(
            title: Text(country[6]),
          ),
          ListTile(
            title: Text(country[7]),
          ),
        ],
      ),
    );
  }
}

// ListView.builder
class ListViewBuilderExample extends StatefulWidget {
  const ListViewBuilderExample({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderExample> createState() => _ListViewBuilderExampleState();
}

class _ListViewBuilderExampleState extends State<ListViewBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of country"),
      ),
      body: ListView.builder(
        itemCount: country.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}.'),
            title: Text(country[index]),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  country.removeAt(index);
                });
              },
              icon: Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}

// ListView.builder
class ListViewSeparatedExample extends StatefulWidget {
  const ListViewSeparatedExample({Key? key}) : super(key: key);

  @override
  State<ListViewSeparatedExample> createState() =>
      _ListViewSeparatedExampleState();
}

class _ListViewSeparatedExampleState extends State<ListViewSeparatedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of country"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index + 1}.'),
              title: Text(country[index]),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    country.removeAt(index);
                  });
                },
                icon: Icon(Icons.delete),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2,
              color: Colors.amber,
            );
          },
          itemCount: country.length),
    );
  }
}

//GridView
class GridViewExample extends StatefulWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  _GridViewExampleState createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Example"),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(30, (index) {
          return Center(
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(width: 5, color: Colors.red),
              ),
              child: Text(
                'Item ${index + 1}',
              ),
            ),
          );
        }),
      ),
    );
  }
}

//Horizontal List
class HorizontalListExample extends StatefulWidget {
  const HorizontalListExample({Key? key}) : super(key: key);

  @override
  _HorizontalListExampleState createState() => _HorizontalListExampleState();
}

class _HorizontalListExampleState extends State<HorizontalListExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of country"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.cyan,
              child: Text("Nepal"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber,
              child: Text("India"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.teal,
              child: Text("Bhutan"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.cyan,
              child: Text("Maldivs"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber,
              child: Text("Pakistan"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.teal,
              child: Text("Banglades"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.cyan,
              child: Text("Afganistan"),
            ),
          ),
        ],
      ),
    );
  }
}
