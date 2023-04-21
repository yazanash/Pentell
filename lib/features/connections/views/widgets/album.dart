import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/connections/views/widgets/customTab.dart';

class AlbumWidget extends StatelessWidget {
  const AlbumWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          color: theme.colorScheme.background,
          padding: EdgeInsets.only(bottom: 10),
          height: 190,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Album', style: theme.textTheme.headline2),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 120,
                      child: Column(
                        children: [
                          ProfileImage(
                            url: IMG_LOGO,
                            radius: 20,
                            borderWidth: 0.5,
                            borderColor: Colors.black,
                            background: Colors.white12,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'title title title title title title ',
                            style: theme.textTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 30),
                ),
              ),
            ],
          ),
        ),
        CustomTabBar(isSelected: true),
      ],
    );
  }
}
