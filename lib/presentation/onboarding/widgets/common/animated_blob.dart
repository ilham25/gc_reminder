import 'package:flutter/material.dart';

class AnimatedBlob extends StatefulWidget {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final double pathRadiusX;
  final double pathRadiusY;
  final Duration duration;
  final Widget child;

  const AnimatedBlob({
    super.key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    this.pathRadiusX = 100,
    this.pathRadiusY = 60,
    this.duration = const Duration(seconds: 8),
    required this.child,
  });

  @override
  State<AnimatedBlob> createState() => _AnimatedBlobState();
}

class _AnimatedBlobState extends State<AnimatedBlob>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _enableAnimation = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    // Wait for Cupertino transition to complete
    Future.delayed(Duration(milliseconds: 400), () {
      if (mounted) {
        setState(() => _enableAnimation = true);
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Offset getPositionOnPath(double t) {
    return Offset(
      widget.pathRadiusX * (1 + 0.5 * t) * (1 + t * 0.3) * t.clamp(0, 1) +
          widget.pathRadiusX * 0.8 * t * (1 - t) * 2,
      widget.pathRadiusY * (1 + t * 0.8) * t.clamp(0, 1) +
          widget.pathRadiusY * t * (1 - t) * 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TickerMode(
      enabled: _enableAnimation,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final position = getPositionOnPath(_animation.value);

          double opacity = 1.0;
          if (_animation.value < 0.15) {
            opacity = _animation.value / 0.15;
          } else if (_animation.value > 0.85) {
            opacity = 1.0 - ((_animation.value - 0.85) / 0.15);
          }

          return Positioned(
            top: widget.top != null ? widget.top! + position.dy : null,
            left: widget.left != null ? widget.left! + position.dx : null,
            right: widget.right != null ? widget.right! - position.dx : null,
            bottom: widget.bottom != null ? widget.bottom! - position.dy : null,
            child: Opacity(opacity: opacity, child: widget.child),
          );
        },
      ),
    );
  }
}
