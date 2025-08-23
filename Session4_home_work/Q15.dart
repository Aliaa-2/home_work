// Question 15
//  Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
//  '/products', '/profile', or other). Handle each case with appropriate output, including maps and null safety where needed.

void main() {
  String path = '/';
  Map<String, double>? products = null;
  Map<String, String>? profile = null;
  switch (path) {
    case '/':
      print('Home page.');
      break;
    case '/products':
      print('Product Page.');
      products = {'PC': 9500, 'phone': 3500, 'watch': 2500, 'book': 100};
      if ( products == null || products.isEmpty ) {
        print('there are no available products.');
      } else {
        print('products with prices: $products');
      }
      break;
    case '/profile':
      print('Profile Page.');
      profile = {
        'name': 'aliaa',
        'email': 'aliaa55@gmail.com',
        'language': 'arabic',
        
      };
      if (profile == null ||profile.isEmpty) {
        print('please sign in');
      } else {
        print('Your Information: $profile.');
      }
      break;
    default:
      print('Page Not Found.');
  }
}
