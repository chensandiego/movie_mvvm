import 'package:flutter/material.dart';
import './screens/movies_screen.dart';
import './viewModel/movies_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies MVVM Example",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: MovieListPage(),
        ));
  }
}
