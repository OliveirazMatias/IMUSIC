import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:segundoprojeto/pages/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SizedBox(
        width: 293,
        height: 293,
        child: Lottie.asset("assets/Lottie/gato-pisca ‐ Feito com o Clipchamp.mp4.lottie.json"),
      ),
      splashIconSize: 150,
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1), // Ajuste a opacidade
      nextScreen: const login(),
      duration: 6000, // Aumente a duração para 3 segundos
    );
  }
}


// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gifimage/flutter_gifimage.dart';
// import 'package:segundoprojeto/pages/login.dart';
// import 'package:segundoprojeto/shared/style.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   late GifController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = GifController(vsync: this);
//     controller.repeat(min: 0, max: 29, period: const Duration(seconds: 2)); // Ajuste conforme necessário
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       splash: SizedBox(
//         width: 293,
//         height: 293,
//         child: Center(
//           child: GifImage(
//             controller: controller,
//             image: AssetImage("assets/gif/seu_gif.gif"), // Substitua pelo seu caminho do GIF
//           ),
//         ),
//       ),
//       splashIconSize: 500,
//       backgroundColor: MyColors.corsplashgato,
//       nextScreen: const login(), // Certifique-se de que a classe Login está correta
//     );
//   }
// }

