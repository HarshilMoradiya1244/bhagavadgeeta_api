import 'package:bhagavadgeeta_api/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChapterScreen extends StatefulWidget {
  const ChapterScreen({Key? key});

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  Chapterprovider? providerr;
  Chapterprovider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<Chapterprovider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<Chapterprovider>();
    providerw = context.watch<Chapterprovider>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "BHAGAVAD GEETA ",
          ),
        ),
        body: ListView.builder(
          itemCount: providerr!.chapterList.length,
          itemBuilder: (context, index) {
            // return Text(providerw!.chapterList[index].name, style: const TextStyle(fontSize: 20));
            return ListTile(
              title: Text(providerw!.chapterList[index].name, style: const TextStyle(fontSize: 20)),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){
                Navigator.pushNamed(context, 'verse');
              },
            );
          },
        ),
      ),
    );
  }
}
