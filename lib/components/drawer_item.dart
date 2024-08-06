import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget{
  final String itemName;
  final IconData itemIcon;
  //Function(bool?)? onChanged;
  final String navigate;

  const DrawerItem({
    super.key,
    required this.itemName,
    this.itemIcon = Icons.add,
    //required this.onChanged,
    required this.navigate
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: ListTile(
        leading: Icon(
          itemIcon,
          size: 30,
        ),
        title: Text(
          itemName,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, navigate);
        },
      ),
    );
  }

}