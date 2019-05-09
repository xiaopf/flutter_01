import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final _author = "草东没有派对";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '$_author \n 记录对于土地对于人情世俗的观感 节奏游走在雀跃的Disco Beats与带有油渍味道的重破音大拍之间 时而细腻低语呢喃 时而绝望放声嘶吼 深刻的语句搭上跳动的旋律 融入现代电子音乐元素 创新而和谐的编制激荡出许多意想不到的火花 用消极却浪漫的口吻表达情绪并述说着社会 在不断尝试开发各种路数的玩法与编曲的过程中 也回归原始单纯的听觉找寻共鸣、震荡，然后沉醉',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize:18.0,
        color:Colors.green,
      )
    );
  }
}