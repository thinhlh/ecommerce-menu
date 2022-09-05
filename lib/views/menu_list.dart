part of '../ecommerce_menu.dart';

class MenuList extends StatelessWidget {
  final List<Menu> menu;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  const MenuList({
    super.key,
    required this.menu,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: padding,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (_, index) => MenuWidget(
        menu: menu[index],
        textStyle: textStyle,
      ),
      itemCount: menu.length,
    );
  }
}
