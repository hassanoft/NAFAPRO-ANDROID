class BusinessClient {
  const BusinessClient({
    required this.id,
    required this.name,
    this.phone = '',
    this.email = '',
    this.balance = 0,
  });

  final String id;
  final String name;
  final String phone;
  final String email;
  final int balance;
}

class BusinessProduct {
  const BusinessProduct({
    required this.id,
    required this.name,
    required this.salePrice,
    required this.quantity,
  });

  final String id;
  final String name;
  final int salePrice;
  final int quantity;
}

class BusinessInvoice {
  const BusinessInvoice({
    required this.number,
    required this.clientName,
    required this.amount,
    required this.status,
    required this.date,
  });

  final String number;
  final String clientName;
  final int amount;
  final String status;
  final DateTime date;
}
