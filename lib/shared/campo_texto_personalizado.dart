import 'package:flutter/material.dart';

class CampoTextoPersonalizado extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final bool isPassword;
  final TextInputAction action;
  final TextEditingController? controller;
  final String? Function(String?) validator;

  const CampoTextoPersonalizado({ // Metodo construtor 
    super.key,
    required this.label,
    required this.inputType,
    required this.validator,
    this.controller,
    this.isPassword = false,
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
        fillColor: Colors.grey[300], // **Cor de fundo cinza**
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0), // Borda arredondada
        ),
      ),
        
        keyboardType: inputType,
        obscureText: isPassword,
        controller: controller,
        textInputAction: action,
        
      ),
    );
  }
}
