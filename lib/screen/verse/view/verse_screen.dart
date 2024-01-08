import 'package:bhagavadgeeta_api/screen/verse/provider/verse_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerseScreen extends StatefulWidget {
  const VerseScreen({super.key});

  @override
  State<VerseScreen> createState() => _VerseScreenState();
}

class _VerseScreenState extends State<VerseScreen> {
  VerseProvider? providerw;
  VerseProvider? providerr;

  @override
  void initState() {
    super.initState();
    context.read<VerseProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<VerseProvider>();
    providerw = context.watch<VerseProvider>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "BHAGAVAD GEETA ",
          ),
        ),
        body: ListView.builder(
          itemCount: providerr!.slugModel!.commentaries.length,
          itemBuilder: (context, index) {
            // return Text(providerw!.chapterList[index].name, style: const TextStyle(fontSize: 20));
            return ListTile(
              title: Text(providerw!.slugModel!.slug,
                  style: const TextStyle(fontSize: 20)),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){
                Navigator.pushNamed(context, 'slug');
              },
            );
          },
        ),
      ),
    );
  }
}