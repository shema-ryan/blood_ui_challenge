import 'dart:async';
import 'package:flutter/material.dart';
import './constants.dart';
import './Screens/firstScreen.dart';
import './Screens/detailsScreen.dart';
import 'package:flutter/services.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood-UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'WorkSans',
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary:Constants.iconButtonColor ,
          onPrimary: Colors.white,
        )),
        primaryColor: Constants.primaryColor,
      ),
      routes: {
        FirstScreen.routeName : (context )=> FirstScreen(),
        DetailScreen.routeName:(context )=>DetailScreen(),
      },
      home: MyHomePage(),
    );
  }
}
// HomePage

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  Timer timer ;
  void handleTimer(){
    timer = Timer(const Duration(seconds: 3), ()async {
      await Navigator.of(context).pushNamed(FirstScreen.routeName).then((value) => handleTimer());
    });
  }
  @override
  void initState() {
    super.initState();
    handleTimer();
  }
  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Donation'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              child:Image.asset('assets/images/ambulance 1.png'),
            ),
          ),
          Expanded(
            child: Column(
              children: [
               Text('RV sahayak' , style:_theme.textTheme.headline5.copyWith(
                 fontWeight: FontWeight.bold,
               ),),
               const SizedBox(height: 10,),
               Text('we always ready for humanity', style: _theme.textTheme.headline6,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
