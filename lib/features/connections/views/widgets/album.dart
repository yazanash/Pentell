import 'package:flutter/material.dart';
import 'package:pentelligence/core/constant/constant.dart';
import 'package:pentelligence/core/utilities/profile_image.dart';
import 'package:pentelligence/features/connections/views/widgets/customTab.dart';

class AlbumWidget extends StatelessWidget {
  const AlbumWidget({
    Key? key,
    this.borderRadius = 0,
    this.showAll,
  }) : super(key: key);

  final double borderRadius;
  final VoidCallback? showAll;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 10),
          height: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: theme.colorScheme.background,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: showAll,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(borderRadius)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Media', style: theme.textTheme.headline2),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ProfileImage(
                          url: IMG_LOGO,
                          radius: 0,
                          borderWidth: 0.5,
                          borderColor: Colors.black,
                          background: Colors.white12,
                          size: 90,
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          width: 100,
                          child: Text(
                            'title title title title title title ',
                            style: theme.textTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
