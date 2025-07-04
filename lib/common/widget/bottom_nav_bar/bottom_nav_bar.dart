part of '../../index.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 14),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIcon(0, AppImages.vectorsHome),
            _buildIcon(1, AppImages.vectorsNotification),
            _buildIcon(2, AppImages.vectorsReceipt),
            _buildIcon(3, AppImages.vectorsProfile2),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(int index, String assetName) {
    final isSelected = index == currentIndex;
    return GestureDetector(
      onTap: () => onTap(index),
      child: AnimatedScale(
        scale: isSelected ? 1.2 : 1.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: SvgPicture.asset(
          assetName,
          colorFilter: ColorFilter.mode(
            isSelected
                ? AppColors.selectedBtmNavBar
                : AppColors.unSelectedBtmNavBar,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
