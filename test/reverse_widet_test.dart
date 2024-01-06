import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/main.dart';

void main(){

  testWidgets("description", (widgetTester)async{
    await widgetTester.pumpWidget(MyApp());
    var testedit =find.byType(TextField);

    expect(testedit, findsOneWidget);

    await widgetTester.enterText(testedit, "Hello");
    
    expect(find.text("Hello"), findsOneWidget);
    // expect(find.text("Helloo"), findsNothing);

    var button=find.text("Save");
    expect(button, findsOneWidget);
    await widgetTester.tap(button);
    await widgetTester.pump();
    expect(find.text("Hello"), findsOneWidget);

  });
}