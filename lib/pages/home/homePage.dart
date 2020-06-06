import 'package:flutter/cupertino.dart';
import 'package:fstore/pages/home/tabs/productListTab.dart';
import 'package:fstore/pages/home/tabs/searchTab.dart';
import 'package:fstore/pages/home/tabs/shoppingCartTab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
        // CupertinoPageScaffold(
        //   navigationBar: CupertinoNavigationBar(
        //     middle: Text('Cupertino Store'),
        //   ),
        //   child: SizedBox(),
        // );
        CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            title: Text(
              'Products',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
            ),
            title: Text(
              'Search',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.shopping_cart,
            ),
            title: Text(
              'Cart',
            ),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: ProductListTab(),
                );
              },
            );
            break;
          case 1:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: SearchTab(),
                );
              },
            );
            break;
          case 2:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: ShoppingCartTab(),
                );
              },
            );
            break;
        }
        return returnValue;
      },
    );
  }
}
