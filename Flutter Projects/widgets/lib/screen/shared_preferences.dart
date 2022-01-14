import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Incrementer extends StatefulWidget {
  const Incrementer({Key? key}) : super(key: key);

  @override
  _IncrementerState createState() => _IncrementerState();
}

class _IncrementerState extends State<Incrementer> {
  final counterController =
      StateNotifierProvider<CounterNotifier, int>((_) => CounterNotifier());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer(builder: (context, ref, child) {
              return Text(
                ref.watch(counterController).toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            SizedBox(
              height: 20,
            ),
            Consumer(builder: (context, ref, child) {
              return ElevatedButton(
                onPressed: () {
                  ref.read(counterController.notifier).resetCounter();
                },
                child: Text("Reset"),
              );
            })
          ],
        ),
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return FloatingActionButton(
            onPressed: () {
              ref.read(counterController.notifier).incrementCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }
}

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0) {
    loadCounter();
  }

  void loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    state = (prefs.getInt("counter") ?? 0);
  }

  void incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    state = (prefs.getInt("counter") ?? 0) + 1;
    prefs.setInt("counter", state);
  }

  void resetCounter() async {
    final prefs = await SharedPreferences.getInstance();
    state = 0;
    prefs.setInt("counter", state);
  }
}

class AsyncIncrementer extends StatefulWidget {
  const AsyncIncrementer({Key? key}) : super(key: key);

  @override
  _AsyncIncrementerState createState() => _AsyncIncrementerState();
}

class _AsyncIncrementerState extends State<AsyncIncrementer> {
  final counterAsyncController =
      StateNotifierProvider<CounterAsyncNotifier, AsyncValue<int>>(
          (_) => CounterAsyncNotifier());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer(builder: (context, ref, child) {
              return ref.watch(counterAsyncController).when(
                data: (int value) {
                  return Text(
                    value.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
                error: (error, stackTrace) {
                  return Text("Error");
                },
                loading: () {
                  return CircularProgressIndicator();
                },
              );
            }),
            SizedBox(
              height: 20,
            ),
            Consumer(builder: (context, ref, child) {
              return ElevatedButton(
                onPressed: () {
                  ref.read(counterAsyncController.notifier).resetCounter();
                },
                child: Text("Reset"),
              );
            })
          ],
        ),
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return FloatingActionButton(
            onPressed: () {
              ref.read(counterAsyncController.notifier).incrementCounter();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }
}

class CounterAsyncNotifier extends StateNotifier<AsyncValue<int>> {
  CounterAsyncNotifier() : super(AsyncLoading()) {
    _init();
  }

  int count = 0;

  _init() {
    state = AsyncData(0);
  }

  void incrementCounter() async {
    state = AsyncLoading();
    await Future.delayed(Duration(seconds: 1));
    count++;
    state = AsyncData(count);
  }

  void resetCounter() async {
    state = AsyncLoading();
    await Future.delayed(Duration(seconds: 2));
    count = 0;
    state = AsyncData(0);
  }
}


