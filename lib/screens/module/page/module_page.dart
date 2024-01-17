import 'package:buddy_blues/provider/module_provider.dart';
import 'package:buddy_blues/screens/module/widget/list_modul_widget.dart';
import 'package:buddy_blues/widget/buddyblues_appbar.dart';
import 'package:buddy_blues/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ModulePage extends StatefulWidget {
  const ModulePage({super.key});

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<ModuleProvider>(context, listen: false)
        .getModuleClassification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BuddyBluesAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          children: [
            const SearchBarWidget(),
            const SizedBox(height: 20),
            Expanded(
              child: Consumer<ModuleProvider>(
                builder: (BuildContext context, value, Widget? child) {
                  if (value.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (value.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (value.moduleClassification.isNotEmpty) {
                    return ListView.builder(
                      itemCount: value.moduleClassification.length,
                      itemBuilder: (context, index) {
                        return ListModuleWidget(
                          title: value.moduleClassification[index]["title"],
                          desc: value.moduleClassification[index]["desc"],
                          image: value.moduleClassification[index]["image"],
                          onTap: () {
                            Provider.of<ModuleProvider>(context, listen: false)
                                .getModuleByType(
                                    value.moduleClassification[index]["type"]);
                            Navigator.pushNamed(context, "/listModule",
                                arguments: value.moduleClassification[index]
                                    ["title"]);
                          },
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text("Maaf, module belum tersedia"),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
