import 'package:flutter/material.dart';
import 'package:shop_smart_admin_en/services/assets_manager.dart';
import 'package:shop_smart_admin_en/widgets/subtitle_text.dart';

class DashboardButtonsWidget extends StatelessWidget {
  const DashboardButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsManager.book ,height: 65, width: 65,),
                const SizedBox(
                  height: 10,
                ),
                const SubtitleTextWidget(label: "Subtitle")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
