import 'package:cleanarchitecture_v2/core/presentation/components/big_button.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/filter_button.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/input_field.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/medium_button.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/rating_button.dart';
import 'package:cleanarchitecture_v2/core/presentation/components/small_button.dart';
import 'package:cleanarchitecture_v2/ui/gaps.dart';
import 'package:cleanarchitecture_v2/ui/sizes.dart';
import 'package:cleanarchitecture_v2/ui/text_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture MVVM V2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Components',
          style: TextStyles.largeTextBold,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(Sizes.size16),
        children: [
          BigButton(
            text: 'Big',
            onPressed: () {
              print('big btn');
            },
          ),
          Gaps.v10,
          MediumButton(
            text: 'Medium',
            onPressed: () {
              print('medium btn');
            },
          ),
          Gaps.v10,
          SmallButton(
            text: 'Small',
            onPressed: () {
              print('small btn');
            },
          ),
          Gaps.v10,
          InputField(
            label: 'Label',
            placeHolder: 'Placeholder',
          ),
          Gaps.v10,
          FilterButton(
            text: 'text',
          ),
          Gaps.v10,
          FilterButton(
            text: 'text',
            isSelected: true,
          ),
          Gaps.v10,
          RatingButton(
            text: 'text',
          ),
          Gaps.v10,
          RatingButton(
            text: 'text',
            isSelected: true,
          ),
        ],
      ),
    );
  }
}
