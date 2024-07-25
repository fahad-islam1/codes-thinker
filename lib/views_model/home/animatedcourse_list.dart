import 'package:codes_thinkers/res/components/home/courses.dart';
import 'package:codes_thinkers/res/components/home/courses_details.dart';
import 'package:codes_thinkers/views_model/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedCourseList extends StatefulWidget {
  final List<Course> courses;
  final String selectedCategory;
  final bool animateOnScroll;

  AnimatedCourseList({
    required this.courses,
    required this.selectedCategory,
    this.animateOnScroll = true,
  });

  @override
  _AnimatedCourseListState createState() => _AnimatedCourseListState();
}

class _AnimatedCourseListState extends State<AnimatedCourseList>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<Offset>> _offsetAnimations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 5000),
    );

    _offsetAnimations = List.generate(
      widget.courses.length,
      (index) => Tween<Offset>(
        begin: index.isEven ? Offset(-1, 0) : Offset(1, 0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            index / widget.courses.length,
            (index + 1) / widget.courses.length,
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );

    if (widget.animateOnScroll) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant AnimatedCourseList oldWidget) {
    super.didUpdateWidget(oldWidget);
    print(oldWidget.courses);
    print(widget.courses);
    print(oldWidget.selectedCategory);
    print(widget.selectedCategory);
    if (oldWidget.courses != widget.courses ||
        oldWidget.selectedCategory != widget.selectedCategory) {
      _updateAnimations();
    }
  }

  void _updateAnimations() {
    _offsetAnimations = List.generate(
      widget.courses.length,
      (index) => Tween<Offset>(
        begin: index.isEven ? Offset(-1, 0) : Offset(1, 0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            index / widget.courses.length,
            (index + 1) / widget.courses.length,
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );

    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      physics: NeverScrollableScrollPhysics(),
      initialItemCount: widget.courses.length,
      itemBuilder: (context, index, animation) {
        return SlideTransition(
          position: _offsetAnimations[index],
          child: CoursesDetails(
            title: widget.courses[index].title,
            subTitle: widget.courses[index].rating,
            image: widget.courses[index].image,
          ),
        );
      },
    );
  }
}




