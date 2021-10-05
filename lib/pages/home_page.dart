import 'package:find_your_makeup/widgets/brands_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentScreen = 0;

  final List<Widget> _screens = [BrandsList()];

  @override
  void initState() {
     super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController(initialPage: 0);

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: _screens,
          onPageChanged: (page) {
            setState(() {
              _currentScreen = page;
            });
          },
        ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.amber,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType
            .fixed, //this is necessary to avoid the items override the color definition
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center_outlined),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),

        ],
        currentIndex: _currentScreen,
        onTap: (index) => {
          setState(() {
            controller.jumpToPage(index);
            _currentScreen = index;
          })
        },
      ),

        );
  }
}
