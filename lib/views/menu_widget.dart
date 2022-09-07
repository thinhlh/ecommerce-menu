part of '../ecommerce_menu.dart';

class MenuWidget extends StatelessWidget {
  final Menu menu;
  final TextStyle? textStyle;
  const MenuWidget({
    super.key,
    required this.menu,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          menu.icon,
          fit: BoxFit.contain,
          height: 40,
          width: 40,
        ),
        const SizedBox(height: 8),
        Text(
          menu.title,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.fade,
          style: textStyle,
        ),
      ],
    );
  }
}
