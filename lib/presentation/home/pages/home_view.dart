part of '../index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home", style: AppStyles.styleMedium24(context)),
      ),
    );
  }
}
