import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function togglecheckboxState;
  final Function longPressedCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.togglecheckboxState, this.longPressedCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(taskTitle, style: TextStyle(decoration: isChecked? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: togglecheckboxState,
      ),
      onLongPress: longPressedCallBack ,
    );
  }
}

//void checkboxCallback(bool checkboxState){
//  setState(() {
//    isChecked = checkboxState;
//  });
//}

