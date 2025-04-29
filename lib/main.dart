import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyMoodQuoteApp());
}

class DailyMoodQuoteApp extends StatelessWidget {
  const DailyMoodQuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Mood Quote',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue[300],
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.lightBlue[300],
          foregroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue[300],
            elevation: 3,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Mood Quote'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Boost your mood today!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                child: const Text(
                  'Get Inspired',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuoteScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> quotes = [
      'Believe in yourself and all that you are.',
      'Positive mind. Positive vibes. Positive life.',
      'You are capable of amazing things.',
      'Happiness looks good on you.',
      'Every day may not be good, but there is good in every day.',
      'You are stronger than you think.',
      'Dream big and dare to fail.',
      'Make today so awesome yesterday gets jealous.',
      'Be the reason someone smiles today.',
      'The best way to predict the future is to create it.',
      'Start each day with a grateful heart.',
      'Keep your face to the sunshine and you cannot see a shadow.',
      'Embrace the glorious mess that you are.',
      'Difficult roads often lead to beautiful destinations.',
      'Be brave, take risks.',
      'You are your only limit.',
      'Focus on the good.',
      'Don’t wait for opportunity, create it.',
      'Life is short, smile while you still have teeth.',
      'Do more things that make you forget to check your phone.',
      'Turn your wounds into wisdom.',
      'Today is another chance to get better.',
      'Find joy in the ordinary.',
      'Your only limit is your mind.',
      'If you can dream it, you can do it.',
      'Inhale confidence, exhale doubt.',
      'Every moment is a fresh beginning.',
      'Don’t stop until you’re proud.',
      'Life begins at the end of your comfort zone.',
      'Think positive, be positive.',
      'Every accomplishment starts with the decision to try.',
      'Don’t look back, you’re not going that way.',
      'Do what makes your soul shine.',
      'You get what you give.',
      'Keep going, you’re getting there.',
      'Stay humble, work hard, be kind.',
      'Live more, worry less.',
      'Believe you can and you’re halfway there.',
      'Be yourself, everyone else is already taken.',
      'Stay focused and never give up.',
      'The harder you work, the luckier you get.',
      'Your vibe attracts your tribe.',
      'Make your dreams happen.',
      'Don’t wish for it, work for it.',
      'Life is a journey, enjoy the ride.',
      'Positivity always wins.',
      'Grow through what you go through.',
      'You can and you will.',
      'Today is your day.',
      'Be fearless in the pursuit of what sets your soul on fire.',
    ];

    final randomQuote = quotes[Random().nextInt(quotes.length)];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Daily Inspiration'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.format_quote, size: 60, color: Colors.lightBlue[300]),
              const SizedBox(height: 20),
              Text(
                randomQuote,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Back',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
