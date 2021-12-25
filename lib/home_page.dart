import 'dart:convert';
import 'package:test_json_serialize/example_data.dart';
import 'package:test_json_serialize/human.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: JsonProvider(child: ButtonWidget(), cursor: JsonCursor()));
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: JsonProvider.of(context).cursor.encode,
            child: Text('Кодировать')),
        ElevatedButton(
            onPressed: JsonProvider.of(context).cursor.decode,
            child: Text('Декодировать')),
      ],
    );
  }
}

class JsonProvider extends InheritedWidget {
  final JsonCursor cursor;

  const JsonProvider({
    Key? key,
    required Widget child,
    required this.cursor,
  }) : super(key: key, child: child);

  static JsonProvider of(BuildContext context) {
    final JsonProvider? result =
        context.dependOnInheritedWidgetOfExactType<JsonProvider>();
    assert(result != null, 'No JsonProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(JsonProvider old) {
    return true;
  }
}

  // кодирование в строку json
class JsonCursor {
  void encode() {
    final objects = humans.map((e) => e.toJson()).toList();
    final jsonString = jsonEncode(objects);
    print(jsonString);
    
  }

  // декодирование из строки, json в объект
  void decode() {
    final json = jsonDecode(jsonString) as List<dynamic>;
    final humans = json.map((dynamic e) => Human.fromJson(e as Map<String, dynamic>)).toList();
    print(humans);
  }
}
