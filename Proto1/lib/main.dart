// Copyright 2020, ComputerOrb Inc all rights reserved
//
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'src/app.dart';
import 'src/http/mock_client.dart';

// Set up a mock HTTP client.
final http.Client httpClient = MockClient();

void main() {
  runApp(MyApp());
}
