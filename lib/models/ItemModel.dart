var data = [
  {
    "name": "Blue Sweatshirt",
    "price": 299.0,
    "fav": false,
    "rating": 4.5,
    "image": "https://www.babyshop.com/images/542224/card_xlarge.jpg"
  },
  {
    "name": "Black T-Shirt",
    "price": 299.0,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2Ff3%2F84%2Ff3847d428696de689f327a6f9a311f2ff9b59fcf.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bmen_tshirtstanks_shortsleeve%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B2%5D&call=url[file:/product/main]"
  },
  {
    "name": "Red Dress",
    "price": 499.0,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1543425635-jcrew-1543425624.jpg?crop=1xw:1xh;center,top&resize=480:*"
  },
  {
    "name": "Black Dress",
    "price": 199.0,
    "fav": false,
    "rating": 3.5,
    "image":
        "https://cdn.luxe.digital/media/2021/02/24173658/best-little-black-dresses-marika-vera-review-luxe-digital%402x.jpg"
  },
  {
    "name": "Pink Sweatshirt",
    "price": 299.0,
    "fav": false,
    "rating": 4.5,
    "image":
        "https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F4d%2Fb9%2F4db9a2ae6e3121ac2082e188c7e88c22985c52cc.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bmen_hoodiessweatshirts%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]"
  },
  {
    "name": "Red Cap",
    "price": 174.0,
    "fav": false,
    "rating": 4.0,
    "image":
        "https://www.loopwear.co.uk/image/cache/catalog/products/GEN174-900x900.jpg"
  },
  {
    "name": "Green Cap",
    "price": 174.0,
    "fav": false,
    "rating": 4.0,
    "image": "https://m.media-amazon.com/images/I/61MjF2vzeOL._AC_UL1001_.jpg"
  },
  {
    "name": "White T-Shirt",
    "price": 99.0,
    "fav": false,
    "rating": 4.9,
    "image": "https://m.media-amazon.com/images/I/412R+-HOhFL._AC_UX385_.jpg"
  }
];

class ShopItemModel {
  String name;
  double price;
  bool fav;
  double rating;
  String image;
  int id;
  int? shopId;

  ShopItemModel(
      {this.shopId,
      required this.id,
      required this.fav,
      required this.rating,
      required this.price,
      required this.image,
      required this.name});

  factory ShopItemModel.fromJson(Map<String, dynamic> json) {
    return ShopItemModel(
      id: json['id'],
      fav: json['fav'] == 1,
      rating: json['rating'],
      price: json['price'],
      image: json['image'],
      name: json['name'],
      shopId: json['shop_id'] ?? 0,
    );
  }
}
