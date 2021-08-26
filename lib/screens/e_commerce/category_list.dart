import 'package:flutter/material.dart';
import 'package:promdi_fe/screens/e_commerce/product_list.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cabagges'),
      ),
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                  tabs: [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'For You',
                    ),
                    Tab(
                      text: 'Beans',
                    ),
                  ],
                )
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              children: [
                ProductList(),
                ProductList(),
                ProductList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}