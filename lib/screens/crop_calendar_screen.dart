import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

enum CropEventType { fertilizer, irrigation, cultivation }

class CropEvent {
  final DateTime date;
  final CropEventType type;
  final String description;

  const CropEvent({
    required this.date,
    required this.type,
    required this.description,
  });
}

class CropCalendarScreen extends StatefulWidget {
  final String cropName;
  final DateTime startDate;

  const CropCalendarScreen({
    super.key,
    required this.cropName,
    required this.startDate,
  });

  @override
  State<CropCalendarScreen> createState() => _CropCalendarScreenState();
}

class _CropCalendarScreenState extends State<CropCalendarScreen> {
  late final DateTime _startDate;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  late final Map<DateTime, List<CropEvent>> _events;

  @override
  void initState() {
    super.initState();
    _startDate = widget.startDate;
    _events = _generateDummyEvents(widget.cropName);
  }

  Map<DateTime, List<CropEvent>> _generateDummyEvents(String cropName) {
    final Map<DateTime, List<CropEvent>> events = {};

    final cropSchedules = {
      'Rice': {
        'fertilizer': [7, 21, 35, 49],
        'irrigation': [1, 3, 5, 7, 14, 21, 28, 35, 42, 49, 56, 63],
        'cultivation': [14, 28, 42, 56],
      },
      'Wheat': {
        'fertilizer': [15, 30, 45],
        'irrigation': [7, 14, 21, 28, 35, 42],
        'cultivation': [21, 35],
      },
      'Tomato': {
        'fertilizer': [10, 20, 30, 40],
        'irrigation': [3, 7, 10, 14, 17, 21, 24, 28, 31, 35],
        'cultivation': [14, 21, 28, 35],
      },
      'default': {
        'fertilizer': [10, 25, 40],
        'irrigation': [5, 10, 15, 20, 25, 30, 35, 40],
        'cultivation': [15, 30],
      },
      'Orange': {'fertilizer': [], 'irrigation': [], 'cultivation': []},
    };

    final schedule = cropSchedules[cropName] ?? cropSchedules['default']!;

    for (final day in schedule['fertilizer']!) {
      final eventDate = _startDate.add(Duration(days: day));
      final event = CropEvent(
        date: eventDate,
        type: CropEventType.fertilizer,
        description: 'Apply fertilizer to $cropName',
      );

      final normalizedDate = DateTime(
        eventDate.year,
        eventDate.month,
        eventDate.day,
      );
      events[normalizedDate] = [...(events[normalizedDate] ?? []), event];
    }

    for (final day in schedule['irrigation']!) {
      final eventDate = _startDate.add(Duration(days: day));
      final event = CropEvent(
        date: eventDate,
        type: CropEventType.irrigation,
        description: 'Irrigate $cropName',
      );

      final normalizedDate = DateTime(
        eventDate.year,
        eventDate.month,
        eventDate.day,
      );
      events[normalizedDate] = [...(events[normalizedDate] ?? []), event];
    }

    for (final day in schedule['cultivation']!) {
      final eventDate = _startDate.add(Duration(days: day));
      final event = CropEvent(
        date: eventDate,
        type: CropEventType.cultivation,
        description: 'Cultivate $cropName',
      );

      final normalizedDate = DateTime(
        eventDate.year,
        eventDate.month,
        eventDate.day,
      );
      events[normalizedDate] = [...(events[normalizedDate] ?? []), event];
    }

    return events;
  }

  List<CropEvent> _getEventsForDay(DateTime day) {
    final normalizedDay = DateTime(day.year, day.month, day.day);
    return _events[normalizedDay] ?? [];
  }

  Color _getEventColor(CropEventType type) {
    switch (type) {
      case CropEventType.fertilizer:
        return Colors.green;
      case CropEventType.irrigation:
        return Colors.blue;
      case CropEventType.cultivation:
        return Colors.orange;
    }
  }

  String _getEventTypeName(CropEventType type) {
    switch (type) {
      case CropEventType.fertilizer:
        return 'Fertilizer';
      case CropEventType.irrigation:
        return 'Irrigation';
      case CropEventType.cultivation:
        return 'Cultivation';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.cropName} Calendar')),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Started on ${DateFormat('MMM dd, yyyy').format(_startDate)}',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: 32),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildLegendItem(Colors.green, 'Fertilizer'),
                  _buildLegendItem(Colors.blue, 'Irrigation'),
                  _buildLegendItem(Colors.orange, 'Cultivation'),
                ],
              ),
            ),

            TableCalendar<CropEvent>(
              firstDay: _startDate.subtract(const Duration(days: 30)),
              lastDay: _startDate.add(const Duration(days: 120)),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              calendarFormat: _calendarFormat,
              eventLoader: _getEventsForDay,
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarStyle: CalendarStyle(
                selectedDecoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                markerDecoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  if (events.isEmpty) return const SizedBox();

                  return Positioned(
                    bottom: 1,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: events.map((event) {
                        return Container(
                          width: 6,
                          height: 6,
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          decoration: BoxDecoration(
                            color: _getEventColor(event.type),
                            shape: BoxShape.circle,
                          ),
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            if (_selectedDay != null) ...[
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('EEEE, MMM dd').format(_selectedDay!),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ..._getEventsForDay(_selectedDay!).map((event) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: _getEventColor(event.type).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: _getEventColor(event.type),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              _getEventIcon(event.type),
                              color: _getEventColor(event.type),
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _getEventTypeName(event.type),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _getEventColor(event.type),
                                    ),
                                  ),
                                  Text(
                                    event.description,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    if (_getEventsForDay(_selectedDay!).isEmpty)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'No activities scheduled for this day',
                            style: TextStyle(
                              color: Colors.black54,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  IconData _getEventIcon(CropEventType type) {
    switch (type) {
      case CropEventType.fertilizer:
        return Icons.grass;
      case CropEventType.irrigation:
        return Icons.water_drop;
      case CropEventType.cultivation:
        return Icons.agriculture;
    }
  }
}
