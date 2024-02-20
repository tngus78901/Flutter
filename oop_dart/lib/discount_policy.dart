// 역할
import 'package:oop_dart/member.dart';

abstract DiscountPolicy {
  // 할인 처리
  int discount(Member member, int price);
}
