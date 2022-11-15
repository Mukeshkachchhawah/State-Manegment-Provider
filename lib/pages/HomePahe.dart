import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_provider/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(20),
              // add provider
              child: ChangeNotifierProvider<HomePageProvider>(
                  create: (context) => HomePageProvider(),
                  child: Consumer<HomePageProvider>(
                      builder: (context, provider, child) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          provider.Eligiblemessage.toString(),
                          style: TextStyle(
                              color: (provider.isEligible == true)
                                  ? Colors.green
                                  : Colors.red),
                        ),
                        TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Enter your age",
                            ),
                            onChanged: ((value) {
                              provider.Chekeelibilite(int.parse(value));
                            }))
                      ],
                    );
                  })))),
    );
  }
}
