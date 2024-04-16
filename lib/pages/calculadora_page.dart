import '../components/bottom_button.dart';
import 'package:negligencia/components/contador.dart';
import 'package:negligencia/components/custom_card.dart';
import 'package:negligencia/components/gender_content.dart';


import 'package:negligencia/components/slider_altura.dart';

import 'package:flutter/material.dart';

enum Sexo { masculino, feminino }

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  Sexo? genderSelected;
  int altura = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelected = Sexo.masculino;
                      });
                    } ,
                    child: CustomCard(
                      active: genderSelected == Sexo.masculino,
                      child: GenderContent(
                        icon: Icons.male,
                        label: 'Masculino',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelected = Sexo.feminino;
                      });
                    },
                    child: CustomCard(
                      active: genderSelected == Sexo.feminino,
                      child: GenderContent(
                        icon: Icons.female,
                        label: 'Feminino',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              child: SliderAltura(
                onChanged: (double value){
                  setState(() {
                    altura =value.toInt();
                  });
                
                },
                value: altura,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Contador(),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: Contador(),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(buttonTitle: 'Calcular IMC',)
        ],
      ),
    );
  }
}
