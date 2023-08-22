import 'package:example/another_page.dart';
import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  //final TextEditingController _editingController = TextEditingController();
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        //'/': (context) => TestNeu(),
        '/a': (context) => const AnotherPage()
      },

      // home: TestNeu(),
      home: const TestNeu(),
    );
  }
}

class TestNeu extends StatefulWidget {
  const TestNeu({Key? key}) : super(key: key);

  @override
  State<TestNeu> createState() => _TestNeuState();
}

class _TestNeuState extends State<TestNeu> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      backgroundColor: const Color(0xFFE1FFC9),
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              children: [
                NeuTextButton(
                  animate: true,
                  text: const Text(
                    "Hello ",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () {
                    debugPrint("Helloo ");
                  },
                  

                  //buttonWidth: 300,
                  //buttonHeight: 100,
                ),

                const SizedBox(
                  height: 50,
                ),
                NeuSearchBar(),
                const SizedBox(
                  height: 50,
                ),

                NeuContainer(
                    height: 100,
                    width: 300,
                    color: Colors.white,
                    offset: const Offset(5, 5),
                    borderWidth: 1,
                    borderRadius: BorderRadius.circular(8),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlutterLogo(
                          size: 100,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Maa Ka Bhosda"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("data")
                          ],
                        ),
                      ],
                    )),

                //NeuSearchBar()
              ],
            ),
          )
          // child: GridView.builder(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 10,
          //   ),
          //   controller: _controller,
          //   itemCount:
          //       10, // Replace this with the number of containers you want to display
          //   itemBuilder: (context, index) {
          //     return Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: NeuContainer(
          //         height: MediaQuery.of(context).size.height / 4,
          //         width: MediaQuery.of(context).size.width / 2,
          //         offset: const Offset(-4, -2),
          //         borderRadius: BorderRadius.circular(16),
          //         color: Colors.white,
          //         borderColor: Colors.black,
          //         child: const Column(
          //           children: [
          //             Padding(
          //               padding: EdgeInsets.only(top: 80.0),
          //               child: Text(
          //                 "",
          //                 style: TextStyle(
          //                   fontSize: 50,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // ),
          ),
      bottomNavigationBar: NeuBottomNav(
        navBarColor: const Color.fromARGB(255, 254, 210, 225),
        isFloating: true,
        autoHideOnScroll: true,
        scrollController: _controller,
        icons: const [
          Icons.home,
          Icons.shopping_cart_checkout,
          Icons.person_2_rounded,
        ],
        onIconTap: (index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (builder) {
                return const AnotherPage();
              },
            ),
          );
        },
        initialIconColor: Colors.black,
      ),
    );
  }

  void onT(int index) {
    setState(() {});
  }
}
