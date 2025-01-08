import 'package:flutter/material.dart';

class CounterClass extends StatefulWidget {
  const CounterClass({super.key});

  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {
  int res = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result = $res',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton(
                  icon: Icons.add,
                  color: Colors.green,
                  onPressed: () {
                    res++;
                    setState(() {});
                  },
                ),
                SizedBox(width: 10),
                _buildIconButton(
                  icon: Icons.remove,
                  color: Colors.red,
                  onPressed: () {
                    if (res > 0) {
                      res--;
                      setState(() {});
                    }
                  },
                ),
                SizedBox(width: 10),
                _buildIconButton(
                  icon: Icons.refresh,
                  color: Colors.blue,
                  onPressed: () {
                    res = 0; // Reset the counter
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Areeba Iqbal",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create styled IconButton
  Widget _buildIconButton({
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.2),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color),
        iconSize: 30,
      ),
    );
  }
}
