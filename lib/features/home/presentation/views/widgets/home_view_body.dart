import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: CustomAppBar()),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: FeaturedBooksListView(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text('Best Seller', style: Styles.textStyle18),
          ),
          SliverFillRemaining(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: BestSellerListViewItem(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
