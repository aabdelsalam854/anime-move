import 'package:clean_arch_task/features/home/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  final List<String> categories;
  final int initialIndex;
  final ValueChanged<int>? onCategorySelected;

  const CategoriesList({
    super.key,
    this.categories = const [
      "All",
      "Popular",
      "Trending",
      "New Releases",
      "Top Rated",
    ],
    this.initialIndex = 0,
    this.onCategorySelected,
  });

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  late final ValueNotifier<int> selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = ValueNotifier(widget.initialIndex);
  }

  @override
  void dispose() {
    selectedIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        // physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        itemCount: widget.categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 4),
        itemBuilder: (context, index) {
          return CategoryItem(
            key: ValueKey(widget.categories[index]),
            category: widget.categories[index],
            index: index,
            selectedIndex: selectedIndex,
            onSelected: widget.onCategorySelected,
          );
        },
      ),
    );
  }
}
