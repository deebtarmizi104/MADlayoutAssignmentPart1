import 'package:flutter/material.dart';
import 'ToggleState.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  ItemState createState() => ItemState();
}

class ItemState extends State<MyApp> {
  final List<Item> deviceItem = [
    Item(
      name: 'Plug Ammar',
      isOn: false,
      image: 'plug_ammar.png',
    ),
    Item(
      name: 'Bilik Hana',
      isOn: false,
      image: 'bilik_hana.png',
    ),
    Item(
      name: 'Plug 3 Patio',
      isOn: false,
      image: 'plug3patio.png',
    ),
    Item(
      name: 'Gate Light Switch',
      isOn: false,
      image: 'gate_light.png',
    ),
    Item(
      name: 'Parking Lights',
      isOn: false,
      image: 'parking_lights.png',
    ),
    Item(
      name: 'Bridge Light',
      isOn: false,
      image: 'bridge.png',
    ),
  ];

  void toggleState(String name) {
    int deviceIndex = deviceItem.indexWhere((device) => device.name == name);
    if (deviceIndex != -1) {
      setState(() {
        deviceItem[deviceIndex].isOn = !deviceItem[deviceIndex].isOn;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoT App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(title: Text('My Home >')),
        body: AppTab(deviceItem, toggleState),
      ),
    );
  }
}
