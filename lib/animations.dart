import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Animations {
  // Home page animations
  static List<Effect> fadeInSlideUp({
    Duration? delay,
    Duration? duration,
  }) {
    return [
      FadeEffect(
        duration: duration ?? 600.ms,
        delay: delay,
        curve: Curves.easeOut,
      ),
      SlideEffect(
        begin: const Offset(0, 30),
        end: const Offset(0, 0),
        duration: duration ?? 600.ms,
        delay: delay,
        curve: Curves.easeOut,
      ),
    ];
  }

  static List<Effect> fadeInSlideRight({
    Duration? delay,
    Duration? duration,
  }) {
    return [
      FadeEffect(
        duration: duration ?? 600.ms,
        delay: delay,
        curve: Curves.easeOut,
      ),
      SlideEffect(
        begin: const Offset(-30, 0),
        end: const Offset(0, 0),
        duration: duration ?? 600.ms,
        delay: delay,
        curve: Curves.easeOut,
      ),
    ];
  }

  static List<Effect> fadeInSlideLeft({
    Duration? delay,
    Duration? duration,
  }) {
    return [
      FadeEffect(
        duration: duration ?? 600.ms,
        delay: delay,
        curve: Curves.easeOut,
      ),
      SlideEffect(
        begin: const Offset(30, 0),
        end: const Offset(0, 0),
        duration: duration ?? 600.ms,
        delay: delay,
        curve: Curves.easeOut,
      ),
    ];
  }

  static List<Effect> scaleInEffect({
    Duration? delay,
    Duration? duration,
  }) {
    return [
      FadeEffect(
        duration: duration ?? 600.ms,
        delay: delay,
        curve: Curves.easeOut,
      ),
      ScaleEffect(
        begin: const Offset(0.9, 0.9),
        end: const Offset(1.0, 1.0),
        duration: duration ?? 600.ms,
        delay: delay,
        curve: Curves.easeOut,
      ),
    ];
  }

  static List<Effect> bounceEffect({
    Duration? delay,
    Duration? duration,
  }) {
    return [
      FadeEffect(
        duration: duration ?? 400.ms,
        delay: delay,
        curve: Curves.easeOut,
      ),
      ScaleEffect(
        begin: const Offset(0.8, 0.8),
        end: const Offset(1.0, 1.0),
        duration: duration ?? 600.ms,
        delay: delay,
        curve: Curves.elasticOut,
      ),
    ];
  }

  static List<Effect> shimmerEffect({
    Duration? delay,
    Duration? duration,
  }) {
    return [
      ShimmerEffect(
        duration: duration ?? 1500.ms,
        delay: delay,
        curve: Curves.easeInOut,
      ),
    ];
  }

  // Product details animations
  static List<Effect> rotateEffect({
    Duration? delay,
    Duration? duration,
  }) {
    return [
      RotateEffect(
        begin: 0,
        end: 0.05,
        duration: duration ?? 2000.ms,
        delay: delay,
        curve: Curves.easeInOut,
      ),
      ThenEffect(
        scale: 1.0,
        then: (controller) => [
          RotateEffect(
            begin: 0.05,
            end: -0.05,
            duration: 4000.ms,
            curve: Curves.easeInOut,
          ),
          ThenEffect(
              then: (controller) => [
                    RotateEffect(
                      begin: -0.05,
                      end: 0.05,
                      duration: 4000.ms,
                      curve: Curves.easeInOut,
                    ),
                  ].animate(onComplete: (controller) => controller.repeat())),
        ].animate(onComplete: (controller) => controller.forward(from: 0)),
      ),
    ];
  }

  static List<Effect> staggeredListItem(int index) {
    return [
      FadeEffect(
        duration: 400.ms,
        delay: (50 * index).ms,
        curve: Curves.easeOut,
      ),
      SlideEffect(
        begin: const Offset(0, 20),
        end: const Offset(0, 0),
        duration: 400.ms,
        delay: (50 * index).ms,
        curve: Curves.easeOut,
      ),
    ];
  }
}
