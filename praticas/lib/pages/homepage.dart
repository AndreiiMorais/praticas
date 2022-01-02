import 'package:flutter/material.dart';
import 'package:praticas/controllers/home_controller.dart';
import 'package:praticas/models/post_model.dart';
import 'package:praticas/repositories/home_repository_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              
            }, icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                thickness: 3,
              ),
              itemCount: list.length,
              itemBuilder: (_, idx) => ListTile(
                leading: Text(list[idx].id.toString()),
                title: Text(list[idx].title),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context)
                    .pushNamed('/details', arguments: list[idx]),
              ),
            );
          }),
    );
  }
}
