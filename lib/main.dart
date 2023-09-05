import 'package:flutter/material.dart';
import 'package:widget_lifecycle/second_screen.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with WidgetsBindingObserver{

  int _counter = 0;
  void _incrementCounter() {setState(() {_counter++;});}
  // @override
  // void initState() {
  //   super.initState();
  //   print("INIT STATE");
  //   WidgetsBinding.instance.addObserver(this);
  //
  // }


  // @override
  // void dispose() {
  //   super.dispose();
  //   print("dispose state");
  //   WidgetsBinding.instance.removeObserver(this);
  // }


  //
  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if(state==AppLifecycleState.inactive || state==AppLifecycleState.detached)return;
  //   final background=state==AppLifecycleState.paused;
  //   if(background){
  //     //stop service
  //     print("I have move to bg");
  //   }else{
  //     //start service
  //     print("I am back");
  //   }
  // }
  //
  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   print("didChangeDependencies state");
  // }
  //
  //
  // @override
  // void didUpdateWidget( oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   print("didUpdateWidget state=");
  // }
  //
  //
  // @override
  // void deactivate() {
  //   super.deactivate();
  //   print("deactivate state");
  // }

  @override
  Widget build(BuildContext context) {
    print("build STATE");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:',),
            Text('$_counter', style: Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> SeconScreen()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}
