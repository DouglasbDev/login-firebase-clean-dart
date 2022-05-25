class Order{
  final int position;
  final DateTime timestamp;
  final OrderStatus status;
 

  Order({
  required this.status,  
  required this.position, 
  required this.timestamp,
  });
  }

  enum OrderStatus{
    waiting,
    attending,
    notAnswered
  }