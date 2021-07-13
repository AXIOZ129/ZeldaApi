import 'package:examen/src/models/zelda_model.dart';
import 'package:examen/src/providers/zelda_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State {
  @override
  void initState() {
    final zeldaState = Get.put(ZeldaState());
    zeldaState.obtainobjet();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            _ImgLinkInicio(),
            GetBuilder<ZeldaState>(builder: (ZeldaState zeldaState) {
              return GridView.builder(
                  itemCount: zeldaState.objets.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 3.0),
                  itemBuilder: (BuildContext context, int i) {
                    final _zelda = zeldaState.objets[i];
                    final _mediaQuery = MediaQuery.of(context).size;
                    return GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/details',
                          arguments: _zelda),
                      child: Container(
                        child: Stack(
                          children: [
                            Container(
                              height: _mediaQuery.height * 0.30,
                              width: double.infinity,
                              child: Card(
                                color: Colors.transparent,
                                child: Container(
                                  margin: EdgeInsets.all(8.0),
                                  child: FadeInImage(
                                      fit: BoxFit.cover,
                                      height: _mediaQuery.height * 0.10,
                                      width: _mediaQuery.width * 0.10,
                                      placeholder:
                                          AssetImage('assets/MasterSword.gif'),
                                      image: NetworkImage(_zelda.image!)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            })
          ],
        ),
      ),
    );
  }
}

class _ImgLinkInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/PortadaHomeZelda.PNG'),
              fit: BoxFit.cover)),
    );
  }
}
