import 'package:flutter/material.dart';
import 'package:flutter_academy/res/assets.dart';
import 'package:flutter_academy/widgets/call_to_action.dart';
import 'package:flutter_academy/widgets/course_card.dart';
import 'package:flutter_academy/widgets/featured_section.dart';
import 'package:flutter_academy/widgets/footer.dart';
import 'package:flutter_academy/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            title: Text('Flutter Academy'),
            elevation: 0,
          ),
          Header(),
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("Recent Courses",
                style: Theme.of(context).textTheme.displaySmall),
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 450,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 20.0),
                CourseCard(
                  title: "Taking Flutter to Web",
                  image: Assets.course,
                  description:
                      "Flutter web is stable. But there are no proper courses focused on Flutter web. So, in this course we will learn what Flutter web is good for and we will build a production grade application along the way.",
                  onActionPressed: () {},
                ),
                const SizedBox(width: 20.0),
                CourseCard(
                  title: "Flutter for Everyone",
                  image: Assets.course,
                  description:
                      "Flutter beginners' course for everyone. For those who know basic programming, can easily start developing Flutter apps after taking this course.",
                  onActionPressed: () {},
                ),
              ],
            ),
          ),
          Center(
            child: FeaturedSection(
              image: Assets.instructor,
              title: "Start teaching today",
              description:
                  "Instructors from around the world teach millions of students on Udemy. We provide the tools and skills to teach what you love.",
              buttonLabel: "Become an instructor",
              onActionPressed: () {},
            ),
          ),
          Center(
            child: FeaturedSection(
              imageLeft: false,
              image: Assets.instructor,
              title: "Transform your life through education",
              description:
                  "Education changes your life beyond your imagination. Education enables you to achieve your dreams.",
              buttonLabel: "Start learning",
              onActionPressed: () {},
            ),
          ),
          CallToAction(),
          Center(
            child: FeaturedSection(
              imageLeft: false,
              image: Assets.instructor,
              title: "Know your instructors",
              description:
                  "Know your instructors. We have chosen the best of them to give you highest quality courses.",
              buttonLabel: "Browse",
              onActionPressed: () {},
            ),
          ),
          //footer
          Footer(),
        ],
      ),
    );
  }
}
