import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int tasbehCount = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height * 0.4,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    bottom: height * 0.25,
                    child: Image.asset('assets/images/head_sebha.png',
                        fit: BoxFit.cover,
                        width: width * 0.2,
                        height: height * 0.15)),
                Positioned(
                  top: height * 0.1,
                  child: Transform.rotate(
                      angle: angle,
                      child: Image.asset('assets/images/body_sebha.png')),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'tasbehat',
            style: Theme.of(context).textTheme.headline6,
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor.withOpacity(0.7),
            ),
            child: Text(
              tasbehCount.toString(),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              if (tasbehCount == 33) {
                tasbehCount = 0;
              } else {
                tasbehCount++;
              }
              angle += 10;
              setState(() {});
            },
            child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                ),
                child: Text(
                  'سبحان الله',
                  style: Theme.of(context).textTheme.headline6,
                )),
          ),
        ],
      ),
    );
  }
}
