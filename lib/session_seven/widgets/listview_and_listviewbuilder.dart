import 'package:flutter/material.dart';

import 'custom_container.dart';

class ListViewAndListViewBuilder extends StatelessWidget {
  const ListViewAndListViewBuilder({super.key, required this.isBuilder});

  // check if want show the listview builder or listview
  final bool isBuilder;

  @override
  Widget build(BuildContext context) {
    return isBuilder ? _buildListViewBuilder() : _buildListView();
  }

  Widget _buildListView() {
    return ListView(
      children: [
        CustomContainer(index: 1),
        CustomContainer(index: 2),
        CustomContainer(index: 3),
        CustomContainer(index: 4),
        CustomContainer(index: 5),
        CustomContainer(index: 6),
        CustomContainer(index: 7),
        CustomContainer(index: 8),
      ],
    );
  }

  Widget _buildListViewBuilder() {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) => CustomContainer(index: index),
    );
  }


}
