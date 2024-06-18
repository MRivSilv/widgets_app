import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controles UI"),
      ), // AppBar
      body: _UIControlsView(),
    );
  }
}
class _UIControlsView extends StatefulWidget {
  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation {auto, avion, buque, submarino}

class _UIControlsViewState extends State<_UIControlsView>{
  bool isDeveloper= true;
  Transportation selectedTransportation = Transportation.auto;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("Modo Desarrollador"),
          subtitle: const Text("Controles adicionales"),
          value: isDeveloper,
          onChanged: (value) => setState( () {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text("Vehiculo de transporte"),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text("Auto"),
              subtitle: const Text("Viajar en auto."),
              value: Transportation.auto,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.auto;
              }),
            ),
            RadioListTile(
              title: const Text("Avión"),
              subtitle: const Text("Viajar en avión."),
              value: Transportation.avion,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.avion;
              }),
            ),
            RadioListTile(
              title: const Text("Buque"),
              subtitle: const Text("Viajar en buque."),
              value: Transportation.buque,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.buque;
              }),
            ),
            RadioListTile(
              title: const Text("Submarino"),
              subtitle: const Text("Viajar en submarino."),
              value: Transportation.submarino,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarino;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text("Quiere desayuno?"),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
      ],
    );
  }
}

