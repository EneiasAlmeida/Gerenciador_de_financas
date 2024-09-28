import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTextoPersonalizado extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final bool isPassword;
  final bool onlyNumbers;
  final TextInputAction action;
  final TextEditingController? controller;
  final String? Function(String?) validator;

  const CampoTextoPersonalizado({ // Metodo construtor  tem o mesmo nome da classe
    super.key,
    required this.label,
    required this.inputType,
    required this.validator,
    this.controller,
    this.isPassword = false,
    this.onlyNumbers = false,
    this.action = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        validator: validator,
        style: const TextStyle(color: Colors.black), // **Texto preto**
        decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: const Color.fromARGB(255, 233, 224, 224), // **Cor de fundo cinza**
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0), // Borda arredondada
        ),
      ),
      
        inputFormatters: onlyNumbers ? <TextInputFormatter> [
          FilteringTextInputFormatter.digitsOnly
        ] : null,
        keyboardType: inputType,
        obscureText: isPassword,
        controller: controller,
        textInputAction: action,
        
      ),
    );
  }
}
