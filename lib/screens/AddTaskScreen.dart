import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:provider/provider.dart';
class AddTaskScreen extends StatelessWidget {

  static String newTaskTitle;

  @override
  Widget build(BuildContext context) {

    return Container(

      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0
              ),
            ),
            TextField(
              autofocus: true ,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
                print(newTaskTitle);
              },
            ),
            FlatButton(
              child: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                ),
               ),
              color: Colors.lightBlueAccent,
              onPressed: (){
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            )
          ],
      ),
      ),
    );
  }
}
