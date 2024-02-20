// 코드의 시작점
import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/fix_discount_policy_impl.dart';
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';
import 'package:oop_dart/member_repository_Impl.dart';
import 'package:oop_dart/member_service.dart';
import 'package:oop_dart/member_service_Impl.dart';
import 'package:oop_dart/order.dart';
import 'package:oop_dart/order_serivice_impl.dart';
import 'package:oop_dart/order_service.dart';
import 'package:oop_dart/percent_discount_policy_impl.dart';

void main() {
  // 테스트
  MemberRepository memberRepository = MemoryMemberRepositoryImpl();
  MemberService memberService = MemberServiceImpl(memberRepository);

  Member member1 = Member(id: 1, name: '홍길동', grade: Grade.BASIC);
  Member member2 = Member(id: 2, name: '이순신', grade: Grade.VIP);
  memberService.signUp(member1);
  // 회원 찾기
  Member? findMember = memberService.selectMember(member2.id);

  print('---------------------------------');
  // 할인
  // 1 - 고정할인 정책 선택
  DiscountPolicy discountPolicy = PercentDiscountPolicy();
  OrderService orderService =
      OrderServiceImpl(memberRepository, discountPolicy);

  // null 억제 연산자 컴파일에서 null이면 오류가 뜬다 findMember!.id
  Order createOrder = orderService.createOrder(findMember!.id, "맥북", 2000000);
  print(createOrder.toString());
}
