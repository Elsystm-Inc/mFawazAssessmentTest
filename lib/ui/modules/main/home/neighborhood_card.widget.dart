import 'package:flutter/material.dart';
import 'package:mfawazTest/data/model/neighborhood_model.dart';
import 'package:mfawazTest/ui/style/theme.dart';

class NeighborhoodCard extends StatelessWidget {
  const NeighborhoodCard({
    Key key,
    @required this.nbh,
  }) : super(key: key);

  final Neighborhood nbh;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  child: Image.asset(
                    nbh.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              DecoratedBox(
                child: Container(),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.1, 0.5],
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.2)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nbh.name,
                      style: AppTheme.textTheme.button,
                    ),
                    Container(
                      height: 4,
                    ),
                    Text(
                      nbh.noUnits,
                      style: AppTheme.textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
