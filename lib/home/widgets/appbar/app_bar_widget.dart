import 'package:dev_quiz_flutter_jpvp/core/app_gradients.dart';
import 'package:flutter/cupertino.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
            child: Row(
              children: [
                Text("Olá, João Paulo :D"),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://avatars.githubusercontent.com/u/80857646?v=4'))),
                )
              ],
            ),
          ),
        );
}
