import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const LadysFingerApp());
}

class LadysFingerApp extends StatelessWidget {
  const LadysFingerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lady’s Finger Calendar',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const LadysFingerVerticalScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LadysFingerVerticalScreen extends StatefulWidget {
  const LadysFingerVerticalScreen({super.key});

  @override
  State<LadysFingerVerticalScreen> createState() =>
      _LadysFingerVerticalScreenState();
}

class _LadysFingerVerticalScreenState extends State<LadysFingerVerticalScreen> {
  DateTime? _startDay;
  DateTime _focusedDay = DateTime.now();
  final List<Map<String, dynamic>> _events = [];

  @override
  void initState() {
    super.initState();
    _loadStartDate();
  }

  Future<void> _loadStartDate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final millis = prefs.getInt('startDateMillis');
    if (millis != null) {
      DateTime saved = DateTime.fromMillisecondsSinceEpoch(millis);
      setState(() {
        _startDay = saved;
        _focusedDay = saved;
        _generateSchedule(saved);
      });
    }
  }

  Future<void> _saveStartDate(DateTime date) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('startDateMillis', date.millisecondsSinceEpoch);
  }

  void _pickStartDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _startDay ?? DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2035),
    );
    if (picked != null) {
      setState(() {
        _startDay = picked;
        _focusedDay = picked;
      });
      _saveStartDate(picked);
      _generateSchedule(picked);
    }
  }

  void _generateSchedule(DateTime start) {
    _events.clear();
    // Seeding once on day 7
    _addEvent(start.add(const Duration(days: 6)), 'Seed grown', Icons.eco, Colors.green);

    // Fertilizer once per month for 5 months (every 30 days)
    for (int i = 0; i < 5; i++) {
      final fertDate = start.add(Duration(days: i * 30));
      _addEvent(fertDate, 'Fertilizer', Icons.backpack, Colors.brown);
      // Watering at same time
      _addEvent(fertDate, 'Watering', Icons.water_drop, Colors.blueAccent);
    }

    // Watering schedule (avoid duplicates on fertilizer days)
    final wateringRules = [
      [0, 29, 3],
      [30, 59, 4],
      [60, 89, 5],
      [90, 119, 6],
      [120, 134, 7],
      [135, 149, 8],
    ];
    for (var rule in wateringRules) {
      for (int i = rule[0]; i <= rule[1]; i += rule[2]) {
        final date = start.add(Duration(days: i));
        bool already = _events.any((e) {
          final d = e['date'];
          return d.year == date.year && d.month == date.month && d.day == date.day && e['type'] == 'Watering';
        });
        if (!already) {
          _addEvent(date, 'Watering', Icons.water_drop, Colors.blueAccent);
        }
      }
    }

    _events.sort((a, b) => a['date'].compareTo(b['date']));
  }

  void _addEvent(DateTime date, String type, IconData icon, Color color) {
    _events.add({'date': date, 'type': type, 'icon': Icon(icon, color: color)});
  }

  List<Map<String, dynamic>> _getEventsForDay(DateTime day) {
    return _events.where((e) {
      final d1 = DateTime(e['date'].year, e['date'].month, e['date'].day);
      final d2 = DateTime(day.year, day.month, day.day);
      return d1 == d2;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lady’s Finger Farming Schedule")),
      body: _startDay == null ? _buildPickStartUI() : _buildMainUI(),
    );
  }

  Widget _buildPickStartUI() {
    // First time / no start date picked yet
    return Center(
      child: ElevatedButton(
        onPressed: _pickStartDate,
        child: const Text("Select Farming Start Date"),
      ),
    );
  }

  Widget _buildMainUI() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Always allow changing the start date
          Center(
            child: ElevatedButton(
              onPressed: _pickStartDate,
              child: const Text("Change Farming Start Date"),
            ),
          ),
          const SizedBox(height: 16),
          const Text("Legend", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Icon(Icons.backpack, color: Colors.brown), SizedBox(width: 4), Text("=Fertilizer"),
            SizedBox(width: 12),
            Icon(Icons.eco, color: Colors.green), SizedBox(width: 4), Text("=Seed grown"),
            SizedBox(width: 12),
            Icon(Icons.water_drop, color: Colors.blueAccent), SizedBox(width: 4), Text("=Watering"),
          ]),
          const SizedBox(height: 20),

          TableCalendar(
            firstDay: DateTime(2022),
            lastDay: DateTime(2035),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(day, _focusedDay),
            onDaySelected: (selected, focused) {
              setState(() {
                _focusedDay = selected;
              });
            },
            eventLoader: _getEventsForDay,
            calendarStyle: const CalendarStyle(
              markerMargin: EdgeInsets.zero,
              markersAlignment: Alignment.bottomCenter,
              markersMaxCount: 3,
            ),
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, day, events) {
                if (events.isEmpty) return const SizedBox();
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: events.take(3).map((event) {
                    final map = event as Map<String, dynamic>;
                    final type = map['type'];
                    Icon icon;
                    if (type.contains('Fertilizer')) {
                      icon = const Icon(Icons.backpack, color: Colors.brown, size: 14);
                    } else if (type.contains('Seed grown')) {
                      icon = const Icon(Icons.eco, color: Colors.green, size: 14);
                    } else {
                      icon = const Icon(Icons.water_drop, color: Colors.blueAccent, size: 14);
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: icon,
                    );
                  }).toList(),
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Events on ${DateFormat.yMMMMd().format(_focusedDay)}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ..._getEventsForDay(_focusedDay).map((e) {
                return Card(
                  child: ListTile(
                    leading: e['icon'],
                    title: Text(e['type']),
                    subtitle: Text(DateFormat.yMMMMd().format(e['date'])),
                  ),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}




