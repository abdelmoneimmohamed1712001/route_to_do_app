import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_timeline_calendar/timeline/flutter_timeline_calendar.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        extentRatio: .3,
        motion: StretchMotion(),
        children: [
          SlidableAction(

            // An action can be bigger than the others.
            flex: 1,
            onPressed: (context) {

            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'remove',
          ),


        ],
      ),
      endActionPane: ActionPane(
        extentRatio: .3,
        motion: StretchMotion(),
        children: [
          SlidableAction(

            // An action can be bigger than the others.
            flex: 1,
            onPressed: (context) {

            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Edit',
          ),


        ],
      ),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 3,
                height: 100,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [Text('Task Title'), Text('Task Descreiption')],
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 21),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).primaryColor),
                  child: Icon(
                    (Icons.check),
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
