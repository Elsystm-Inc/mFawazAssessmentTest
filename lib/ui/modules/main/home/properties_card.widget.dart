import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mfawazTest/data/model/unit_model.dart';
import 'package:mfawazTest/ui/style/app.colors.dart';
import 'package:mfawazTest/ui/style/theme.dart';

class PropertiesCard extends StatelessWidget {
  const PropertiesCard({
    Key key,
    @required this.unit,
  }) : super(key: key);

  final Unit unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 40,
                offset: Offset(4, 4), // changes position of shadow
              ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Carousel(
                        autoplay: false,
                        images: [
                          Image.asset(
                            unit.images[0],
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            unit.images[1],
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            unit.images[2],
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            unit.images[3],
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 12.0),
                    child: Row(
                      children: [
                        Text(
                          unit.price,
                          style: AppTheme.textTheme.headline4,
                        ),
                        Text(
                          " EGP",
                          style: AppTheme.textTheme.bodyText2.copyWith(
                            fontSize: 10,
                            color: AppColors.customGreyLevels[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/location_icon.svg",
                        ),
                        Container(
                          width: 4,
                        ),
                        Text(
                          unit.city,
                          style: AppTheme.textTheme.bodyText2.copyWith(
                            fontSize: 12,
                            color: AppColors.customGreyLevels[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 4),
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        unit.desc,
                        style: AppTheme.textTheme.headline5,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 8),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/bed_icon.svg",
                        ),
                        Container(
                          width: 4,
                        ),
                        Text(unit.noR, style: AppTheme.textTheme.headline5),
                        Container(
                          width: 32,
                        ),
                        SvgPicture.asset(
                          "assets/icons/bath_icon.svg",
                        ),
                        Container(
                          width: 4,
                        ),
                        Text(unit.noBR, style: AppTheme.textTheme.headline5),
                        Container(
                          width: 32,
                        ),
                        SvgPicture.asset(
                          "assets/icons/area_icon.svg",
                        ),
                        Container(
                          width: 4,
                        ),
                        Text(unit.area, style: AppTheme.textTheme.headline5),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(
                  "assets/icons/prem.svg",
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.asset(
                    "assets/icons/heart_icon.svg",
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  "assets/icons/logo_icon.svg",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
