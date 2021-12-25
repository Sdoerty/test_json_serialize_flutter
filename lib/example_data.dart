import 'package:test_json_serialize/address.dart';
import 'package:test_json_serialize/human.dart';

final humans = [
  Human(
      name: 'Ron',
      surname: "Withley",
      age: 21,
      addresses: [
        Address(
            city: "London",
            street: "Main",
            house: "1",
            flat: 24,
        )
      ]
  ),
  Human(
      name: 'Harry',
      surname: "Potter",
      age: 21,
      addresses: [
        Address(
          city: "London",
          street: "MainSt",
          house: "32A",
          flat: 94,
        )
      ]
  )
];

final jsonString = ''' 
[
  {
    "name": "Ivan",
    "surname": "Syka",
    "age": 44,
    "addresses": [
      {
        "city": "Moscow",
        "street": "Mira",
        "house": "12A",
        "flat": 11
      },
      {
        "city": "Mossscow",
        "street": "Missra",
        "house": "1233A",
        "flat": 111
      }
    ]
  },
  {
    "name": "Bichan",
    "surname": "Syka",
    "age": 41,
    "addresses": [
      {
        "city": "Msoscow",
        "street": "Misra",
        "house": "152A",
        "flat": 111
      },
      {
        "city": "Maaossscow",
        "street": "Missdsdsra",
        "house": "121133A",
        "flat": 13311
      }
    ]
  }
]
''';
