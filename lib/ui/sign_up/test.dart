import 'package:flutter/material.dart';
import 'package:easy_dialogs/easy_dialogs.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final List<String> _ringTones = [
    'None',
    'Callisto',
    'Ganymede',
    'Luna',
    'Oberon',
    'Phobos',
    'Dione',
    'Jungle Gym',
    'Ukulele',
    'Snowflakes',
  ];


  String _ringTone = "None";

  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListTile(
            onTap: _openRingtoneDialog,
            title: Text(_ringTone),
          ),

    );
  }

  _openRingtoneDialog() {
    showDialog(
        context: context,
        builder: (context) => SingleChoiceConfirmationDialog<String>(
            title: Text('Phone ringtone'),
            initialValue: _ringTone,
            items: _ringTones,
            onSelected: _onSelected,
            onSubmitted: _onSubmitted));
  }


  void _onSelected(String value) {
    print('Selected $value');
    setState(() {
      _ringTone = value;
    });
  }

  void _onSubmitted(String value) {
    print('Submitted $value');
    setState(() {
      _ringTone = value;
    });
  }
}