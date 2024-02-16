import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeeklyCalendar extends StatefulWidget {
  const WeeklyCalendar({
    Key? key,
    required this.selectedDates,
    required this.onTapDate,
    this.backgroundColor = Colors.transparent,
    this.selectedDigitBackgroundColor = const Color(0xFF2A2859),
    this.selectedDigitBorderColor = const Color(0x00000000),
    this.selectedDigitColor = const Color(0xFFFFFFFF),
    this.digitsColor = const Color(0xFF000000),
    this.weekdayTextColor = const Color(0xFF303030),
    this.enableWeeknumberText = false,
    this.weeknumberColor = const Color(0xFFB2F5FE),
    this.weeknumberTextColor = const Color(0xFF000000),
  }) : super(key: key);

  /// The current selected day
  final Set<DateTime> selectedDates;

  /// Callback function with the new selected date
  final Function(DateTime) onTapDate;

  /// Background color
  final Color backgroundColor;

  /// Color of the selected day circle
  final Color selectedDigitBackgroundColor;

  /// Color of the border of the selected day circle
  final Color selectedDigitBorderColor;

  /// Color of the selected digit text
  final Color selectedDigitColor;

  /// Color of the unselected digits text
  final Color digitsColor;

  /// Is the color of the weekdays 'Mon', 'Tue'...
  final Color weekdayTextColor;

  /// Set to false to hide the weeknumber textfield to the left of the slider
  final bool enableWeeknumberText;

  /// Color of the weekday container
  final Color weeknumberColor;

  /// Color of the weekday text
  final Color weeknumberTextColor;

  @override
  State<WeeklyCalendar> createState() => _WeeklyCalendarState();
}

class _WeeklyCalendarState extends State<WeeklyCalendar> {
  late DateTime _todayDateTime;

  // About 100 years back in time should be sufficient for most users, 52 weeks * 100
  final int _weekIndexOffset = 5200;

  late final PageController _controller;
  late Set<DateTime> _selectedDates;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _weekIndexOffset);
    _selectedDates = _selectedDatesWithDaysOnly();
    _todayDateTime = DateUtils.dateOnly(DateTime.now());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant WeeklyCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);
    _selectedDates = _selectedDatesWithDaysOnly();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      color: widget.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, weekIndex) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _weekdays(weekIndex - _weekIndexOffset),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _weekdays(int weekIndex) {
    List<Widget> weekdays = [];

    final initialSelectedDay = _todayDateTime;

    for (int i = 0; i < 7; i++) {
      final int offset = i + 1 - initialSelectedDay.weekday;
      final int daysToAdd = weekIndex * 7 + offset;
      final DateTime dateTime =
          DateUtils.addDaysToDate(initialSelectedDay, daysToAdd);
      final dateOnly = DateUtils.dateOnly(dateTime);
      weekdays.add(_dateButton(dateOnly));
    }
    return weekdays;
  }

  Widget _dateButton(DateTime dateTime) {
    final String weekday = DateFormat('EE').format(dateTime);

    final bool isSelected = _selectedDates.contains(dateTime);
    final bool isTodayDate = DateUtils.isSameDay(dateTime, _todayDateTime);

    final isAfterToday = dateTime.isAfter(_todayDateTime);

    final weekdayTextColor = !isAfterToday
        ? widget.weekdayTextColor
        : Theme.of(context).colorScheme.secondary.withOpacity(0.7);

    final Color digitTextColor;
    if (isSelected) {
      digitTextColor = widget.selectedDigitColor;
    } else if (!isAfterToday) {
      digitTextColor = widget.digitsColor;
    } else {
      digitTextColor = Theme.of(context).colorScheme.secondary.withOpacity(0.7);
    }

    return Expanded(
      child: GestureDetector(
        onTap: !isAfterToday ? () => widget.onTapDate(dateTime) : null,
        child: Container(
          // Bugfix, the transparent container makes the GestureDetector fill the Expanded
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  weekday,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: weekdayTextColor,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    // Border around today's date
                    color: isTodayDate
                        ? widget.selectedDigitBorderColor
                        : Colors.transparent,
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundColor: isSelected
                      ? widget.selectedDigitBackgroundColor
                      : widget.backgroundColor,
                  radius: 14.0,
                  child: Text(
                    '${dateTime.day}',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: digitTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Set<DateTime> _selectedDatesWithDaysOnly() => widget.selectedDates
      .map((dateTime) => DateUtils.dateOnly(dateTime))
      .toSet();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
