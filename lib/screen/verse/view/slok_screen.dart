import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/verse_provider.dart';

class ShlokcScreen extends StatefulWidget {
  const ShlokcScreen({super.key});

  @override
  State<ShlokcScreen> createState() => _ShlokcScreenState();
}

class _ShlokcScreenState extends State<ShlokcScreen> {
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
            return ListTile(
              title: Text(providerw!.slugModel!.commentaries[index].description,
                  style: const TextStyle(fontSize: 20)),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),

            );
          },
        ),
      ),
    );
  }
}
