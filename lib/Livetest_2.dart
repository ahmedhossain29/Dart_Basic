void main() {
  List<double> itemPrices = [12.99, 8.75, 21.50, 5.00];
  double taxRate = 0.08; // 8% tax rate
  
  // Calculate the subtotal (total price of items)
  double subtotal = 0;
  for (double price in itemPrices) {
    subtotal += price;
  }
  
  // Calculate the tax amount
  double taxAmount = subtotal * taxRate;
  
  // Calculate the total cost (subtotal + tax)
  double totalCost = subtotal + taxAmount;
  
  // Print the total cost to two decimal places
  print("Total Cost: \$${totalCost.toStringAsFixed(2)}");
 
}
