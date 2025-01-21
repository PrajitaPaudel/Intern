import 'package:flutter/material.dart';
import 'package:intern_project/common_widget/small_text.dart';

class TMenuItem extends StatelessWidget {
  final String itemName;
  final IconData icon;
  final IconData iconAdd;
  final VoidCallback? onTap;
  final VoidCallback? onPress;
  final Color? backGroundColor;
  final String des;

  TMenuItem({
    required this.itemName,
    required this.icon,
    this.backGroundColor = Colors.blueGrey,
    this.onTap, this.onPress, required this.des,
     this.iconAdd=Icons.add,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: Icon(
                  icon,
                  color: Colors.grey.shade700,
                ),
              ),
              SmallText(
                text: itemName,
                textColor: Colors.grey.shade700,
                fontWeight: FontWeight.w700,
                size: 17,
              ),
              SizedBox(
                width: 4,
              ),
              SmallText(
                text: des,
                textColor: Colors.grey.shade500,
                fontWeight: FontWeight.w500,
                size: 13,
              ),
              Spacer(),
              IconButton(
                  onPressed: onPress,
                  icon: Icon(iconAdd,color: Colors.grey.shade700))
            ],
          ),
        ),
      ),
    );
  }
}
