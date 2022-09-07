part of '../ecommerce_menu.dart';

class Menu {
  final String id;
  final String title;
  final String icon;
  final String target;
  final MenuAction menuAction;

  Menu({
    required this.id,
    required this.title,
    required this.icon,
    required this.target,
    required this.menuAction,
  });
}
