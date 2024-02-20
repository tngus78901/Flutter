class Order {
  num memberId;
  String itemName;
  int itemPrice;
  int discountPrice;

  Order(
      {required this.memberId,
      required this.itemName,
      required this.itemPrice,
      required this.discountPrice});

  // 순서를 잘못적으면 잘못된 실행이 된다

  // 기능
  int calculateDiscount() {
    // 상품 가격이 할인 금액보다 작을 때 ... 고민대 볼 사항
    return itemPrice - discountPrice;
  }

  @override
  String toString() {
    Order(this.memberId, this.itemName, this.itemPrice, this.discountPrice);
  }
}
