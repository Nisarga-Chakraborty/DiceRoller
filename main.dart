import "package:flutter/material.dart";
import "gradient.dart";

void main() {
  runApp(
    const MaterialApp(
      home: gradient(Colors.blue, Colors.red),
      debugShowCheckedModeBanner: false,
    ),
  );
}
