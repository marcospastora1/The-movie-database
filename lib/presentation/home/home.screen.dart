import 'package:ekko/domain/core/abstractions/presentation/controllers/login/home_controller.interface.dart';
import 'package:ekko/presentation/home/widgets/grid_movies.widget.dart';
import 'package:ekko/presentation/shared/loading/loading.widget.dart';
import 'package:ekko/presentation/shared/view_controller.interface.dart';
import 'package:flutter/material.dart';

class HomeScreen extends ViewController<IHomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 0, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 52, 3, 67),
        title: const Text('Filmes'),
      ),
      body: LoadingWidget(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'Populares',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              Expanded(child: GridMoviesWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
