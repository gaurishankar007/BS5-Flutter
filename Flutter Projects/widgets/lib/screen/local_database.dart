import 'package:column_example/database/database_instance.dart';
import 'package:column_example/entity/person.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:motion_toast/motion_toast.dart';

class LocalDatabase extends StatefulWidget {
  const LocalDatabase({Key? key}) : super(key: key);

  @override
  _LocalDatabaseState createState() => _LocalDatabaseState();
}

class _LocalDatabaseState extends State<LocalDatabase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Database"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubmitForm(),
                  ),
                );
              },
              child: Text(
                "Insert",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewData()));
              },
              child: Text(
                "View",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewData1()));
              },
              child: Text(
                "Find by fName",
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SubmitForm extends StatefulWidget {
  const SubmitForm({Key? key}) : super(key: key);

  @override
  _SubmitFormState createState() => _SubmitFormState();
}

class _SubmitFormState extends State<SubmitForm> {
  final _formKey = GlobalKey<FormState>();
  String fName = "", lName = "";

  insertData(String fName, String lName) async {
    var person = Person1(fName: fName, lName: lName);
    final database = await DatabaseInstance.instance.getDatabaseInstance();
    await database.personDao.insertPerson(person);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Submit Form"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  fName = value!;
                },
                validator: MultiValidator(
                    [RequiredValidator(errorText: "Empty field!")]),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "First Name",
                  hintText: "Enter first name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  lName = value!;
                },
                validator: MultiValidator(
                    [RequiredValidator(errorText: "Empty field!")]),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: "Lat Name",
                  hintText: "Enter last name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    try {
                      insertData(fName, lName);
                      MotionToast.success(
                              title: "Success",
                              description: "Data inserted Successfully.")
                          .show(context);
                    } catch (err) {
                      MotionToast.error(
                              title: "Unsuccess",
                              description: "Error occurred !!!")
                          .show(context);
                    }
                  }
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ViewData extends StatefulWidget {
  const ViewData({Key? key}) : super(key: key);

  @override
  _ViewDataState createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  Future<List<Person1>> displayData() async {
    var database = await DatabaseInstance.instance.getDatabaseInstance();
    var result = database.personDao.findAllPerson();
    return result;
  }

  deleteData(String fName) async {
    final database = await DatabaseInstance.instance.getDatabaseInstance();
    await database.personDao.deletePerson(fName);
  }

  deleteAllData(List<Person1> allPerson) async {
    final database = await DatabaseInstance.instance.getDatabaseInstance();
    await database.personDao.deleteAllPerson(allPerson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Data of person"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Delete all person"),
            trailing: IconButton(
              onPressed: () async {
                List<Person1> allPerson = await displayData();
                if (allPerson.isNotEmpty) {
                  setState(() {
                    deleteAllData(allPerson);
                  });
                  MotionToast.success(
                    description: "All Person deleted successfully.",
                  ).show(context);
                } else {
                  MotionToast.error(
                    description: "No person to delete.",
                  ).show(context);
                }
              },
              icon: Icon(Icons.delete),
            ),
          ),
          Expanded(
            // Useful to use it for FutureBuilder otherwise, puting it inside column will give error
            child: FutureBuilder<List<Person1>>(
              future: displayData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(Icons.person),
                        title: Text(snapshot.data![index].fName),
                        subtitle: Text(snapshot.data![index].lName),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              deleteData(snapshot.data![index].fName);
                            });
                            MotionToast.success(
                              description: "Person deleted successfully.",
                            ).show(context);
                          },
                          icon: Icon(Icons.delete),
                        ),
                      );
                    },
                    itemCount: snapshot.data!.length,
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return CircularProgressIndicator();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ViewData1 extends StatefulWidget {
  const ViewData1({Key? key}) : super(key: key);

  @override
  _ViewData1State createState() => _ViewData1State();
}

class _ViewData1State extends State<ViewData1> {
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  String firstName = "", newfName = "", newlName = "";
  dynamic result;
  bool edit = false;

  Future<Person1?> findData() async {
    var database = await DatabaseInstance.instance.getDatabaseInstance();
    result = database.personDao.findPerson(firstName);
    return result;
  }

  updateData(String fName) async {
    var database = await DatabaseInstance.instance.getDatabaseInstance();
    await database.personDao.updatePerson(fName, newfName, newlName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Data of a person"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              key: _formKey1,
              child: TextFormField(
                onSaved: (value) {
                  firstName = value!;
                },
                validator: MultiValidator(
                    [RequiredValidator(errorText: "Empty field!")]),
                decoration: InputDecoration(
                  labelText: "First Name",
                  hintText: "Enter first name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey1.currentState!.validate()) {
                  edit = false;
                  _formKey1.currentState!.save();
                  setState(() {
                    findData();
                  });
                }
              },
              child: Text("Find"),
            ),
            Expanded(
              // Useful to use it for FutureBuilder otherwise, puting it inside column will give error
              flex: 1,
              child: FutureBuilder<Person1?>(
                future: findData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        edit
                            ? SizedBox()
                            : Expanded(
                                child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: Icon(Icons.person),
                                      title: Text(snapshot.data!.fName),
                                      subtitle: Text(snapshot.data!.lName),
                                      trailing: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            edit = true;
                                          });
                                        },
                                        icon: Icon(Icons.edit),
                                      ),
                                    );
                                  },
                                  itemCount: 1,
                                ),
                              ),
                        edit
                            ? Form(
                              key: _formKey2,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    onSaved: (value) {
                                      newfName = value!;
                                    },
                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "Empty field!")
                                    ]),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: "First Name",
                                      hintText: "Enter first name",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    onSaved: (value) {
                                      newlName = value!;
                                    },
                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "Empty field!")
                                    ]),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: "Last Name",
                                      hintText: "Enter last name",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (_formKey2.currentState!
                                              .validate()) {
                                            _formKey2.currentState!.save();
                                            updateData(firstName);
                                            firstName = newfName;
                                            setState(() {
                                              edit = false;
                                            });
                                            MotionToast.success(
                                                    title: "Success",
                                                    description:
                                                        "Person updated successfully.")
                                                .show(context);
                                          }
                                        },
                                        child: Text("Update"),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            edit = false;
                                          });
                                        },
                                        child: Text("Cancel"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                            : SizedBox()
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return Text("No person found with that first name.");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
