import 'package:quiz_app/models/mcq.dart';

final Questions = [
  Mcq(
    Question: 'What are the main building blocks of Flutter UIs?',
    Options: ['Widgets', 'Components', 'Blocks', 'Functions'],
  ),
  Mcq(
    Question:
        'What is the purpose of the pubspec.yaml file in a Flutter project?',
    Options: [
      'To manage dependencies',
      'To define the main entry point of the app',
      'To configure the app’s assets',
      'To set the minimum SDK version',
    ],
  ),
  Mcq(
    Question: 'What is the default layout widget in Flutter?',
    Options: ['Container', 'Column', 'Row', 'Stack'],
  ),
  Mcq(
    Question: 'How do you create a stateful widget in Flutter?',
    Options: [
      'By extending StatelessWidget',
      'By extending StatefulWidget',
      'By using the Widget constructor',
      'By using the createState() method',
    ],
  ),
  Mcq(
    Question:
        'What is the purpose of the setState() method in a stateful widget?',
    Options: [
      'To rebuild the widget tree',
      'To update the widget’s state',
      'To notify the framework of changes',
      'To trigger animations',
    ],
  ),
  Mcq(
    Question: 'What is the main function in a Flutter app?',
    Options: [
      'To run the app',
      'To define the app’s entry point',
      'To initialize the app’s state',
      'To configure the app’s theme',
    ],
  ),
  Mcq(
    Question: 'What is the purpose of the build() method in a widget?',
    Options: [
      'To create the widget’s layout',
      'To handle user input',
      'To manage the widget’s state',
      'To define the widget’s properties',
    ],
  ),
  Mcq(
    Question: 'What is the purpose of the Navigator widget in Flutter?',
    Options: [
      'To manage navigation between screens',
      'To handle user input',
      'To create animations',
      'To manage the app’s state',
    ],
  ),
  Mcq(
    Question: 'What is the purpose of the Scaffold widget in Flutter?',
    Options: [
      'To provide a basic visual structure for the app',
      'To handle user input',
      'To create animations',
      'To manage the app’s state',
    ],
  ),
];
