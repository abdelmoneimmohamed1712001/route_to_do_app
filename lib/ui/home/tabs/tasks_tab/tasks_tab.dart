import 'package:flutter/material.dart';
import 'package:flutter_timeline_calendar/timeline/flutter_timeline_calendar.dart';
import 'package:todo_app_c11_friday/ui/widgets/task_item_widget.dart';

class TasksTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineCalendar(
          calendarType: CalendarType.GREGORIAN,
          calendarLanguage: "en",
          calendarOptions: CalendarOptions(
            viewType: ViewType.DAILY,
            toggleViewType: true,
            headerMonthElevation: 10,
            headerMonthShadowColor: Colors.black26,
            headerMonthBackColor: Colors.transparent,
          ),
          dayOptions: DayOptions(

              selectedBackgroundColor: Theme.of(context).primaryColor,
              compactMode: true,
              weekDaySelectedColor: const Color(0xff3AC3E2),
              disableDaysBeforeNow: true),
          headerOptions: HeaderOptions(
              weekDayStringType: WeekDayStringTypes.SHORT,
              monthStringType: MonthStringTypes.FULL,
              backgroundColor: const Color(0xff3AC3E2),
              headerTextColor: Colors.black),
          onChangeDateTime: (datetime) {
            print(datetime.getDate());
          },
        ),

        TaskItemWidget(),
      ],
    );


  }
}
