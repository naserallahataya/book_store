import 'package:book_store/features/home/preserntation/views/widgets/book_view_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookViewDetailsBody()),
    );
  }
}
