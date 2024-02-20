import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';

class PercentDiscountPolicy implements DiscountPolicy {
  double discountPercent = 10; // 10% 할인

  @override
  int discount(Member member, int price) {
    if (member.grade == Grade.VIP) {
      // dart에서는 자동 형 변환이 없다.--> 명시적 형 변환이 있다.
      // 상품금액 *  (10% / 100) --> double.toInt()
      return (price * (discountPercent / 100).toInt();
    }  // toint하면 소수점 버린다 int4byte라 8byte를 넣을 수 없어서
    return 0;
  }
}
