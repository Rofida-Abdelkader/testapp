import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  // const DetailsScreen({super.key});
  // ignore: prefer_typing_uninitialized_variables
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Color.fromARGB(255, 17, 17, 20),
          child: Column(
            children: [
              Container(
                height: height * 0.57,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/Ptoduct image.png',
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.15),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: height * 0.1,
                        width: width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: height * 0.051,
                                width: width * 0.1,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: Colors.black, // color of arrow
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: const Color(0xffBEA643),
                                    size: width * 0.05,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(25),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.favorite_border_sharp),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                textAlign: TextAlign.start,
                'The Great Sphinx ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Expanded(
                child: SizedBox(
                  width: width * 0.9,
                  child: Text(
                    'Valley of the Kings, Narrow gorge, Upper Egypt, near the ancient city of Thebes. It is the burial site of nearly all of the kings (pharaohs) of the 18th–20th dynasties (1539–1075 BC), from Thutmose I to Ramses X. The valley contains 62 tombs, virtually all of which were robbed in antiquity. Only the tomb of Tutankhamen escaped pillage; after its excavation in the 1920s, its treasures were placed in the Egyptian Museum in Cairo. The longest tomb belongs to Queen Hatshepsut, whose burial chamber is nearly 700 ft (215 m) from the entrance. The largest tomb, built for the sons of Ramses II, contains scores of burial chambers.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.038,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






















// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class DetailsScreen extends StatelessWidget {
//   const DetailsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             color: Colors.black,
//           ),
//           Image.asset('assets/images/Ptoduct image.png',
//            width: double.infinity,
//            height: MediaQuery.of(context).size.height * 0.5,
//            fit: BoxFit.cover,
//           ),
//           const Positioned.fill(
//             child: DecoratedBox(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(colors: [
//                   Colors.transparent,
//                   Colors.black,
//                 ],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 stops: [0.3, 0.5]
//                 ),
//               ),
              
//             ),
//             ),
//             const SizedBox(height: 20),
//             Positioned(
//               bottom: 150,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     RatingBar.builder(
//                       initialRating: 3.5,
//                       minRating: 1,
//                       maxRating: 5,
//                       direction: Axis.horizontal,
//                       allowHalfRating: true,
//                       ignoreGestures: true,
//                       itemCount: 5,
//                       itemSize: 20,
//                       unratedColor: Colors.white,
//                       itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
//                       itemBuilder: (context,index){
//                         return const Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                         );
//                       },
//                       onRatingUpdate: (rating){
//                       },
//                     ),
//                     const SizedBox(height: 20),
//                     Text('Valley of the Kings, Narrow gorge, Upper Egypt, near the ancient city of Thebes. It is the burial site of nearly all of the kings (pharaohs) of the 18th–20th dynasties (1539–1075 BC), from Thutmose I to Ramses X. The valley contains 62 tombs, virtually all of which were robbed in antiquity. Only the tomb of Tutankhamen escaped pillage; after its excavation in the 1920s, its treasures were placed in the Egyptian Museum in Cairo. The longest tomb belongs to Queen Hatshepsut, whose burial chamber is nearly 700 ft (215 m) from the entrance. The largest tomb, built for the sons of Ramses II, contains scores of burial chambers.',
//                     maxLines: 8,
//                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                       height: 1.75,
//                       color: Colors.white,
//                     ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//         ]
//       ),
//     );
//   }
// }