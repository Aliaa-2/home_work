// Q6
//  Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//  An input string is valid if:
//  1. Open brackets must be closed by the same type of brackets.
// 2. Open brackets must be closed in the correct order.
//  3. Every close bracket has a corresponding open bracket of the same type.
//  Examples:- '()' → Valid- '()[]{}' → Valid- '(]' → Invalid- '([)]' → Invalid- '{[]}' → Valid

void main() {
  print(isValid('('));
}

bool isValid(String s) {
  List<String> check = [];
  for (var element in s.split('')) {
    if (element == '(' || element == '{' || element == '[') {
      check.add(element);
    } else {
      if (check.isEmpty) {
        return false;
      }
      var last = check.removeLast();
      if (element == ')' && last != '(' ||
          element == '}' && last != '{' ||
          element == ']' && last != '[') {
        return false;
      }
    }
  }
  return check.isEmpty;
}