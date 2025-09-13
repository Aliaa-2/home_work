void main() {}

class Solution {
  int maxProfit(List<int> prices) {
    int min = prices[0];
    int maxProfit = 0;
    for (int price in prices) {
      if (min > price) {
        min = price;
      }
      int profit = price - min;
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }

    return maxProfit;
  }
}
