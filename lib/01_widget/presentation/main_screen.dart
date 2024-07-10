import 'package:flutter/material.dart';
import 'package:learn_flutter_together/01_widget/presentation/component/creator_profile.dart';
import 'package:learn_flutter_together/01_widget/presentation/component/ingrident_item.dart';
import 'package:learn_flutter_together/01_widget/presentation/component/recipe_card_widget.dart';

import 'component/pop_up_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('연습!'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: IngridentItem(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CreatorProfile(
                onTap: () {
                  print('creatorProfile pressed ');
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: RecipeCardWidget(),
            ),
            PopUpDialog(),
          ],
        ),
      ),
    );
  }
}
