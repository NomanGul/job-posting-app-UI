import 'package:flutter/material.dart';
import 'package:job_post_ui/widgets/button.dart';
import 'package:job_post_ui/widgets/input_field.dart';

class EditJob extends StatelessWidget {
  const EditJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        title: const Text("Edit Job",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.only(right: 27, bottom: 59, left: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const InputField(
                    placeholderText: "Designation",
                    initialValue: "Flutter Developer",
                  ),
                  const SizedBox(height: 20),
                  const InputField(
                    placeholderText: "Description",
                    initialValue:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis eget in lectus sit amet pellentesque eleifend tellus neque. Praesent sagittis ultricies volutpat turpis hendrerit nulla ultricies massa elementum. Convallis gravida enim erat enim commodo praesent malesuada facilisis. Potenti orci amet, dui nunc aliquet pellentesque sit nibh scelerisque.",
                    minLines: 13,
                    maxLines: 13,
                  ),
                  const Spacer(),
                  const SizedBox(height: 15),
                  Button(
                    text: "Update Job",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
