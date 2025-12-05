import 'package:flutter/material.dart';
import 'package:musium/core/color.dart';

class LibraryRow extends StatelessWidget {
  const LibraryRow({
    super.key,
    required this.function,
    required this.icon,
    required this.text,
  });

  final VoidCallback function;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      
      child: Row(
        spacing: 20,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.primaryColor,

            ),
            child: Icon(
              icon,
              size: 25
            ),
          ),
      
          Text(
            text,
            style: Theme.of(context).textTheme.titleSmall
          )
        ],
      ),
    );
  }
}