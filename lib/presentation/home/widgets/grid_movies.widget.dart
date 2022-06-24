import 'package:ekko/domain/core/abstractions/presentation/controllers/login/home_controller.interface.dart';
import 'package:ekko/presentation/shared/view_controller.interface.dart';
import 'package:flutter/material.dart';

class GridMoviesWidget extends ViewController<IHomeController> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: (itemWidth / itemHeight),
      ),
      itemCount: controller.movies.value!.length,
      itemBuilder: (_, index) {
        return _MoviesWidget(
          onTap: () {},
        );
      },
    );
  }
}

class _MoviesWidget extends StatelessWidget {
  final VoidCallback onTap;

  const _MoviesWidget({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: InkWell(
        splashColor: Colors.white.withOpacity(.5),
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
