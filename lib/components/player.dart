import 'dart.ui';
import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flutter/material.dart';
import 'package:flame/palette.dart';

class Player extends PositionComponent with HasHitBoxes, Collidable {
	
	static const int squareSpeed = 250;
	static final squarePaint = BasicPalette.green.paint();
	static final squareWidth = 100.0, squareHeight = 100.0;

	int squareDirection = 1;
	late double screenWidth, screenHeight, centerX, centerY;

	@override
	Future<void> onLoad() async {
		super.onLoad();

		screenWidth = MediaQueryData.fromWindow(window).size.width;
		screenHeight = MediaQueryData.fromWindow(window).size.height;

		centerX = (screenWidth / 2) - (squareWidth / 2);
		centerY = (screenHeight / 2) - (squareHeight / 2);

		position = Vector2(centerX, centerY);
		size = Vector2(squareWidth, squareHeight);

		addHitbox(HitboxRectangle());
	}

	@override
	void onCollision(Set<Vector2> points, Collidable other) {
		if (other is ScreenCollidable) {
			if (squareDirection == 1) {
				squareDirection = -1;
			} else {
				squareDirection = 1;
			}
		}
	}

	@override
	void update(double deltaTime) {
		super.update(deltaTime);
		
		position.x += squareSpeed * squareDirection * deltaTime;
	}

	@override
	void render(Canvas canvas) {
		super.render(canvas);
		
		render Hitboxes(canvas, paint: squarePaint);
	}
}
