import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

  const appMenuItems = <MenuItem>[
    MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones', 
    link: '/buttons', 
    icon: Icons.smart_buton_outlined),
    MenuItem(
    title: 'Tarjeta', 
    subTitle: 'Varias Tarjetas', 
    link: '/cards', 
    icon: Icons.credit_card
    ),
];