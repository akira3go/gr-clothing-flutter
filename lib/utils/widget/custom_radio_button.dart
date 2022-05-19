import 'package:flutter/material.dart';

class CustomRadioButton<T> extends StatelessWidget {
  const CustomRadioButton({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onTap,
    this.image,
  }) : super(key: key);

  final String title;
  final T value;
  final T groupValue;
  final Widget? image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    return Padding(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: () => onTap(),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(
              isSelected ? Icons.radio_button_on : Icons.radio_button_off,
              color: isSelected ? Colors.blue : Colors.grey,
            ),
            if (image != null) image!,
            Text(title),
          ],
        ),
      ),
    );
  }
}
