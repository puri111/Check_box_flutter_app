// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('Select Language'),
        ), 
        body: LanguageScreen(), 
         ),
      );
       }
        } 
        class LanguageScreen extends StatefulWidget { 
          @override
          _LanguageScreenState createState() => _LanguageScreenState();
    
        } 
        class _LanguageScreenState extends State<LanguageScreen> { 
        List<String> languages = [ 
          'Dart', 
          'Python', 
          'Java', 
          'JavaScript', 
          'C++', 
          'C#', 
          'Ruby', 
          'Go', 
          'Swift', 
          'Kotlin',
        ]; 
        List<String> selectedLanguages = []; 
        
        @override   
        Widget build(BuildContext context) { 
          return ListView( 
            children: languages.map((String language) { 
              return CheckboxListTile( 
                title: Text(language), 
                value: selectedLanguages.contains(language), 
                onChanged: (bool? value) { 
                 setState(() { 
                  if (value == true) { 
                    if 
                    (!selectedLanguages.contains(language)) { 
                      selectedLanguages.add(language);   
                    }
                  } else { 
                    selectedLanguages.remove(language);

                  }
                 });
                }, 
                 );
            }).toList(),
            );
          
        }
        }
