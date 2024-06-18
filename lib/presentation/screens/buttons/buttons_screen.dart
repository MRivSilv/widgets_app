import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

    static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen')
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
  final colors = Theme.of(context).colorScheme;
  return SizedBox(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        spacing: 10,
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Botón Elevado')),
          const ElevatedButton(onPressed: null, child: Text('Elevado desactivado')),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.access_alarm_rounded),
            label: const Text('Icono Elevado'),
          ),
          FilledButton(onPressed: () {}, child: const Text('Relleno')),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.access_time),
            label: const Text('Icono Relleno'),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('Bordeado')),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.terminal),
            label: const Text('Icono Bordeado'),
          ),
          TextButton(onPressed: (){}, child: const Text('Texto')),
          TextButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.account_box_outlined),
            label: const Text('Texto Icono')
          ),

          IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration)),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.app_registration_rounded),
            style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(colors.primary),
            iconColor: const MaterialStatePropertyAll(Colors.white),
              ), 
          ),
        ],
      ),
    ),
  );
}
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
