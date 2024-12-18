import 'package:flutter/material.dart';

class Slivers extends StatelessWidget {
  const Slivers({super.key});

  static String name = "Slivers";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _BodySlivers(),
    );
  }
}

class _BodySlivers extends StatelessWidget {
  const _BodySlivers();

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, left: 30),
                      child: Row(
                        children: [
                          Text('Slivers test', style: titleStyle),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.abc),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.vaccines),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: 100,
          (context, index) {
            return Center(
              child: Text('Item $index'),
            );
          },
        )),
      ],
    );
  }
}
