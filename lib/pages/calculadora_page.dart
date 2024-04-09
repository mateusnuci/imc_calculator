// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:negligencia/components/custom_card.dart';
import 'package:negligencia/components/gender_card.dart';
import 'package:negligencia/consts.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('🤣🤣🤣🤣🤣🤣'),
        centerTitle: true,
      ),

      body: Padding(padding: EdgeInsets.all(10),
        child: Column(children: [
        
        Expanded(child: Row(children: [
          Expanded(child: CustomCard(child: GenderCard(icon: Icons.male, gender: 'Masculino'))),
          Expanded(child: CustomCard(child: GenderCard(icon: Icons.female, gender: 'Feminino')))
        ],)),

        Expanded(child: CustomCard()),

        Expanded(child: Row(children: [
          Expanded(child: CustomCard()),
          Expanded(child: CustomCard())
        ])),

      ]),)
    );
  }
}