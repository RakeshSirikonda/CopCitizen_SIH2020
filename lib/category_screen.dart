import 'package:flutter/material.dart';

import './category_data_home.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CopCitizen',
        ),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        
        children: DUMMY_CATEGORY
            .map((cData) => CategoryItem(cData.title, cData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
