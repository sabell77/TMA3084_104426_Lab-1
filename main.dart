import 'dart:io';

void main() {
  bool isValid = false;

  while (!isValid) {
    print('============================================');
    print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

    stdout.write('Please enter your pizza size (small, medium, or large):\n');
    String? size = stdin.readLineSync()?.trim().toLowerCase();

    // Check size input validity
    if (size != 'small' && size != 'medium' && size != 'large') {
      print('Invalid size. Please try again.\n');
      continue; // Restarts the loop if invalid
    }

    stdout.write('How many pizzas do you want of $size?\n');
    String? qtyInput = stdin.readLineSync()?.trim();
    int? quantity = int.tryParse(qtyInput ?? '');

    if (quantity == null || quantity <= 0) {
      print('Invalid quantity. Please try again.\n');
      continue; // Restarts the loop if invalid
    }

    int pricePerPizza = 0;

    switch (size) {
      case 'small':
        pricePerPizza = 5;
        break;
      case 'medium':
        pricePerPizza = 7;
        break;
      case 'large':
        pricePerPizza = 10;
        break;
    }

    int totalPayment = pricePerPizza * quantity;
    print('Your Total Payment is: \$$totalPayment');

    isValid = true; // Exit loop after successful calculation
  }
}
