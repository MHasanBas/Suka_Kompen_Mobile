import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskApprovalPage(),
    );
  }
}

class TaskApprovalPage extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {"name": "Faiz Abiyu", "task": "Membuat PPT", "status": "Online"},
    {"name": "Fahmi Mardiansyah", "task": "Membuat PPT", "status": "Online"},
    {"name": "Hasan Basri", "task": "Membuat PPT", "status": "Online"},
    {"name": "Naswya Syafinka", "task": "Membuat PPT", "status": "Online"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suka Kompen."),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Image.asset('assets/task_image.png', width: 50, height: 50),
              title: Text(task['task']!),
              subtitle: Text('${task['name']} - ${task['status']}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.red),
                    onPressed: () {
                      // Reject task logic
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.check, color: Colors.green),
                    onPressed: () {
                      // Approve task logic
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add task logic
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}
