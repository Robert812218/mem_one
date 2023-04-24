import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'components/player.dart';

void main() async {
  
  final memOne = MemOne();
  
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  await Flame.device.setPortrait();
  
  runApp(
    GameWidget(game: memOne)
  );
}

class MemOne extends FlameGame with HasCollidables {

  @override
  Future<void> onLoad() async {
    super.onLoad();

    add(Player());
    add(ScreenCollidable());
  }
}

