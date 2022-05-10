import 'package:flutter/material.dart';
import 'package:infinite_scroll/infinite_scroll.dart';
import 'package:english_words/english_words.dart';

class InfiniteScroll extends StatefulWidget {
  const InfiniteScroll({Key? key}) : super(key: key);

  @override
  State<InfiniteScroll> createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScroll> {
  
  // generating random names function
  List<String> generateRandom(int length) {
    List<String> names = [];
    for (int i = 0; i < length; i++) {
      names.add(WordPair.random().asPascalCase.toString());
    }
    return names;
  }

  Future<List<String>> getNextPageData() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final items = generateRandom(14);
    return items;
  }

  List<String> data = [];
  bool everyThingLoaded = false;

  @override
  void initState() {
    super.initState();
    loadInitialData();
  }

  @override
  Widget build(BuildContext context) {
    return InfiniteScrollList(
      // physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: data.map((element) => ListItem(text: element)).toList(),
      onLoadingStart: (index) async {
        List<String> newData = await getNextPageData();
        setState(() {
          data += newData;
          if (newData.isEmpty) {
            everyThingLoaded = true;
          }
        });
      },
      // everythingLoaded: everyThingLoaded,
    );
  }

  Future<void> loadInitialData() async {
    data = await getNextPageData();
    setState(() {});
  }
}

class ListItem extends StatelessWidget {
  final String text;

  const ListItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
