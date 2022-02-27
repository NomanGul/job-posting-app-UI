import 'package:flutter/material.dart';
import 'package:job_post_ui/screens/add_job.dart';
import 'package:job_post_ui/screens/login.dart';
import 'package:job_post_ui/widgets/job_list_item.dart';

class JobList extends StatelessWidget {
  const JobList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 27,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Welcome",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            Text("Noman Gul",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300))
          ],
        ),
        actions: const [LogoutIcon()],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchInput(),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  JobListItem(),
                  JobListItem(),
                  JobListItem(),
                  JobListItem(),
                  JobListItem(),
                  JobListItem(),
                  JobListItem(),
                  JobListItem(),
                  JobListItem(),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const AddJobButton(),
    );
  }
}

class LogoutIcon extends StatelessWidget {
  const LogoutIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const LogIn()));
      },
      child: const Padding(
        padding: EdgeInsets.only(right: 27),
        child: Icon(Icons.logout_outlined),
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 27, bottom: 15, left: 27),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFF1E1C24),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: Color(0xFF5D5D67),
            size: 30,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Search',
        ),
      ),
    );
  }
}

class AddJobButton extends StatelessWidget {
  const AddJobButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74,
      height: 74,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: const Color(0xFFE5E5E5),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const AddJob())),
          child: const Icon(
            Icons.add_outlined,
            color: Color(0xFF191720),
          ),
        ),
      ),
    );
  }
}
