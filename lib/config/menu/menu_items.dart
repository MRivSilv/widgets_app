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
    icon: Icons.smart_button_outlined),
    MenuItem(
    title: 'Tarjeta', 
    subTitle: 'Varias Tarjetas', 
    link: '/cards', 
    icon: Icons.credit_card
    ),
    MenuItem(
    title: 'Indicador de Progreso', 
    subTitle: 'Generales y Controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded
    ),
    MenuItem(
    title: 'SnackBars y Dialogos', 
    subTitle: 'Indicadores en pantalla', 
    link: '/snackbar', 
    icon: Icons.inbox_outlined
    ),
    MenuItem(
    title: 'Contenedor Animado', 
    subTitle: 'Statefull widget animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_rounded
    ),
    MenuItem(
    title: 'Controles UI y Tiles', 
    subTitle: 'Controles de Flutter', 
    link: '/ui_controls', 
    icon: Icons.car_rental_outlined
    ),
    MenuItem(
    title: 'Introduccion a la aplicacion', 
    subTitle: 'Tutorial de introduccion', 
    link: '/app_tutorial', 
    icon: Icons.accessible_rounded
    ),
    MenuItem(
    title: 'Scroll infinito y pull', 
    subTitle: 'Listas infinitas y pull to refresh', 
    link: '/infinite_scroll', 
    icon: Icons.list_alt_rounded
    ),
];