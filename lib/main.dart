import 'package:flutter/material.dart';

import 'package:nubank_clone/home.dart';

void main(){
  runApp(const NubankClone());
}

class NubankClone extends StatelessWidget {
  const NubankClone ({super.key});
  
  @override
    Widget build(BuildContext context){
    return (MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFF820AD1)),
    splashColor:  const Color(0xFF820AD1),highlightColor:const Color(0xFF820AD1),
     primaryColor:const Color(0xFF820AD1),),
    color: const Color(0xFF820AD1),
    title: 'Nubank', 
    home: const HomeScreenWrapper(),
  )

    );
  }
}