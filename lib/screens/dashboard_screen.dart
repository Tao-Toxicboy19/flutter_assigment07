import 'package:flutter/material.dart';
import 'package:flutter_assigment07/screens/books_screen.dart';
import 'package:flutter_assigment07/screens/product_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String _title = "Product";
  int _currentIndex = 1;

  final List<Widget> _pages = [
    const ProductScreen(),
    const BooksScreen(),
  ];

  void onTapped(int index) {
    setState(
      () {
        _currentIndex = index;
        switch (index) {
          case 0:
            _title = "Product";
            break;
          case 1:
            _title = "Books";
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        // actions: (_title == "Orders")
        //     ? <Widget>[
        //         Padding(
        //           padding: const EdgeInsets.only(right: 15),
        //           child: IconButton(
        //             icon: const Icon(Icons.add),
        //             onPressed: () {
        //               Navigator.pushNamed(context, AppRouter.addOrder);
        //             },
        //           ),
        //         ),
        //       ]
        //     : null,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.whatshot_sharp),
          //   label: 'Orders',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Books',
          ),
        ],
        onTap: (value) {
          onTapped(value);
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.amber.shade900,
      ),
    );
  }
}
