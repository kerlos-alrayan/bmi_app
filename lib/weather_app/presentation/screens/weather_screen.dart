import 'package:flutter/material.dart';
import 'package:quiz_app/bmi_calculate/widgets/color_style.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 10,
          children: [
            SizedBox(
              height: 20,
            ),
            // Big Container
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient:  LinearGradient(
                    colors: [
                      Colors.indigo,
                      Colors.lightBlueAccent,
                      //Color(0xff688fff),

                    ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff90CAF9FF),
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.apps,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Text('London'),
                              SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/my_image3.png',
                                ),
                                fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/weather_image.png',width: 200, height: 200,),
                    Text('8',
                    style: kNumberTextStyleWeather,
                    ),
                    Text('Overcast',
                    style: kBoldTextTextStyleWeather,
                    ),
                    Text('Wednesday, November 30',
                    style: kTextTextStyleWeather,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
                      child: Divider(
                        color: Colors.white38,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          spacing: 10,
                          children: [
                            Icon(Icons.wind_power,),
                            Text('3 k/h',
                              style: kNumTextTextStyleWeather,
                            ),
                          ],
                        ),Column(
                          spacing: 10,
                          children: [
                            Icon(Icons.water_drop,),
                            Text('87 %',
                            style: kNumTextTextStyleWeather,
                            ),
                          ],
                        ),Column(
                          spacing: 10,
                          children: [
                            Icon(Icons.wb_cloudy,),
                            Text('100 %',
                              style: kNumTextTextStyleWeather,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Today Text
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Today',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Text(
                  'Forecasts',
                  style: TextStyle(fontSize: 14, color: Colors.blue[400]),
                ),
              ],
            ),
            // ListView of Weather
            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue[400],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('05:00'),
                                Icon(
                                  Icons.cloudy_snowing,
                                  color: Colors.white,
                                ),
                                Text('6'),
                              ],
                            ),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
