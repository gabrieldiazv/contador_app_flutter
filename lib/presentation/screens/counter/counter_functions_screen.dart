import 'package:flutter/material.dart';

class CounterFuctionsScreen extends StatefulWidget {
  const CounterFuctionsScreen({super.key});

  @override
  State<CounterFuctionsScreen> createState() => _CounterFuctionsScreenState();
}

class _CounterFuctionsScreenState extends State<CounterFuctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Fuctions Screen'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text((clickCounter > 1) ? 'clicks' : 'click',
                style: const TextStyle(fontSize: 25)),
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButtom(
                icon: Icons.exposure_minus_1,
                onPressed: () {
                  setState(() {
                    if (clickCounter == 0) return;
                    clickCounter--;
                  });
                }),
            const SizedBox(height: 10),
            CustomButtom(
                icon: Icons.plus_one,
                onPressed: () {
                  setState(() {
                    clickCounter++;
                  });
                }),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
