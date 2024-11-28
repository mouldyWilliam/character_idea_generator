import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'LiamOS Character Idea Exe',
      home: MyHomePage(title: 'LiamOS Character Idea Exe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> maleImages = [
    'assets/images/male1.png',
    'assets/images/male2.png',
    'assets/images/male3.png',
    'assets/images/male4.png',
    'assets/images/male5.png',
    'assets/images/male6.png',
    'assets/images/male7.png',
    'assets/images/male8.png',
    'assets/images/male9.png',
    'assets/images/male10.png',
    'assets/images/male11.png',
    'assets/images/male12.png',
    'assets/images/male13.png',
    'assets/images/male15.png',
    'assets/images/male15.png',
  ];

  final List<String> maleFirstNames = [
    'Rhaegar',
    'Ezio',
    'Rolan',
    'Kael',
    'Draven',
    'Fenric',
    'Thalion',
    'Eryndor',
    'Vaelion',
    'Cedric',
    'Orin',
    'Darian',
    'Lucan',
    'Kaelen',
    'Garron',
    'Torin',
    'Kharis',
    'Theron',
    'Alaric',
    'Eryas',
  ];

  final List<String> femaleImages = [
    'assets/images/female1.png',
    'assets/images/female2.png',
    'assets/images/female3.png',
    'assets/images/female4.png',
    'assets/images/female5.png',
    'assets/images/female6.png',
    'assets/images/female7.png',
    'assets/images/female8.png',
    'assets/images/female9.png',
    'assets/images/female10.png',
    'assets/images/female11.png',
    'assets/images/female12.png',
    'assets/images/female13.png',
    'assets/images/female14.png',
    'assets/images/female15.png',
  ];

  final List<String> femaleFirstNames = [
    'Allace',
    'Lilian',
    'Ezra',
    'Seraphina',
    'Lyra',
    'Isolde',
    'Elara',
    'Arielle',
    'Caelith',
    'Sylvara',
    'Amara',
    'Evangeline',
    'Thalina',
    'Nyssa',
    'Zarina',
    'Veliana',
    'Kiera',
    'Anara',
    'Selene',
    'Feylinn',
  ];

  final List<String> lastNames = [
    'Dawnblade',
    'Moonshadow',
    'Stormveil',
    'Frostwhisper',
    'Ravenspire',
    'Brightflame',
    'Shadowthorn',
    'Starfall',
    'Whisperwind',
    'Silverveil',
    'Duskwillow',
    'Sunshadow',
    'Nightbloom',
    'Flameheart',
    'Eclipsedawn',
    'Dreamweaver',
    'Starseeker',
    'Ironfist',
    'Ashbringer',
    'Silverleaf',
    'Wildspire',
    'Emberstone',
    'Bloodthorn',
    'Ironwhisper',
    'Duskfall',
    'Graveheart',
    'Stormwatcher',
    'Moonwhisper',
    'Blackthorn',
    'Ebonheart',
    'Nightshade',
    'Skybreaker',
    'Frostbite',
    'Starweaver',
    'Ravenwing',
    'Thundershadow',
    'Goldenflame',
    'Lightbringer',
    'Ashenbloom',
    'Shadowcaster',
    'Stoneheart',
    'Windstrider',
    'Sunfire',
    'Cloudrider',
    'Wolfspirit',
    'Darkveil',
  ];

  final List<Map<String, dynamic>> job = [
    {
      'element': 'Fire',
      'color': const Color.fromARGB(255, 255, 138, 128),
      'class': [
        'Inferno Warden',
        'Emberblade',
        'Flamecaller',
        'Pyroknight',
        'Scorchmage',
        'Blazewind',
        'Cinderstrider',
        'Hellfire Sorcerer',
        'Flame Dancer',
        'Ashen Vanguard',
      ],
    },
    {
      'element': 'Water',
      'color': const Color.fromARGB(255, 128, 216, 255),
      'class': [
        'Tideweaver',
        'Stormshaper',
        'Aqualith',
        'Aquaforge',
        'Whirlpool Warden',
        'Deepcurrent Sorcerer',
        'Sea Reaver',
        'Ocean Whisperer',
        'Tsunami Caller',
        'Wavebinder',
      ],
    },
    {
      'element': 'Earth',
      'color': const Color.fromARGB(255, 255, 209, 128),
      'class': [
        'Stonewarden',
        'Quakebringer',
        'Terraforged',
        'Earthshaper',
        'Ravinestrike',
        'Granite Guardian',
        'Fissurebound',
        'Mossmender',
        'Mountain Herald',
        'Crystal Defender',
      ],
    },
    {
      'element': 'Wind',
      'color': const Color.fromARGB(255, 185, 246, 202),
      'class': [
        'Tempest Strider',
        'Aerolancer',
        'Stormrider',
        'Zephyrblade',
        'Galeweaver',
        'Windtamer',
        'Skybreaker',
        'Cyclone Herald',
        'Whirlwind Warden',
        'Stormsinger',
      ],
    },
    {
      'element': 'Nature',
      'color': const Color.fromARGB(255, 204, 255, 144),
      'class': [
        'Verdant Sage',
        'Wildcaller',
        'Thornshaper',
        'Sylvan Knight',
        'Greenwarden',
        'Druidic Fury',
        'Floralancer',
        'Leafbinder',
        'Briar Monarch',
        'Rootcaller',
      ],
    },
    {
      'element': 'Lightning',
      'color': const Color.fromARGB(255, 244, 255, 129),
      'class': [
        'Stormfury',
        'Thunderblade',
        'Voltweaver',
        'Electroknight',
        'Boltshaper',
        'Flashstrider',
        'Sparkwielder',
        'Thunderclash',
        'Arcanoshock',
        'Voltrunner',
      ],
    },
    {
      'element': 'Ice',
      'color': const Color.fromARGB(255, 167, 255, 235),
      'class': [
        'Frostbane',
        'Glaciarch',
        'Cryomancer',
        'Iceweaver',
        'Snowstride',
        'Blizzardspeaker',
        'Hailbringer',
        'Frostshaper',
        'Permafrost Guardian',
        'Glacier King',
      ],
    },
    {
      'element': 'Holy',
      'color': Colors.white,
      'class': [
        'Paladin',
        'Lightbringer',
        'Divine Aegis',
        'Holy Inquisitor',
        'Radiant Crusader',
        'Celestial Defender',
        'Virtue Knight',
        'Sunforged',
        'Gracebound',
        'Sacred Herald',
      ],
    },
    {
      'element': 'Darkness',
      'color': const Color.fromARGB(255, 140, 158, 255),
      'class': [
        'Voidbinder',
        'Shadowblade',
        'Nightmancer',
        'Dreadweaver',
        'Blackthorn Knight',
        'Soulreaver',
        'Nightstalker',
        'Abysscaller',
        'Shadewind',
        'Grimweaver',
      ],
    },
    {
      'element': 'Poison',
      'color': const Color.fromARGB(255, 234, 128, 252),
      'class': [
        'Venomancer',
        'Toxicsworn',
        'Plaguebearer',
        'Miasma Herald',
        'Venomstrike',
        'Corrosive Sage',
        'Poisonwielder',
        'Plaguebringer',
        'Toxhandler',
        'Decaymancer',
      ],
    },
  ];

  String currentImage = 'assets/images/male1.png';
  String currentFirstName = 'John';
  String currentLastName = 'Doe';
  Color jobColor = Colors.white;
  String jobClass = 'Office worker';

  void generateNew() {
    final isFemale = Random().nextBool(); // Randomly decide gender

    setState(() {
      if (isFemale) {
        // Generate indices for female data
        final randomImageIndex = Random().nextInt(femaleImages.length);
        final randomFirstNameIndex = Random().nextInt(femaleFirstNames.length);
        final randomLastNameIndex = Random().nextInt(lastNames.length);

        currentImage = femaleImages[randomImageIndex];
        currentFirstName = femaleFirstNames[randomFirstNameIndex];
        currentLastName = lastNames[randomLastNameIndex];
      } else {
        // Generate indices for male data
        final randomImageIndex = Random().nextInt(maleImages.length);
        final randomFirstNameIndex = Random().nextInt(maleFirstNames.length);
        final randomLastNameIndex = Random().nextInt(lastNames.length);

        currentImage = maleImages[randomImageIndex];
        currentFirstName = maleFirstNames[randomFirstNameIndex];
        currentLastName = lastNames[randomLastNameIndex];
      }
      final chosenJob = job[Random().nextInt(job.length)];
      jobColor = chosenJob['color'];
      jobClass =
          chosenJob['class'][Random().nextInt(chosenJob['class'].length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 30, 31),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 28, 30, 31),
          systemNavigationBarColor: Color.fromARGB(255, 28, 30, 31),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 28, 30, 31),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Liam',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 64, 196, 255),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.8,
                        )),
                    Text('OS',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 0, 176, 255),
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.8,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('CHARACTER IDEA ',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.8,
                        )),
                    Text('.EXE',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 132, 136, 138),
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.8,
                        )),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(currentImage, width: 80),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        currentFirstName,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        currentLastName,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 179, 184, 186),
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          height: 1.1,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 34, 36, 37),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          jobClass,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: jobColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 160),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 176, 255),
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  textStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8,
                  ),
                ),
                onPressed: generateNew,
                child: const Text('GENERATE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
