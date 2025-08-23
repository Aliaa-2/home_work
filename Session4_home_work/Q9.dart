// Question 9
//  Write a Dart program that removes duplicate items from a list using a Set.
//Compare the unique count with the original list length and print a message if duplicates were removed.
void main() {
  List<int> items = [1, 100, 100, 200, 50, 1, 3, 8, 100];
  var uniqueItems = items.toSet();
  if (uniqueItems.length < items.length) {
    print('duplicates  items were removed');
  }
}
