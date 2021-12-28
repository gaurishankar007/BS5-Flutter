import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final txtCtrl = TextEditingController();
  String task = "";
  bool validate = false;

  final List<Task> incTaskList = [];
  final List<Task> cTaskList = [];

  @override
  void dispose() {
    txtCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo app example")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Todo App",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 50,
                  fontFamily: "Pacifico-Regular",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: txtCtrl,
                onSubmitted: (value) {
                  setState(() {
                    task = txtCtrl.text
                        .trim(); // trim() removes the white space at the start and end of a string
                    task.isEmpty ? validate = true : validate = false;
                    if (task.isEmpty == false) {
                      incTaskList.add(Task(taskName: task, completion: false));
                    }
                  });
                },
                decoration: InputDecoration(
                  labelText: "Add Task",
                  hintText: "Enter your task name here...",
                  labelStyle: TextStyle(
                    color: Colors.cyan,
                    fontFamily: "Pacifico-Regular",
                  ),
                  hintStyle: TextStyle(
                    color: Colors.cyan,
                    fontFamily: "Pacifico-Regular",
                  ),
                  errorText: validate ? "Field is empty!" : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Tasks to be completed",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 25,
                  fontFamily: "Pacifico-Regular",
                  decoration: TextDecoration.underline,
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepOrange,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: ListView.builder(
                  itemCount: incTaskList.length,
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      child: ListTile(
                        leading: Checkbox(
                          value: incTaskList[index].completion,
                          onChanged: (value) {
                            setState(() {
                              incTaskList[index].completion = value!;
                              cTaskList.add(incTaskList[index]);
                              incTaskList.remove(incTaskList[index]);
                            });
                          },
                        ),
                        title: Text(
                          incTaskList[index].taskName,
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: "Pacifico-Regular",
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Text(
                "Tasks completed",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontFamily: "Pacifico-Regular",
                  decoration: TextDecoration.underline,
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListView.builder(
                  itemCount: cTaskList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Checkbox(
                        value: cTaskList[index].completion,
                        onChanged: (value) {
                          setState(() {
                            cTaskList[index].completion = value!;
                            incTaskList.add(cTaskList[index]);
                            cTaskList.remove(cTaskList[index]);
                          });
                        },
                      ),
                      title: Text(
                        cTaskList[index].taskName,
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: "Pacifico-Regular",
                          decoration: (cTaskList[index].completion)
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Task {
  String taskName;
  bool completion;
  Task({required this.taskName, required this.completion});
}
