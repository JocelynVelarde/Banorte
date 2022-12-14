import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelectionMode = false;
  List<Map> staticData = MyData.data;
  Map<int, bool> selectedFlag = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contactos'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemBuilder: (builder, index) {
          Map data = staticData[index];
          selectedFlag[index] = selectedFlag[index] ?? false;
          bool isSelected = selectedFlag[index];
          Container(
            child: GestureDetector(
              onDoubleTap: (() {
                showInSnackBar("Transacción Exitosa :)");
              }),
            ),
          );
          return ListTile(
            onLongPress: () => onLongPress(isSelected, index),
            onTap: () => onTap(isSelected, index),
            title: Text("${data['name']}"),
            textColor: Colors.white,
            subtitle: Text("${data['email']}"),
            leading: _buildSelectIcon(isSelected, data),
          );
        },
        itemCount: staticData.length,
      ),
      floatingActionButton: _buildSelectAllButton(),
    );
  }

  void onTap(bool isSelected, int index) {
    if (isSelectionMode) {
      setState(() {
        selectedFlag[index] = !isSelected;
        isSelectionMode = selectedFlag.containsValue(true);
      });
    } else {
      // Open Detail Page
    }
  }

  void onLongPress(bool isSelected, int index) {
    setState(() {
      selectedFlag[index] = !isSelected;
      isSelectionMode = selectedFlag.containsValue(true);
    });
  }

  Widget _buildSelectIcon(bool isSelected, Map data) {
    if (isSelectionMode) {
      return Icon(
        isSelected ? Icons.check_box : Icons.check_box_outline_blank,
        color: Colors.white,
      );
    } else {
      return CircleAvatar(
        child: Text('${data['name'][0]}' + '${data['name'][1]}'),
        backgroundColor: Colors.redAccent,
      );
    }
  }

  Widget _buildSelectAllButton() {
    bool isFalseAvailable = selectedFlag.containsValue(false);
    if (isSelectionMode) {
      return FloatingActionButton(
        onPressed: _selectAll,
        child: Icon(
          isFalseAvailable ? Icons.done_all : Icons.remove_done,
        ),
      );
    } else {
      return null;
    }
  }

  void _selectAll() {
    bool isFalseAvailable = selectedFlag.containsValue(false);
    // If false will be available then it will select all the checkbox
    // If there will be no false then it will de-select all
    selectedFlag.updateAll((key, value) => isFalseAvailable);
    setState(() {
      isSelectionMode = selectedFlag.containsValue(true);
    });
  }

  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context)
        .showSnackBar(new SnackBar(content: new Text(value)));
  }
}
