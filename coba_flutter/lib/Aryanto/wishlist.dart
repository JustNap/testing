import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'wishlist_provider.dart';

class WishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wishlistProvider = Provider.of<WishlistProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: wishlistProvider.wishlist.isEmpty
          ? Center(child: Text('No items in wishlist'))
          : ListView.builder(
              itemCount: wishlistProvider.wishlist.length,
              itemBuilder: (context, index) {
                final product = wishlistProvider.wishlist[index];
                return ListTile(
                  leading: Image.network(product.imageUrl),
                  title: Text(product.name),
                  subtitle: Text('\$${product.price}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      wishlistProvider.removeFromWishlist(product);
                    },
                  ),
                );
              },
            ),
    );
  }
}
