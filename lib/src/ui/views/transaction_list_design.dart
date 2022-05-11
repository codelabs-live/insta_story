import 'package:flutter/material.dart';

class TransactionListDesign extends StatefulWidget {
  const TransactionListDesign({Key? key}) : super(key: key);

  @override
  State<TransactionListDesign> createState() => _TransactionListDesignState();
}

class _TransactionListDesignState extends State<TransactionListDesign> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.blue,
                      width: size.width,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: size.height * 0.05,
                            bottom: size.height * 0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.notifications_sharp),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Text(
                              "Welcome back,",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: size.height * 0.005,
                            ),
                            Text(
                              "Thomas",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Text(
                              "Your Balance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              "\$ 24,980.00",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Text("Today")),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 20),
                          child: ListView.builder(
                            itemCount: 30,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (context, index) => Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: size.height * 0.07,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          )),
                                      margin:
                                          EdgeInsets.only(top: 10, right: 10),
                                    )),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Heading',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Subheading')
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Center(
                                        child: Text("\$ 300",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Text("Yesterday")),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, left: 20, right: 20, bottom: size.height*0.1),
                          child: ListView.builder(
                            itemCount: 30,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (context, index) => Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: size.width * 0.2,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          )),
                                      margin:
                                          EdgeInsets.only(top: 10, right: 10),
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Heading',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Subheading')
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Center(
                                        child: Text("\$ 300",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.blue,
              width: size.width,
              height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Icon(Icons.home)),
                  Expanded(child: Icon(Icons.home)),
                  Expanded(
                      child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  )),
                  Expanded(child: Icon(Icons.home)),
                  Expanded(child: Icon(Icons.home)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
